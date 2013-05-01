<%-- 
    Document   : reg1
    Created on : Apr 15, 2013, 9:11:59 PM
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
                    String s1 = request.getParameter("fn");
                    String s13 = request.getParameter("ln");
                    String s14 = s1 + " " + s13;
                    String s2 = request.getParameter("gender");
                    String s3 = request.getParameter("firstinput");
                    String s4 = request.getParameter("institute");
                    String s5 = request.getParameter("email");
                    String s6 = request.getParameter("designation");
                    String s7 = request.getParameter("uname");
                    String s8 = request.getParameter("pass");
                    String s9 = request.getParameter("sc1");
                    String s10 = request.getParameter("ans1");
                    String s11 = request.getParameter("sc2");
                    String s12 = request.getParameter("ans2");
                    try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag", "root", "root");
                        PreparedStatement ps = con.prepareStatement("insert into reg values(?,?,?,?,?,?,?)");
                        ps.setString(1, s14);
                        ps.setString(2, s2);
                        ps.setString(3, s3);
                        ps.setString(4, s4);
                        ps.setString(5, s5);
                        ps.setString(6, s6);
                        ps.setString(7,s7);
                        ps.executeUpdate();
                        PreparedStatement ps1 = con.prepareStatement("insert into accounts values(?,?,?,'user')");
                        ps1.setString(1, s7);
                        ps1.setString(2, s8);
                        ps1.setString(3, s5);
                        ps1.executeUpdate();
                        PreparedStatement ps2 = con.prepareStatement("insert into forgotpassword values(?,?,?,?,?,?)");
                        ps2.setString(1, s9);
                        ps2.setString(2, s10);
                        ps2.setString(3, s11);
                        ps2.setString(4, s12);
                        ps2.setString(5, s7);
                        ps2.setString(6, s8);
                        ps2.executeUpdate();
                        response.sendRedirect("good1_1.jsp");
                      }
                    catch(Exception e)
                    {           
                        if(e.toString().contains("IntegrityConstraintViolationException"))
                         {
                                   response.sendRedirect("registration.jsp?username1=wrong");
                        }
                     
                    }
                %>
               
    </body>
</html>
