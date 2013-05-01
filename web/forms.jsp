<%-- 
    Document   : forms
    Created on : 19 Apr, 2013, 6:45:20 PM
    Author     : Jasjeet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            function del()
            {
                alert("its ok");
            }
        </script>
    </head>
    <body>
        <div>
            <table>
                <thead>
                <th>name</th>
                </thead>
                <tbody>
                      <% 
        String s1="";
        String s2="";
      
      
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag","root","");
       PreparedStatement ps=con.prepareStatement("select * from lets" );
       ResultSet rs=ps.executeQuery();
       while(rs.next())
        {
         
        s1=rs.getString(1);
        s2=rs.getString(2);
        
        %>
         <tr>
                                  <td><p><%=s1%></p></td>
                                  <!--<td><p><%=s2%></p></td>-->
                                  <td><input type="checkbox" name="check" value="<%=s1%>" /></td>
                       
                                 </tr>
                                  <%
                                     }
                                   %>
                </tbody>
            </table>
        <form method="post" action="letdel.jsp">
            <input type="checkbox" name="check" value="<%=s1%>" /><input type="submit"  value="delete" onclick="return del();"/></form>
        <form method="post" action="letview.jsp"><input type="checkbox" name="check" value="<%=s1%>" /><input type="submit"  value="view" /></form>
        </div>
    </body>
</html>
