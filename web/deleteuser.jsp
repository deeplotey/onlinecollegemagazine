<%-- 
    Document   : deleteuser
    Created on : Mar 8, 2013, 9:21:52 PM
    Author     : AMAN
--%>
<%@page import="java.sql.* " %>
<%@page contentType="text/html" pageEncoding="UTF-8"  %>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> JSP Page</title>
    </head>
    <body>
        <%! String[] a1; %>
                   <%
                   String k="";
                   try{
                   Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag","root","root");
                       a1=request.getParameterValues("Delete user");
                   if(a1!=null){
                        for(int i=0;i<a1.length;i++){
                           k=(String)a1[i];
                           out.print(k);
                            PreparedStatement ps1=con.prepareStatement("delete from accounts where username=?");
                           ps1.setString(1,k);
                           ps1.executeUpdate();
                            
                        }
                                } }catch(Exception e){
                                    out.print(String.valueOf(e));
                                }                          
                   %>
    </body>
</html>
