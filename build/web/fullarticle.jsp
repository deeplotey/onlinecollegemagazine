<%-- 
    Document   : fullarticle
    Created on : Apr 29, 2013, 10:09:20 AM
    Author     : AMAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Full Article</title>
    </head>
    <body>
        <%
        Connection con;
        if(request.getParameter("id")!=null){
           String a1,a2,a3,a4,a5,a7,a8="";
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag", "root", "root");
        PreparedStatement ps=con.prepareStatement("select * from article where id="+request.getParameter("id"));
        ResultSet rs=ps.executeQuery();
        if(rs.next()){
            a1=rs.getString(1);
            a2=rs.getString(2);
            a3=rs.getString(3);
            a4=rs.getString(4);
            a5=rs.getString(5);
            a7=rs.getString(6);
            %>
            <div>
                <h1><%=a2%></h1>
                <p><%=a3%></p>
                <p>category:<%=a1%></p>
            </div>
        <%}
        }
        %><%if(session.getAttribute("sname")!=null){%>
        <div>
            <form>
                <input type="hidden" value="<%out.println(request.getParameter("id"));%>"/>
            <table>
                <tr><td><input type="text" name="comment"/></td><td><input type="submit" name="submit" value="comment"/></td>
                </tr>
                
            </table>
        </form>
        </div><%}%>
        <%
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag", "root", "root");
            PreparedStatement ps2=con.prepareStatement("select * from comment where id='"+request.getParameter("id") +"'");
            ResultSet rs=ps2.executeQuery();
            
        %>
        <%
        if(request.getParameter("submit")!=null){
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag", "root", "root");
            PreparedStatement ps1=con.prepareStatement("insert into comment(comment,id)values('"+request.getParameter("comment")+"','"+request.getParameter("id")+"')");
            ps1.executeUpdate();
        }
        %>
    </body>
</html>
