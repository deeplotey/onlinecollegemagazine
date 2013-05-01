<%-- 
    Document   : forall
    Created on : Apr 20, 2013, 12:47:55 PM
    Author     : AMAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Layout/css/jquery-ui.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" media="screen">
        <style type="text/css">
            .navbar nav{
                width:50px
            }
        </style>
        <script>
            history.forward();
        </script>
    </head>
    <body style="background-color:#3B5998;">
         <div class="navbar">
                    <div class="navbar-inner">
                        <div class="container">
                            <ul class="nav">
                                <li class="active"><a href="good1_1.jsp"><i class="icon-home"></i> HOME</a></li>
  <%if(session.getAttribute("sname")!=null){%><li><a href="postsame.jsp"><i class="icon-edit"></i>Post Article</a></li><%}%>
                                <li><a href="#"><i class="icon-download-alt"></i>Download</a></li>
                                <li><a href="about.jsp" ><i class="icon-globe"></i>About</a></li>
                                <li><a href="contactus.jsp"><i class="icon-bell"></i>Contact us</a></li>
                                <li><a href="#"><i class="icon-inbox"></i>Feedback</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
    </body>
</html>
