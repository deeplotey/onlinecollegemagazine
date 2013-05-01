<%-- 
    Document   : index
    Created on : Apr 17, 2013, 8:33:29 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="Layout/css/jquery-ui.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" media="screen">
         <script type="text/javascript" language="JavaScript" src="Layout/js/jquery.js"></script>
        <link rel="icon" href="Layout/img/glyphicons-halflings-white.png" type="image/x-icon"/>
        <link rel="icon" href="Layout/img/glyphicons-halflings.png" type="image/x-icon"/>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <style  type="text/css">
                .container{alignment-adjust: center;
                               
                    -webkit-border-radius:6px;
                    -moz-border-radius:6px;
                }
                .hero-unit{alignment-adjust: center;
                               
                    -webkit-border-radius:2px;
                    -moz-border-radius:2px;
                }
            </style>
       <link href="Layout/css/jquery-ui.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" media="screen">

        <script type="text/javascript" language="JavaScript" src="Layout/js/jquery.js"></script>
        <link rel="icon" href="Layout/img/glyphicons-halflings-white.png" type="image/x-icon"/>
        <link rel="icon" href="Layout/img/glyphicons-halflings.png" type="image/x-icon"/>
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
    <script>
        history.forward();
    </script>
    </head>
    <body style="background-color:black;"><form>
       <div class="container"  style="background-color:#3B5998;">
           <jsp:include page="session.jsp"></jsp:include><!-- session -->
        <div class="container-narrow" style="background-color:#3B5998;">
            <div class="hero-unit" style="background-color:white; height:600px;">
             <div class="masthead"><br/>
                 <h3 class="muted" style="background-color:lightgray "> Online College Magazine</h3>
                 <table><tr class="nav nav-pills pull-right">
           <tr><td class="active"><a style="font-size:20px ">Home</a></td>
          
            
                     </tr></table>
       
      </div>
<div class="jumbotron">
        <div style=" font-size: 35px;font-family: serif;color:#3B5998;">Moderator</div><br/><br/>
        <p class="lead"></p>
        <a href="moderator_1.jsp" class="btn btn-large btn-success">Get Started</a>
      </div>

            </div></div></div>
        </form>
                 
    </body>
</html>
