<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="Layout/css/bootstrap.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/layout.css" rel="stylesheet" type="text/css" media="screen">
        <link rel="icon" href="Layout/img/glyphicons-halflings-white.png" type="image/x-icon"/>
        <link rel="icon" href="Layout/img/glyphicons-halflings.png" type="image/x-icon"/>
        <script src="Layout/js/bootstrap.js"></script>
        <script src="Layout/js/bootstrap.min.js"></script>
        <script src="Layout/js/bootstrap-alert.js"></script>
        <script src="Layout/js/bootstrap-button.js"></script>
        <script src="Layout/js/bootstrap-carousel.js"></script>
        <script src="Layout/js/bootstrap-dropdown.js"></script>
        <script src="Layout/js/bootstrap-modal.js"></script>
        <script src="Layout/js/bootstrap.js"></script>
        <script src="Layout/js/bootstrap.js"></script>
        <script src="Layout/js/bootstrap.js"></script>
        <script src="Layout/js/bootstrap.js"></script>
        <style type="text/css">
            body {
                padding-top: 20px;
                padding-bottom: 60px;
                background-image: url("Layout/img/img102.png");
            }

            /* Custom container */
            .container {
                margin: 0 auto;
                max-width: 1000px;
            }
            .container > hr {
                margin: 60px 0;
            }

            /* Main marketing message and sign up button */
            .jumbotron {
                margin: 80px 0;
                text-align: center;
            }
            .jumbotron h1 {
                font-size: 100px;
                line-height: 1;
            }
            .jumbotron .lead {
                font-size: 24px;
                line-height: 1.25;
            }
            .jumbotron .btn {
                font-size: 21px;
                padding: 14px 24px;
            }

            /* Supporting marketing content */
            .marketing {
                margin: 60px 0;
            }
            .marketing p + h4 {
                margin-top: 28px;
            }


            /* Customize the navbar links to be fill the entire space of the .navbar */
            .navbar .navbar-inner {
                padding: 0;
            }
            .navbar .nav {
                margin: 0;
                display: table;
                width: 100%;
            }
            .navbar .nav li {
                display: table-cell;
                width: 1%;
                float: none;
            }
            .navbar .nav li a {
                font-weight: bold;
                text-align: center;
                border-left: 1px solid rgba(255,255,255,.75);
                border-right: 1px solid rgba(0,0,0,.1);
            }
            .navbar .nav li:first-child a {
                border-left: 0;
                border-radius: 3px 0 0 3px;
            }
            .navbar .nav li:last-child a {
                border-right: 0;
                border-radius: 0 3px 3px 0;
            }
        </style>
    </head>

    <body>
        <div id="main">
            <div id="one">

            </div>
            <div id="two">
                <input type="text" name="search" value="" style="margin-left:600px;border-color:cadetblue;margin-top:80px;width:200px;height:35px;"/>&nbsp;&nbsp;&nbsp;&nbsp;<img height="35px" src="images/search_btn.jpg"/>

            </div>

            <div id="four">
                <table cellspacing="4" cellpadding="4">
                    <tr style="color:white;text-align:center;height:50px;">
                        <td><a >HOME</a></td>
                        <td ><a href="registration.jsp">VIEW ARTICLES</a></td>
                        <td ><a>NEWS</a></td>
                        <td ><a >DOWNLOAD MAGAZINE</a></td>
                        <td ><a >HIGHLIGHTS</a></td></tr>
                </table>
            </div>
        </div>
        <div id="three">
            <table style="margin-left:100px;">
                <tr>
                    <td> <a href="good1_1.jsp">prev</a> </td>
                    <td> <a href="good1_1.jsp">1</a> </td>
                    <td> <a href="b1_next_type.jsp?2"> 2 </a> </td>
                    <td> <a href="b1_next_type.jsp?3"> 3 </a> </td>
                    <td> <a href="b1_next_type.jsp?4"> 4 </a> </td>
                    <td> <a href="b1_next_type.jsp?5"> 5 </a> </td>
                    <td> <a href="b1_next_type.jsp?1">next</a> </td>

                </tr>
            </table>  

            <%    String m1 = "";
                String m2 = "";
                String m3 = "";
                String m4 = "";
                String m5 = "";
                String m6 = "";
                int i = 0;
                String p1 = "h";
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag", "root", "root");
                    PreparedStatement ps = con.prepareStatement("select * from article  limit 0,3");
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
                        i++;
                        m1 = rs.getString(2);
                        m2 = rs.getString(3);
                        m3 = rs.getString(4);
                        m4 = rs.getString(5);
                        m5 = rs.getString(6);
                        m6 = rs.getString(7);
                        //  p1+=i;
            %> 
            <table id="<%=i%>" style="margin-left:100px">
                <tr><td style="color:#0033ff;font-size:24px"><%=m1%></td></tr>
                <tr><td style="font-size:<%=m5%>px;color:<%=m3%>;font-family:<%=m4%>;font-size:20px"><%=m2%></td></tr>
                <tr><td><input type="submit" value="highlight" onClick="highlight(<%=i%>)" /></td></tr>

            </table> 
            <% }
                } catch (Exception ob) {
                    out.print(ob.toString());
                }
            %>
        </div>
    </body>
</html>
