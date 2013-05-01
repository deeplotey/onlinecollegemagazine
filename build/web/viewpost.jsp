<%-- 
    Document   : viewpost
    Created on : Apr 17, 2013, 8:53:41 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <script type="text/javascript">
            function buttonclicked(which)
            {
                if(which==1)
                 document.m.action="moderator_1.jsp";
                 document.m.submit();
            }
            
        </script>
         <style type="text/css">body{background-color:#3B5998;}</style>
         
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <!-- <meta name="description" content="">
    <meta name="author" content="">
                                           -->
    <!-- Le styles -->                          
    <link href="../assets/css/bootstrap.css" rel="stylesheet">
    
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
    <body style="background-color:black;">
        <div class="container"  style="background-color:#3B5998;">
        <div class="container-narrow" style="background-color:#3B5998;">
            <div class="hero-unit" style="background-color:white; height:900px;">
             <div class="masthead"><br/>
                 <h3 class="muted" style="background-color:lightgray"> Online College Magazine</h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <table> <tr class="nav nav-pills pull-right">
                 <tr><td class="active"><a href="moderator.jsp" style="font-size:20px ">Home</a></td>
            <td><a style="font-size:20px;color:#3B5998;">View Post</a></td>
          <td><a href="moderator.jsp" style="font-size:20px " >Logout</a></td>
        </tr></table>
     </div>
<div class="jumbotron">
        <div style="font-size:35px;font-family:serif;color:#3B5998;  ">Moderator</div>
        <p class="lead"></p>
        <a class="btn btn-large btn-success" style="color:white;">Welcome</a>
      </div>
      <form name="m" method="post" >
                   <%! String[] a1; %>
                   <%
                   String k="";String s2="";String s3="";String s7="";
                   try{
                   Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag","root","root");
                       a1=request.getParameterValues("view");
                   if(a1!=null){
                        for(int i=0;i<a1.length;i++){
                           k=(String)a1[i];
                            PreparedStatement ps=con.prepareStatement("select * from article where heading=?");
                            
                            ps.setString(1,k);
       ResultSet rs=ps.executeQuery();
       while(rs.next()){
            s7=rs.getString(1);
            s2=rs.getString(2);
            s3=rs.getString(3);
                  }}}}
                 catch(Exception e)
                 {
                    out.print(String.valueOf(e));  
                 }                                            
            
            %> 
            
            <div id="one"  style="background-color: white;" width="600" >
            <table  align="center" width="600" height="80" >
                             
                <tr>
                    <td align="center" width="100" height="80" style="font-size: 20px; font-family:inherit;color:#3B5998;"><h3><u>View Post</u></h3>
                </tr>
                
                <tr >
                    <td align="center"  style="font-size:18px; font-family:inherit; "><br>Category &nbsp;&nbsp;<input type="text"  name="a" value="<%=s7%>" />
                                </td></tr>
                <tr>
                    <td align="center"  style="font-size:18px; font-family:inherit; "><br>Heading of Post&nbsp;&nbsp;<input type="text" name="a" value="<%=s2%>" /></td>
                </tr>     
                <tr>
                    <td align="center"  style="font-size:18px; font-family:inherit ; "><br>Description&nbsp;&nbsp;<input type="text"  name="a" value="<%=s3%>" /></td>
                </tr>     
                <tr>
                    <td align="center" height="50"><br/><br/><br/><input type="submit" value="Back" onclick="buttonclicked(1)" class="btn  btn-success " style="width:60px; height:30px; font-size:15px;"  /><br/><br/><br/></td>
                </tr> 
             </table></div>
      </form>
        </div></div></div>
        
    </body>
</html>
