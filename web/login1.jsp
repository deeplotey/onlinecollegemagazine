<%-- 
    Document   : login1
    Created on : Apr 9, 2013, 8:28:20 PM
    Author     : AMAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script>
   history.forward();
</script>
    </head>
    <body>
        <%
       
        
        String s2=request.getParameter("name");
      
        String s4=request.getParameter("password");
         try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag","root","root");
        PreparedStatement ps=con.prepareStatement("select * from accounts where username='"+s2+"' and password='"+s4+"'");
        ResultSet rs=ps.executeQuery();
        
        if(rs.next())
        {
             session.setAttribute("sname",s2);
             session.setAttribute("isActive", true);
            String s3=rs.getString(4);
            if(s3.equals("admin")){
                
                response.sendRedirect("index_1.jsp");
            }
                       else if(s3.equals("user")){
                response.sendRedirect("postsame.jsp");}
                       else if(s3.equals("moderator")){
                           response.sendRedirect("moderator.jsp");
                       }
        }
         else{
            
            
            
           
            response.sendRedirect("loginpage.jsp?name=wrong");
                 }}catch(Exception e){
                     out.print(String.valueOf(e));
                     
                 }
        %>
    </body>
</html>
