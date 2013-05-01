<%-- 
    Document   : index_1
    Created on : Apr 17, 2013, 8:51:19 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="Layout/css/jquery-ui.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" media="screen">
         <script type="text/javascript" language="JavaScript" src="Layout/js/jquery.js"></script>
        <link rel="icon" href="Layout/img/glyphicons-halflings-white.png" type="image/x-icon"/>
        <link rel="icon" href="Layout/img/glyphicons-halflings.png" type="image/x-icon"/>
        <script>
            history.forward();
        </script>
        <script type="text/javascript">
            function buttonclicked(which)
            {
                if(which==1)
                {
                 document.myform.action="viewpost.jsp";
            
                }
                else if(which==2)
                {
                 document.myform.action="forward.jsp";
              
                }
                else
                {
                  document.myform.action="delete.jsp";
                    
                }
               
            }
            </script>
            <style  type="text/css">
                .container{alignment-adjust:central;
                               
                    -webkit-border-radius:4px;
                    -moz-border-radius:4px;
                }
                .hero-unit{alignment-adjust:central;
                               
                    -webkit-border-radius:4px;
                    -moz-border-radius:4px;
                }
            </style>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="../assets/css/bootstrap.css" rel="stylesheet">
    
    <link href="../assets/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
                                   
         <style type="text/css">
           #1{ }
          
        
       </style>
       <style type="text/css">body{}</style>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="../assets/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 20px;
        padding-bottom: 40px;
      }

      /* Custom container */
      .container-narrow {
        margin: 0 auto;
        max-width: 900px;
      }
      .container-narrow > hr {
        margin: 30px 0;
      }

      /* Main marketing message and sign up button */
      .jumbotron {
        margin: 60px 0;
        text-align: center;
      }
      .jumbotron h1 {
        font-size: 72px;
        line-height: 1;
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
    </style>
    <link href="../assets/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="../assets/ico/favicon.png">
    </head>
    <body style="background-color:black">
        <div class="container" style="background-color:#3B5998;">
        <div class="container-narrow" style="background-color: #3B5998 ;" >
            <div class="hero-unit" style="background-color:white; width:800px;alignment-adjust:center;height:800px;">
             <div class="masthead"><br/>
                 <h3 class="muted" style="background-color: lightgray">Online College Magazine</h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <table>  <tr class="nav nav-pills pull-right">
           <tr><td class="active"><a href="moderator.jsp" style="font-size:20px ">Home</a></td>
          <td><a style="font-size:20px;color:#3B5998;align:center;">View Post</a></td>
            <td><a href="moderator.jsp" style="font-size:20px " >Logout</a></td>
        </tr></table></div>
<div class="jumbotron">
        <div style="font-size:35px;font-family:serif;color:#3B5998;  ">Moderator</div>
        <p class="lead"></p>
          <a class="btn btn-large btn-success" style="color:#white;">Welcome</a>
</div>
<form name="myform"  >
          <div id="1" style="background-color:white;border-color: black;" ><table align="center"  width="750px" cellspacing="1" cellpadding="1" style="background-color:white;" >
          <tr align="right" style="margin-center:450px;"><td ><input  type="submit" value="View" name="View" onclick="buttonclicked(1)" style="width:60px; height:30px; font-size:15px;" class="btn btn-navbar-large button-success"/>&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Forward" name="Forward" onclick="buttonclicked(2)" style="width:80px; height:30px; font-size:15px;" class="btn btn-navbar-large button-success" />&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Delete" name="Delete" onclick="buttonclicked(3)" style="width:70px; height:30px; font-size:15px;" class="btn btn-navbar-large button-success" /></td></tr>
          <tr><td></td></tr>

           <tr>
             <td  style="font-family:inherit;font-size:20px;color:#3B5998;"><u>Category</u></td>
             <td  style="font-family:inherit;font-size:20px;color:#3B5998;"><u>Heading of post</u></td>
             <td  style="font-family:inherit;font-size:20px;color:#3B5998;"><u>Description</u></td>
             <td  style="font-family:inherit;font-size:20px;color:#3B5998;"><u>View</u></td>
             <td  style="font-family:inherit;font-size:20px;color:#3B5998;"><u>Forward</u></td>
             <td  style="font-family:inherit;font-size:20px;color:#3B5998;"><u>Delete</u></td>
           </tr>
              <tbody>
              <tr>
                   <%
       
        String s7="";
        String s2="";
        String s3="";
        
        try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag","root","root");
       PreparedStatement ps=con.prepareStatement("select * from article" );
       ResultSet rs=ps.executeQuery();
       while(rs.next()){
            s7=rs.getString(1);
            s2=rs.getString(2);
            s3=rs.getString(3);
            %> 
           
                  <td style="font-size:17px; font-family:inherit; " ><%=s7%></td>
                  <td style="font-size:17px; font-family:inherit; " ><%=s2%></td>
                  <td style="font-size:17px; font-family:inherit; " ><%=s3%></td>
                  <td style="font-size:17px; font-family:inherit; " align="center" ><input type="checkbox" name="view"  value="<%=s2%>"   onclick="buttonclicked(1)"  /></td>
                  <td style="font-size:17px; font-family:inherit; " align="center" ><input type="checkbox" name="forward" value="<%=s2%>" onclick="buttonclicked(2)" /></td>
                  <td style="font-size:17px; font-family:inherit; " align="center" ><input type="checkbox" name="delete"  value="<%=s2%>" onclick="buttonclicked(3)" /></td>
             </tr>
             
             <%              }
        }
         catch(Exception ex)
         {} 
     
        
          %>  
                </tbody></table></div></form>
            </div></div></div>
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
