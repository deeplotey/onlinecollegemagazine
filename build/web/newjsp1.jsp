<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <form action="dbex.jsp" method="post">
            <table>
                <tr><td>Name :- </td><td><input type="text" name="t" value="" /></td></tr>
                <tr><td>Password :-</td><td><input type="text" name="t1" value="" /></td></tr>
                <tr><td><input type="submit" name="submit" value="Insert"/></td>
                    <td><input type="submit" name="del" value="Delete"/></td></tr>
            </table>
        </form>
        <%
            String su = "Insert";
            String del = "Delete";
            String name = request.getParameter("t");
            String pass = request.getParameter("t1");
            Connection con;
            Statement sta;
            ResultSet rs;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "phpmysql");
            sta = con.createStatement();
            
            
            /*To Insert Data to DataBase*/
            if (su.equals(request.getParameter("submit"))) {
                if(!name.isEmpty() && !pass.isEmpty()){
                try {
                    sta = con.createStatement();
                    sta.executeUpdate("insert into admin values(null,'" + name + "','" + pass + "')");
                    out.println("<script>alert('Data Inserted');</script>");
                } catch (SQLException ex) {
                    ex.getMessage();
                }
            }
                else{
                    out.print("<script>alert('Please Fill Required Field !');</script>");
                }
            }
            
            
            /*To delete Data From DataBase*/
            if (del.equals(request.getParameter("del"))) {
                sta = con.createStatement();
                if (!name.isEmpty()) {
                    sta.executeUpdate("delete  from admin where uname='" + name + "' ");
                } else {
                    sta.executeUpdate("delete  from admin where pass='" + pass + "' ");
                }
                out.println("<script>alert('Data Deleted');</script>");
            }


            /*To Fetch Data From Database*/
            rs = sta.executeQuery("Select * from admin");
            out.print(
                    "<table border='1' style='width: auto;'><thead><tr><th>Name</th><th>Password</th></tr></thead><tbody>");
            while (rs.next()) {
                out.print("<tr><td>" + rs.getString("uname") + "</td>" + "<td>" + rs.getString("pass") + "</td></tr>");
            }
            out.print("</tbody></table>");
        %>
    </body>
</html>
