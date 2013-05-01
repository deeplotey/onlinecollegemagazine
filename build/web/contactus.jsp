<%-- 
    Document   : contactus
    Created on : Apr 20, 2013, 11:06:40 AM
    Author     : AMAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us</title>
        <link rel="icon" href="Layout/css/layout.css">
        <style type="text/css">
            body{
                background-color:#3B5998;
            }
            .bs-docs-example {
    position: relative;
   
    padding: 0px 19px 14px;
    background-color:white;
    border: 1px solid #ddd;
    -webkit-border-radius:4px;
    -moz-border-radius: 4px;
    border-radius:4px;
    width:800px;
   
}
           
        </style>
    </head>
    
    <body>
        <%if(session.getAttribute("sname")!=null){%> <jsp:include page="session.jsp"></jsp:include> <%}%>
        <div class="container">
            
             <jsp:include page="forall.jsp"></jsp:include>
            <form class="bs-docs-example">
<h1 style="text-align:left;color:#3B5998;">Ludhiana College of Engineering&nbsp;&amp; Technology<br>
<strong>Ludhiana-Chandigarh Highway,</strong>&nbsp;<strong>Katani Kalan, Ludhiana 141113</strong></h1>
<p style="color:#3B5998;">Phone:-0161-2834307, +91-94172-34750,<br>
98720-45903, 9478503999, 9478503666<br>
Email: info@lcetldh.com</p>
<p style="margin-left:15px"><iframe src="http://maps.google.co.in/maps/ms?hl=en&amp;ie=UTF8&amp;msa=0&amp;msid=100017364056861361434.000487c083b0b93f8727d&amp;ll=30.849774,76.070709&amp;spn=0.271756,0.466232&amp;z=11&amp;output=embed" frameborder="0"  marginwidth="0" marginheight="0" scrolling="no" width="400" height="461"></iframe></p>
<p style="position:relative;">
    <strong>DEVELOPERS:</strong>
</p>
            </form>
        </div>
    </body>
</html>
