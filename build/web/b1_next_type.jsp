<%-- 
    Document   : homepage
    Created on : 2 Mar, 2013, 2:22:28 PM
    Author     : Jasjeet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link href="Layout/css/jquery-ui.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" media="screen">

        <script type="text/javascript" language="JavaScript" src="Layout/js/jquery.js"></script>
        <link rel="icon" href="Layout/img/glyphicons-halflings-white.png" type="image/x-icon"/>
        <link rel="icon" href="Layout/img/glyphicons-halflings.png" type="image/x-icon"/>
      

        <style type="text/css">
            body {
                padding-top: 20px;
                padding-bottom: 60px;
       
                /*Here you can set the body background image and background color.Also,if you want to juggle with fonts then you can do anything here.*/
            }

            /* Custom container */
            .container {
                margin: 0 auto;
                max-width: inherit;

            }
            .container > hr {
                margin: 60px 0;
            }

            /* Main marketing message and sign up button */
            .jumbotron {
                margin: 50px 0;
                text-align: center;
            }
            .jumbotron h1 {
                font-size:55px;
                line-height: 1;
            }
            .jumbotron .lead {
                font-size: 24px;
                line-height: 1.25;
            }
            .jumbotron .btn {
                font-size:18px;
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
            .lead img
            {
                height:250px;
                width:350px;
                padding-left:0;
            }
            
        </style>
    </head>

    <body style=" background-color:white;">
       
            <div class="row-fluid">
                <!-- Example row of columns -->
                <%
            String q=request.getQueryString();
            
         
        int p=Integer.parseInt(q);
            String m1="";String m2="";String m3="";String m4="";String m5="";String m6="";String m7="";
        
            
        PreparedStatement ps=null;
        try
       {
             Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag","root","root");
         switch(p)
         {
               case 1:
                   ps=con.prepareStatement("select * from article  limit 3,3");
                   break;
               case 2:
                   ps=con.prepareStatement("select * from article limit 6,3");
                   break;
               case 3:
                    ps=con.prepareStatement("select * from article limit 9,3");
                    break;
               case 4:
                    ps=con.prepareStatement("select * from article limit 12,3");
                    break;
                     default:
                 {
                     out.print("no pg to show");                                    
                   }
         }
         
         
         ResultSet rs=ps.executeQuery();
         while(rs.next())
         {
            m1=rs.getString(2);
           m2=rs.getString(3);
           m3=rs.getString(4);
           m4=rs.getString(5);
           m5=rs.getString(6);
           m6=rs.getString(7);
          m7=rs.getString(9);
                            if(m7.equals("yes")){
%> 

                <div class="span4" style="border-right:#d4d4d4;border-right-style:solid;">
                    <img class="pull-left" src="Layout/png/glyphicons_072_bookmark.png"/>
                    <h2><%=m1%></h2>
                    <p style="font-family:<%=m3%>;color:<%=m4%>;font-size:<%=m5%>;"><%=m2%></p>
                    <p><a class="btn" href="#">View details »</a></p>
                </div>
                    <% } else{%>
                 <div class="span4" style="border-right:#d4d4d4;border-right-style:solid;">
                    
                    <h2><%=m1%></h2>
                    <p style="font-family:<%=m3%>;color:<%=m4%>;font-size:<%=m5%>;"><%=m2%></p>
                    <p><a class="btn" href="#">View details »</a></p>
                </div>
                    <% }}} catch (Exception e) { out.print(String.valueOf(e));
                    }%>
            <div class="footer">
                <p>© LCET 2013</p>
            </div>
        </div>
                <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap.min.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-alert.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-button.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-carousel.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-dropdown.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-modal.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-popover.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-scrollspy.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-tab.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-tooltip.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-transition.js"></script>
        
    </body>
</html>
