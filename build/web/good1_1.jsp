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
         <link href="Layout/css/bootstrap.css" rel="stylesheet" type="text/css" media="screen" >
        <link href="Layout/css/layout.css" rel="stylesheet" type="text/css" media="screen">
          <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-dropdown.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/jquery.min.js"></script>

        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-modal.js"></script>
        <link rel="icon" href="Layout/img/glyphicons-halflings-white.png" type="image/x-icon"/>
        <link rel="icon" href="Layout/img/glyphicons-halflings.png" type="image/x-icon"/>
        <script>
   history.forward();
</script>
<script src="ajax_code.js">
</script>
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
            .lead img{
                height:250px;
                width:350px;
                padding-left:0;
            }
            .btn-group {
            position: relative;
           
            display: inline-block;
           font-size: 0;
           white-space: nowrap;
            vertical-align: middle;
             }
            
        </style>
    </head>
<body style=" background-color:white;"><% String a1,a2,a3,a4,a5=""; %>
        <div class="container">
            
            <div class="masthead">
                <div class="navbar">
                    <div class="navbar-inner">
                        <div class="container">
                            <ul class="nav">
                                <li class="active"><a href="good1_1.jsp"><i class="icon-home"></i>HOME</a></li>
<%if(session.getAttribute("sname")==null){%>  <li><a href="loginpage.jsp"><i class="icon-lock"></i>Login</a></li><%}%>
                                <li><a href="#"><i class="icon-download-alt"></i>Download</a></li>
                                <li><a href="about.jsp" ><i class="icon-globe"></i>About</a></li>
                                <li><a href="contactus.jsp"><i class="icon-bell"></i>Contact us</a></li>
                                <li><a href="#"><i class="icon-inbox"></i>Feedback</a></li>
                            </ul>
                        </div>
                    </div>
                </div><!-- /.navbar -->
            </div>

            <!-- Jumbotron -->
           
                <%if(session.getAttribute("sname")!=null){%>
                <div class="btn-group pull-right" >
                <a class="btn btn-primary" href="#"><i class="icon-user icon-white"></i><%=" "+(String)session.getAttribute("sname") %> </a>
                <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" href="#"><span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a data-toggle="modal" href="#view"><i class="icon-th-list"></i>&nbsp;&nbsp;View</a></li>
                <li><a href="editinfo.jsp"><i class="icon-pencil"></i>&nbsp;&nbsp;Update</a></li>
                <li><a href="changepassword.jsp"><i class="icon-pencil"></i>&nbsp;&nbsp;Change Password</a></li>
                <li><a href="logout.jsp"><i class="icon-off"></i>&nbsp;&nbsp;Logout</a></li>
                
              </ul>
            </div><%}%>
             <!-- modal start     -->
               <%
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag","root","root");
               PreparedStatement ps=con.prepareStatement("select * from reg where username='"+(String)session.getAttribute("sname")+"'");
               ResultSet rs=ps.executeQuery();
               if(rs.next()){
               a1=rs.getString(1);
               a2=rs.getString(2);
               a3=rs.getString(3);
               a4=rs.getString(5);
               a5=rs.getString(7);
               %>
                            <div id="view" class="modal hide fade in" style="display:none; "> 
                               
                                <div class="modal-header">  
                                    <a class="close" data-dismiss="modal">×</a>  
                                    <h3>Your Profile</h3>  
                                </div>  
                                <div class="modal-body">  
                                    <div class="container">
                                        <p>Name:<%=a1%><br>
                                            Gender:<%=a2%><br>
                                            Date of birth:<%=a3%><br>
                                            E-mail:<%=a4%><br>
                                            User-name:<%=a5%><br>
                                            

                                  </p>  </div>     
                                </div>  
                                <div class="modal-footer"> 
                                    <a href="#" class="btn" data-dismiss="modal">Close</a>  
                                </div>
                            </div><%}%>
             <div class="jumbotron">
                <h1 style="color:#3B5998;">LCET College Magazine</h1>

               <div id="myCarousel" class="carousel slide">
                     <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1" class=""></li>
                        <li data-target="#myCarousel" data-slide-to="2" class=""></li>
                         <li data-target="#myCarousel" data-slide-to="3" class=""></li>
                    </ol>
                    <div class="carousel-inner" style="height:500px;">
                        <div class="item active">
                            <img src="Layout/img/img4.jpg" alt=""/>
                            
                        </div>
                        <div class="item">
                            <img src="Layout/img/img2.jpg" alt=""/>
                            
                        </div>
                        <div class="item">
                            <img src="Layout/img/img3.jpg" alt=""/>
                           
                        </div>

                        <div class="item">
                            <img src="Layout/img/img5.jpg" alt=""/>
                            
                        </div>
                    </div>
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
                </div>
                              <a class="btn btn-large btn-success" href="registration.jsp">Get started today</a>
            </div>

            <hr>
            <div  id="myDiv" class="row-fluid">
                <!-- Example row of columns -->
                <%    String m1 = "";
                    String m2 = "";
                    String m3 = "";
                    String m4 = "";
                    String m5 = "";
                    String m6 = "";
                    String m7 = "";
                    String m8 = request.getQueryString();
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag", "root", "root");
                        PreparedStatement ps1 = con.prepareStatement("select * from article  limit 0,3");
                        ResultSet rs1 = ps1.executeQuery();
                        while (rs1.next())
                            {
                            m1 = rs1.getString(2);
                            m2 = rs1.getString(3);
                            m3 = rs1.getString(4);
                            m4 = rs1.getString(5);
                            m5 = rs1.getString(6);
                            m6 = rs1.getString(7);
                            m7=rs1.getString(9);
                            if(m7.equals("yes")){
%> 

                <div class="span4" style="border-right:#d4d4d4;border-right-style:solid;">
                    <img class="pull-left" src="Layout/png/glyphicons_072_bookmark.png"/>
                    <h2><%=m1%></h2>
                    <p style="font-family:<%=m3%>;color:<%=m4%>;font-size:<%=m5%>;"><%if(m2.length()>50){out.println(m2.substring(0, 50));}else {out.println(m2);}%></p>
                    <p><a class="btn" href="#">View details »</a></p>
                </div>
                    <% } else{%>
                 <div class="span4" style="border-right:#d4d4d4;border-right-style:solid;">
                    
                    <h2><%=m1%></h2>
                    <p style="font-family:<%=m3%>;color:<%=m4%>;font-size:<%=m5%>;"><%=m2%></p>
                    <p><a class="btn" href="#">View details »</a></p>
                </div>
                    <% }}
                    }
                    catch (Exception e) { out.print(String.valueOf(e));
                    }%>
            </div>
<div class="pagination">
    <form>
              <ul>
                  <li><input type="button" onclick="good1(0)" value="«" /></li>
                <li><input type="button"  onclick="good1(1)" value="1"/>
                <li><input type="button" onclick="good1(2)" value="2"/></li>
                <li><input type="button" onclick="good1(3)" value="3"/></li>
                <li><input type="button" onclick="good1(4)" value="4"/></li>
                <li><input type="button" onclick="good1(5)" value="5"/></li>
                <li><input type="button" onclick="good1(7)" value="»"/></li>
              </ul>
    </form>
            </div>
            <div class="footer">
                <p>© LCET 2013</p>
            </div>
        </div><p class="pull-right">
            <a href="#" >Back to Top</a></p>
          <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-alert.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-button.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-carousel.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-dropdown.js"></script>
        
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-popover.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-scrollspy.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-tab.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-tooltip.js"></script>
        
    </body>
</html>
