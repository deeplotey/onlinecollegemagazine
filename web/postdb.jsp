<%-- 
    Document   : postdb
    Created on : Mar 14, 2013, 9:13:42 PM
    Author     : AMAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
        
    </head>
    <body>
        
        <%
                                        
     try{       
         
       Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag","root","root");
        PreparedStatement ps=con.prepareStatement("insert into article(category,heading,description,color,font,size) values(?,?,?,?,?,?)");
        ps.setString(1,request.getParameter("done"));
        ps.setString(2,request.getParameter("s1"));
        ps.setString(3,request.getParameter("s2"));
        ps.setString(4,request.getParameter("s4"));
        ps.setString(5,request.getParameter("s3"));
        ps.setString(6,request.getParameter("s5"));
        ps.executeUpdate();}catch(Exception e){out.print(String.valueOf(e));}
     response.sendRedirect("good1_1.jsp");
        %>
        
       
    </body>
</html>
