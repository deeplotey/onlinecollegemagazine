<%-- 
    Document   : registration
    Created on : Mar 6, 2013, 5:17:44 PM
    Author     : AMAN
--%>


<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
        <link href="Layout/css/bootstrap.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/layout.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/datepicker.css" rel="stylesheet" type="text/css" media="screen">
        <link rel="icon" href="Layout/img/glyphicons-halflings-white.png" type="image/x-icon"/>
        <link rel="icon" href="Layout/img/glyphicons-halflings.png" type="image/x-icon"/>
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
        <script type="text/javascript" language="JavaScript" >
            
            $(function() {
                $(".datepicker").datepicker({dateFormat: 'yy-mm-dd'});//MySql Date Format
            });
            
        </script>
        <style type="text/css">
            body{
                background-color:#3B5998; 
            }
            .container td{
                color:black;
            }
            .container p{
                color:#3B5998;
            }
           
        </style>
        <script>
            
            function validpass(){
              re=/^[A-Za-z0-9!@#$%^&*()_]{5,20}$/;
              if(!re.test(document.sampleform.pass.value)){
                  alert("Password should be atleast of 5 characters and maximum of 20 characters");
                  document.sampleform.pass.value="";
              }
              
            }
            function validsame(){
                var passw=document.sampleform.pass.value;
                var confirmpass=document.sampleform.confirmpass.value;
                if(passw!=confirmpass){
                    alert("Password and confirm password shoul be same");
                    document.sampleform.confirmpass.value="";
                    return false;
                }
               
            }
             function answer(){
                    if(document.sampleform.ans1.value==""){
                        alert("Please provide us with security answer so we can help u in future.THANKS!! ")
                    }
                }
            function checkemail(){
               var x=document.sampleform.email.value;
              var atpos=x.indexOf("@");
              var dotpos=x.lastIndexOf(".");
             if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
                {
                  alert("Not a valid e-mail address");
                   document.sampleform.email.value="";
                 }
            }
            function text(q){
                re=/^[A-Za-z ]{3,20}$/;
                if(!re.test(q)){
                   alert("Can contain only alphabets") 
                   document.sampleform.fn.value="";
                }
            }
        function username(){
            re=/^([a-zA-Z_ ]{5,20})+$/;
            if(!re.test(document.sampleform.uname.value)){
                alert("Can't contain any digit or special character except underscore");
                document.sampleform.uname.value="";
            }
        }
                    
        </script>
       
    </head>
    <body>
        <div id="main" class="container" > 
            <jsp:include page="forall.jsp"></jsp:include>
            <div id="top">
                <p style="font-size:40px;color:white;alignment:center; ">Registration Form</p> 
            </div>
            <form name="sampleform" method="post" class="bs-docs-example" action="reg1.jsp">
                <div id="info">
                    <p style="font-size:24px;">Personal Info</p>
                    <table >
                        <tr><td>Name*:&nbsp;&nbsp;<input type="text" name="fn" placeholder="first name" size="30" required onblur="text(window.document.sampleform.fn.value)" /></td><td><input type="text" name="ln" placeholder="last name" size="30"/></td></tr>
                        <tr><td>Gender:&nbsp;&nbsp;<select name="gender">
                                    <option>Male</option>
                                    <option>Female</option>
                                </select></td></tr>
                        <tr><td >Date of Birth*:&nbsp;&nbsp;<input type="text" name="firstinput" value="" required class="datepicker" /> </td></tr>
                        <tr><td>Institute:&nbsp;&nbsp;<input type="text" name="institute" value="Ludhiana College Of Engg. & Tech."  readonly="readonly" /></td></tr>     
                        <tr><td>E-mail*:&nbsp;&nbsp;<input type="email" name="email" value="" size="30" required onblur="return checkemail()"/></td></tr>
                        <tr><td>Designation:&nbsp;&nbsp;<input type="text" name="designation" value="" size="30" onblur="text(window.document.sampleform.designation.value)" /></td></tr>

                    </table>
                </div>

                <div id="unp">
                    <p style="font-size:24px;">Select user name and password</p> 
                    <table>
                        <tr><td>User Name*:&nbsp;&nbsp;<input maxlength="20"  type="text" name="uname" value="" size="30" required onblur="username()"/></td></tr>
                        <tr><td>Password*:&nbsp;&nbsp;<input type="password" name="pass" value="" size="30" required onblur="validpass()" /></td></tr>
                        <tr><td>Confirm Password*:&nbsp;&nbsp;<input type="password" name="confirmpass" value="" size="30" required onblur="validsame()" /></td></tr>
                    </table>
                </div>
                <div id="forgotpass">
                    <p style="font-size:24px;">In case you forgot your ID or password</p>
                    <table>
                        <tr><td>Secret Question 1:&nbsp;&nbsp;<select name="sc1">
                                    <option>your birthplace</option>
                                    <option>your favourite dish</option>
                                    <option>mother's name</option>
                                    <option>favourite singer</option>
                                    <option>name of your favourite uncle</option>
                                </select></td></tr>
                        <tr><td>Your Answer:&nbsp;&nbsp;<input type="text" name="ans1" value="" size="30" onblur="anwer()"/></td></tr>

                        <tr><td>Secret Question 2:&nbsp;&nbsp;<select name="sc2">
                                    <option>your favourite holiday spot?</option>
                                    <option>favourite color</option>
                                    <option>best friend</option>
                                    <option>person you hate most</option>
                                    <option>favourite author</option>
                                </select></td></tr>
                        <tr><td>Your Answer:&nbsp;&nbsp;<input type="text" name="ans2" value="" size="30" onblur="anwer()" /></td></tr>
                        <tr><td><button type="submit" class="btn btn-primary" >SUBMIT</button></td></tr>
                    </table>
                </div>
               
            </form>
            <%try{
                if(request.getParameter("username1").equals("wrong"))
                                       {
            %>
            <script>
                alert("UserName Already exists!!");
            </script>
            <%
                             }
                               }
            catch(Exception e)
                    {                                   }
             %>
        </div>
  
    </body>
</html>