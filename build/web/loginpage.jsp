<%-- 
    Document   : loginpage
    Created on : 6 Mar, 2013, 12:58:08 PM
    Author     : Jasjeet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN Page</title>
        <link href="Layout/css/jquery-ui.css" rel="stylesheet" type="text/css" media="screen"/>
        <link href="Layout/css/bootstrap.css" rel="stylesheet" type="text/css" media="screen"/>
        <link href="Layout/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="screen"/>
        <link href="Layout/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/layout.css" rel="stylesheet" type="text/css" media="screen"/>
        <script type="text/javascript" language="JavaScript" src="Layout/js/jquery.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-alert.js"></script>
        <link rel="icon" href="Layout/img/glyphicons-halflings-white.png" type="image/x-icon"/>
        <link rel="icon" href="Layout/img/glyphicons-halflings.png" type="image/x-icon"/>
      
        <style type="text/css">
            body{
                background-color:#3B5998;
            }
            .container{
               
                color:#3B5998;

            }

        </style>
        <script>
            
            history.forward();
        </script>
    </head>
     <jsp:include page="forall.jsp"></jsp:include>  
    <body>
       
        <div id="login" class="container">
            <form class="form-signin" action="login1.jsp" method="post">
                <p style="font-size:30px;">LOGIN HERE</p>
                <div class="control-group">
                    <label class="control-label" for="inputEmail">User Name</label>
                    <div class="controls">
                        <input type="text" name="name" id="inputEmail" placeholder="User Name" class="required" required >
                    </div>
                </div>
                 <%try{
                if(request.getParameter("name").equals("wrong"))
                                       {
            %>
            <div class="alert alert-block alert-error fade in">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <h4 class="alert-heading">Incorrect username or password</h4>
            <p>You are not authorized to log-in!!!  </p>
            <p>Register for a new account to log in</p>
            <p>
              <a class="btn btn-danger" href="good1_1.jsp">OK</a> 
            </p>
          </div>
            <%
                             }
                               }
            catch(Exception e)
                    {                                   }
             %>
                <div class="control-group">
                    <label class="control-label" for="inputPassword">Password</label>
                    <div class="controls">
                        <input type="password" name="password" id="inputPassword" placeholder="Password" class="required" required >
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <label class="checkbox">
                            <input type="checkbox"> Remember me
                        </label>
                        <input type="submit" name="login" class="btn btn-success">
                    </div>
                </div>
            </form>
            
        </div>
    </body>
    
</html>