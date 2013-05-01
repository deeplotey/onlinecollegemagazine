<%-- 
    Document   : index
    Created on : 20 Mar, 2013, 8:41:24 PM
    Author     : Odit
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
        <link rel="icon" href="Layout/img/glyphicons-halflings-white.png" type="image/x-icon"/>
        <link rel="icon" href="Layout/img/glyphicons-halflings.png" type="image/x-icon"/>
        <script src="Layout/js/bootstrap.js"></script>
        <script src="Layout/js/bootstrap.min.js"></script>
    </head>
    <body>
        <form action="index.jsp" method="post" class="form-signin">
            <h2>Hello Navdeep!</h2>
            <input type="text" name="t" class="">            
            <input type="submit" name="submit" class="">
            <input type="text" name="t1" value="<% out.print(request.getParameter("t"));%>"/>
        </form>
    </body>
</html>
