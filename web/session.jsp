<%-- 
    Document   : session
    Created on : Apr 27, 2013, 3:28:53 PM
    Author     : AMAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
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
        <link href="Layout/css/datepicker.css" rel="stylesheet" type="text/css" media="screen">
        <link rel="icon" href="Layout/img/glyphicons-halflings-white.png" type="image/x-icon"/>
        <link rel="icon" href="Layout/img/glyphicons-halflings.png" type="image/x-icon"/>
      <script type="text/javascript" language="JavaScript" src="Layout/js/jquery.min.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-alert.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-button.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-carousel.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-dropdown.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-datepicker.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-modal.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-popover.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-scrollspy.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-tab.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-tooltip.js"></script>
        
    </head>
    <body>
        <% String a1,a2,a3,a4,a5=""; %>
                <div class="btn-group pull-right" >
                <a class="btn btn-primary" href="#"><i class="icon-user icon-white"></i><%=" "+(String)session.getAttribute("sname") %> </a>
                <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" href="#"><span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a data-toggle="modal" href="#view"><i class="icon-th-list"></i>&nbsp;&nbsp;View</a></li>
                <li><a href="editinfo.jsp"><i class="icon-pencil"></i>&nbsp;&nbsp;Update</a></li>
                <li><a href="changepassword.jsp"><i class="icon-pencil"></i>&nbsp;&nbsp;Change Password</a></li>
                <li><a href="logout.jsp"><i class="icon-off"></i>&nbsp;&nbsp;Logout</a></li>
                
              </ul>
            </div>
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
         
    </body>
</html>
