<%-- 
    Document   : logout
    Created on : Apr 27, 2013, 1:26:28 PM
    Author     : AMAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE, NO-STORE">
    </head>
    <body>
       <%
request.getSession().removeAttribute("isActive");
request.getSession().invalidate();
response.sendRedirect("good1_1.jsp");       
       %>
    </body>
</html>
