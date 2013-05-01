<%-- 
    Document   : changepassword
    Created on : 21 Feb, 2013, 12:07:19 PM
    Author     : Aman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
     <link href="Layout/css/bootstrap.css" rel="stylesheet" type="text/css" media="screen"/>
        <link href="Layout/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="screen"/>
        <link href="Layout/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" media="screen"/>
        <link href="Layout/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" media="screen"/>
        <link href="Layout/css/layout.css" rel="stylesheet" type="text/css" media="screen"/>
        <style type="text/css">
            .hero-unit input[type=text],.hero-unit input[type=password]{
                font-size: 16px;
    height: auto;
    margin-bottom: 15px;
    padding: 7px 9px;
            }
        </style>
        <script type="text/javascript">
            function validpass(){
              re=/^[A-Za-z0-9!@#$%^&*()_]{5,20}$/;
              if(!re.test(document.nform.pass.value)){
                  alert("Password should be atleast of 5 characters and maximum of 20 characters");
                  document.nform.pass.value="";
              }
             function validsame(){
                var passw=document.nform.pass.value;
                var confirmpass=document.nform.confirmpass.value;
                if(passw!=confirmpass){
                    alert("Password and confirm password shoul be same");
                    document.nform.confirmpass.value="";
                    return false;
                }
               
            }
        </script>
</head>

 <body style="background-color:#3B5998;">
     <%String d1="";
     Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag","root","root");
     PreparedStatement ps=con.prepareStatement("select * from accounts where username='"+(String)session.getAttribute("sname")+"'");
     ResultSet rs=ps.executeQuery();
     if(rs.next()){
         d1=rs.getString(2);
     }
     %>
     <p class="pull-right"><i class="icon-home"></i><a href="good1_1.jsp">Goto HomePage</a></p>
       <form name="nform" method="post">
       <div class="container" style="background-color:#3B5998; ">
           <div class="hero-unit" style="text-align:center;background-color:white;width:500px;height:300px;margin-left:300px;margin-top:50px;">
     
        <h2 class="form-signin-heading" style="color: #3B5998;">Change Password</h2>
        Username&nbsp;&nbsp;<input type="text" readonly="readonly" placeholder="Enter Username" value="<%=(String)session.getAttribute("sname")%>" /><br/>
        Current Password&nbsp;&nbsp;<input type="password" name="oldpass" placeholder="Enter Current Password"/><br/>
        New Password&nbsp;&nbsp;<input type="password" name="pass" placeholder="Enter New Password" onblur="validpass()"/><br/>
        Confirm Password&nbsp;&nbsp;<input type="password" name="confirmpass" placeholder="Confirm Password"/><br/>
        
        <input class="btn btn-large btn-success" type="submit" value="Change password" name="submit" align="center" onclick="validsame()"/>
         </div></div>
        </form>
        <%
        if((String)request.getParameter("submit")!=null){
            if(request.getParameter("oldpass").equals(d1)){
                PreparedStatement ps1=con.prepareStatement("update accounts set password='"+request.getParameter("pass")+"' where username='"+(String)session.getAttribute("sname")+"'");
                ps1.executeUpdate();
                 PreparedStatement ps2=con.prepareStatement("update forgotpassword set password='"+request.getParameter("pass")+"' where username='"+(String)session.getAttribute("sname")+"'");
                ps2.executeUpdate();
                out.print("<script>alert('Update Successfully');window.location.href='good1_1.jsp';</script>");
            }
                       else{
               
                          out.print("<script>alert('Invalid password');</script>");
                       }
        }
        %>
    </body>
</html>