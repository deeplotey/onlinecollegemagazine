
<%-- 
    Document   : delete
    Created on : Mar 13, 2013, 7:35:24 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><form><table>
        
     <%! String[] a1; %>
                   <%
                   String k="";
                   try{
                   Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag","root","root");
                       a1=request.getParameterValues("delete");
                   if(a1!=null){
                        for(int i=0;i<a1.length;i++){
                           k=(String)a1[i];
                            PreparedStatement ps1=con.prepareStatement("delete from article where heading=?");
                            
                            ps1.setString(1,k);
                            ps1.executeUpdate();
                        }
                                } }catch(Exception e){
                                    out.print(String.valueOf(e));
                                }                          
                   %>
        <tr><td style="font-family: inherit; font-size: 30px;">Post deleted successfully</td></tr>
        </table>
        </form>
    </body>
</html>
