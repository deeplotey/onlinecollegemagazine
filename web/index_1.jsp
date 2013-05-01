<%-- 
    Document   : index
    Created on : 15 Apr, 2013, 8:25:50 PM
    Author     : Jasjeet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
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
     
        <script type="text/javascript" language="JavaScript" src="Layout/js/jquery.min.js"></script>
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
            function deleteu()
            {
                alert("sure to delete");
            }
            function viewmore()
            {
                alert("want to view");
            }
        </script>
        
        <style type="text/css">
        </style>
    </head>
    <body>
        <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="#">LCET Magazine</a>
          <div class="nav-collapse collapse">
            <p class="navbar-text pull-right">
              Logged in as <a href="#" class="navbar-link">Username</a>
            </p>
            <ul class="nav">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="#contact">Contact</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
        <div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Admin desk</li>
              <li class="active">
                  <a data-toggle="modal" href="#viewusers">View Users</a></li>
              
              <li><a href="#"></a></li>
              <li><a data-toggle="modal" href="#viewarticles">View articles</a></li>
              <li><a href="#"></a></li>
              <li><a data-toggle="modal" href="#viewfeedbacks">View feedbacks</a></li>
              <li><a href="#"></a></li>
              <li><a href="#">View Highlights</a></li>
              <li><a href="#"></a></li>
              <li><a href="#">View Ranks</a></li>
              <li><a href="#"></a></li>
              
             
            </ul>
          </div>
        </div>
        <div class="span9">
          <div class="hero-unit">
            <button type="button" class="btn btn-primary" data-toggle="button">Welcome Admin</button>
          </div>
<!--start of division viewusers-->
                                  <div class="container">
                                  <div id="viewusers" class="modal hide fade" style="display:none;" >
                                  <div class="modal-header">
                                  <a class="close" data-dismiss="modal">close</a>
                                  <h1>Enlisted users</h1></div>
                                  <hr>
                                  <div class="modal-body">
                                  <form method="POST" action="deleteuser.jsp" class="bs-docs-example">
                                  <table border="0" cellspacing="4" cellpadding="4" color="blue" align="left">
                                  <thead><tr style="color:blue;font-size:20px;">
                                  <th style="width:230px;">users</th>
                                  <th><input type="submit" class="btn btn-success" value="Delete user" onclick="return deleteu();"/></th></tr>
                                  </thead>
                                  <tbody>
      <% 
        String s1="";
      
      
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag","root","root");
       PreparedStatement ps=con.prepareStatement("select username from accounts where type='user'" );
       ResultSet rs=ps.executeQuery();
       while(rs.next())
        {
         
        s1=rs.getString(1);
        
        %>
        
                                  <tr>
                                  <td><p><%=s1%></p></td>
                                  <td><input type="checkbox" name="Delete user" value="<%=s1%>" /></td>
                       
                                 </tr>
                                  <%
                                     }
                                   %>
                                 </tbody>
                                 </table>
                                 </form>
                                 </div>
                                 <hr>
                               <div class="modal-footer"></div>
         </div></div><!--container-->
   <!--End of division viewusers-->   
   <!--Start of division viewarticles-->
                            <div id="viewarticles" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="viewarticlesLabel" aria-hidden="true" style="display:none;" >
                            <form method="POST" action="setrank.jsp">
                            <table border="0" cellspacing="4" cellpadding="4" color="blue" align="center">
                            <thead>
                            <th>
                            <input type="submit" value="rank" onclick="return ranka()" /></th>
                            </thead>
                            <tbody>
                     <%
       String a1="";
       String a2="";
       String a3=request.getParameter("ranks");
       Class.forName("com.mysql.jdbc.Driver");
       Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag","root","root");
       PreparedStatement ps1=con1.prepareStatement("select * from article");
       ResultSet rs1=ps1.executeQuery();
       while(rs1.next())
                 {
        a1=rs1.getString(1);
        a2=rs1.getString(2);
        %>
                    <tr>
                        
                        <td style="width:230px"><%=a1%></td>
                        <td><%=a2%></td>
                        <td><input type="submit" value="View Full Article" /></td>
                        <td><select name="ranks">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                            </td>
                            <td><input type="checkbox" name="rank" value="" /></td>
                        <td><input type="submit" value="Highlight" /></td>
                        
                    </tr>
                    <% 
                        }
                    %>
                   </tbody></table ></form>
                  </div>
 <!--End of division viewarticles-->
 <!--start of division viewfeedbacks-->
                   <div class="container">
                   <div id="viewfeedbacks" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="viewfeedbacksLabel" aria-hidden="true" style="display:none;" >
                   <div class="modal-header">
                   <a class="close" data-dismiss="modal">close</a>
                   <h1>Feedbacks</h1></div>
                   <div class="modal-body">
                   <form method="post" action="delfeedback.jsp">
                   <table border="0">
                   <thead>
                   <th>topic</th></thead>
                    <tbody>
           
      <%
        String f1="";String f2="";String f3="";String f4="";String f5="";
          
       Class.forName("com.mysql.jdbc.Driver");
       Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag","root","root");
        PreparedStatement ps2=con2.prepareStatement("select * from feedbackform");
        ResultSet rs2=ps2.executeQuery();
        while(rs2.next())
        {
            f1=rs2.getString(1);
            f2=rs2.getString(2);
            f3=rs2.getString(3);
            f4=rs2.getString(4);
            f5=rs2.getString(5);
        %>
        <tr>
        <td><%=f1%></td>
        <td><input type="checkbox" name="check" value="<%=f1%>" /></td>
        <td><div class="btn-group">
              <a class="btn btn-primary" href="#"><i class="icon-user icon-white"></i>To do</a>
              <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" href="#"><span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a data-toggle="modal" href="#viewmorefeedbacks">
                <div><input type="submit" class="btn btn-success" value="viewmore" onclick="return viewmore();"/></div></a></li>
                <li><i class="icon-trash"></i> <input type="submit" class="btn btn-success" value="remove" onclick="return deleteu();"/></li>
              </ul>
            </div></td>
        </tr><%
               }
        %>
        </tbody></table></form></div>
        <div class="modal-footer"></div>
        </div></div><!--container-->
<!--End of division viewfeedbacks-->
<div class="container">
    <div id="viewmorefeedbacks" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="viewfeedbacksLabel" aria-hidden="true" style="display:none;" >
                   <div class="modal-header">
                   <a class="close" data-dismiss="modal">close</a>
                   <h1>Feedbacks</h1></div>
                   <div class="modal-body">
                       <form method="post">
                       <table border="0">
                       <thead>
            <th>subject</th><th>type</th><th>comments</th><th>need</th><th>rating</th><th>delete</th></thead>
        <tbody>
           
      
      <%! String[] a5; %>
                   <%
                   String k=""; String g1="";String g2="";String g3="";String g4="";String g5="";
                   
                   try{
                   Class.forName("com.mysql.jdbc.Driver");
                    Connection con5=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag","root","root");
                       a5=request.getParameterValues("check");
                   
                   if(a5!=null){
                       for(int i=0;i<a5.length;i++){
                           k=(String)a5[i];
                           out.print(k);
                            
                         PreparedStatement ps5=con5.prepareStatement("select * from feedbackform where subject=?");
                         ResultSet rs5=ps5.executeQuery();
                          while(rs5.next())
        {
            g1=rs5.getString(1);
            g2=rs5.getString(2);
            g3=rs5.getString(3);
            g4=rs5.getString(4);
            g5=rs5.getString(5);
        %>
        
    <tr>
        <td><%=g1%></td>
        <td><%=g2%></td>
        <td><%=g3%></td>
        <td><%=g4%></td>
        <td><%=g5%></td>
    </tr><%
               }}
                       }}catch(Exception e){}
        %>
                         
                                         
                                        
       
          
      
       
       
    
</tbody>
        </table>
                     </form>
                   </div>
                   
    </div>
</div><!--container-->
      </div></div>
   </body>
</html>
