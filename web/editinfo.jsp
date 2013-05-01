<%-- 
    Document   : editinfo
    Created on : Apr 29, 2013, 12:19:22 PM
    Author     : AMAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
     
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="Layout/css/bootstrap.css" rel="stylesheet" type="text/css" media="screen" >
        <link href="Layout/css/layout.css" rel="stylesheet" type="text/css" media="screen">
          <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-dropdown.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/jquery.min.js"></script>

        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-modal.js"></script>
        <link rel="icon" href="Layout/img/glyphicons-halflings-white.png" type="image/x-icon"/>
        <link rel="icon" href="Layout/img/glyphicons-halflings.png" type="image/x-icon"/>
        <script>
             function text(q){
                re=/^[A-Za-z ]{3,20}$/;
                if(!re.test(q)){
                   alert("Can contain only alphabets") 
                   q.value="";
                }
            }
        function username(){
            re=/^([a-zA-Z_ ]{5,20})+$/;
            if(!re.test(document.editinfo.uname.value)){
                alert("Can't contain any digit or special character except underscore");
                document.editinfo.uname.value="";
            }
        }
         function checkemail(){
               var x=document.editinfo.email.value;
              var atpos=x.indexOf("@");
              var dotpos=x.lastIndexOf(".");
             if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
                {
                  alert("Not a valid e-mail address");
                   document.editinfo.email.value="";
                 }
            }
        </script>
    </head>
    <body style="background-color:#3B5998;"><form class="bs-docs-example" name="editinfo">
           <jsp:include page="forall.jsp"></jsp:include>
        <% String a1,a2,a4,a5="";
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag","root","root");
               PreparedStatement ps=con.prepareStatement("select * from reg where username='"+(String)session.getAttribute("sname")+"'");
               ResultSet rs=ps.executeQuery();
               if(rs.next()){
               a1=rs.getString(1);
               a2=rs.getString(2);
               
               a4=rs.getString(5);
               a5=rs.getString(7);
               %>
               <div class="container-narrow"><h1>Update Information</h1>
                   Name: <input type="text" name="name" value="<%=a1%>" onblur="text(window.document.editinfo.name.value)"/><br>
                   Gender:<input type="text" name="gender" value="<%=a2%>" onblur="text(window.document.editinfo.gender.value)"/><br>
                   E-mail:<input type="text" name="email" value="<%=a4%>" onblur="checkemail()"/><br>
                   User-name:<input type="text" name="uname" value="<%=a5%>" onblur="username()"/><br>
                   </div> 
            <%}%>
            <input type="submit" value="update" name="update"/>
            <%
            if(request.getParameter("update")!=null){
                PreparedStatement ps1=con.prepareStatement("update reg set name='"+request.getParameter("name")+"',gender='"+request.getParameter("gender")+"',email='"+request.getParameter("email")+"',username='"+request.getParameter("uname")+"' where username='"+(String)session.getAttribute("sname")+"'");
                ps1.executeUpdate();
                PreparedStatement ps2=con.prepareStatement("update accounts set username='"+request.getParameter("uname")+"',email='"+request.getParameter("email")+"' where username='"+(String)session.getAttribute("sname")+"'");
                ps2.executeUpdate();
                PreparedStatement ps4=con.prepareStatement("update forgotpassword set username='"+request.getParameter("uname")+"' where username='"+(String)session.getAttribute("sname")+"'");
                ps4.executeUpdate();
                response.sendRedirect("good1_1.jsp");
            }
            %>
        </form>
          <script type="text/javascript" language="JavaScript" src="Layout/js/jquery.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap.min.js"></script>
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
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-transition.js"></script>
    </body>
</html>
