<%-- 
    Document   : forward
    Created on : Apr 17, 2013, 9:11:25 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <form><table>
        
     <%! String[] a1; %>
                   <%
                   String k="";String s2="";String s3="";String s4="";String s5="";String s6="";String s7="";
                   try{
                   Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag","root","root");
                       a1=request.getParameterValues("forward");
                   if(a1!=null){
                        for(int i=0;i<a1.length;i++){
                           k=(String)a1[i];
                            PreparedStatement ps1=con.prepareStatement("select * from article where heading=?");
                            
                            ps1.setString(1,k);
               ResultSet rs=ps1.executeQuery();
               while(rs.next()) {
                   s7=rs.getString(1);
                   s2=rs.getString(2);
                   s3=rs.getString(3);
                   s4=rs.getString(4);
                   s6=rs.getString(5);
                   s5=rs.getString(6);
              PreparedStatement ps=con.prepareStatement("insert into moderator(category,heading,description,font,color,size) values(?,?,?,?,?,?)");
       ps.setString(1,s7);
       ps.setString(2,s2);
       ps.setString(3,s3);
       ps.setString(4,s4);
       ps.setString(5,s6);
       ps.setString(6,s5);
       ps.executeUpdate();  
                                                       }
                        }
                                } }catch(Exception e){
                                    out.print(String.valueOf(e));
                                }                          
                   %>
        <tr><td style="font-family: inherit; font-size: 30px;">forward successfully</td></tr>
       <!-- <td><a href="good1.jsp">view post</a></td>-->
        </table>
        </form>
    </body>
</html>

