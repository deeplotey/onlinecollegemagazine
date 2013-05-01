<%-- 
    Document   : viewmore
    Created on : 19 Apr, 2013, 5:25:34 PM
    Author     : Jasjeet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <table border="0">
            <thead>
            <th>a</th><th>b</th><th>c</th><th>d</th><th>e</th>
            </thead>
            <tbody>
         <%! String[] a5; %>
                   <%
                   String k=""; String g1="";String g2="";String g3="";String g4="";String g5="";
                   
                   try{
                   Class.forName("com.mysql.jdbc.Driver");
                    Connection con5=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag","root","root");
                       a5=request.getParameterValues("check");
                   
                   if(a5!=null){
                       for(int i=0;i<a5.length;i++){
                           k=(String)a5[i];
                           out.print(k);
                            
                         PreparedStatement ps5=con5.prepareStatement("select * from feedbackform where subject='"+k+"'");
                       
                          ResultSet rs5=ps5.executeQuery();
                          while(rs5.next())
        {
            g1=rs5.getString(1);
            g2=rs5.getString(2);
            g3=rs5.getString(3);
            g4=rs5.getString(4);
            g5=rs5.getString(5);
        %>
        
    <tr>
        <td><%=g1%></td>
        <td><%=g2%></td>
        <td><%=g3%></td>
        <td><%=g4%></td>
        <td><%=g5%></td>
    </tr><%
               }}
                       }}catch(Exception e){}
        %>
            </tbody>
        </table>
    </body>
</html>
