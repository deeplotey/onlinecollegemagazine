<%-- 
    Document   : slideshow
    Created on : Apr 13, 2013, 10:33:45 PM
    Author     : AMAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <script src="Layout/js/bootstrap-alert.js"></script>
        <script src="Layout/js/bootstrap-button.js"></script>
        <script src="Layout/js/bootstrap-carousel.js"></script>
        <script src="Layout/js/bootstrap-dropdown.js"></script>
        <script src="Layout/js/bootstrap-modal.js"></script>
        <script src="Layout/js/bootstrap-popover.js"></script>
        <script src="Layout/js/bootstrap-scrollspy.js"></script>
        <script src="Layout/js/bootstrap-tab.js"></script>
        <script src="Layout/js/bootstrap-tooltip.js"></script>
        <script src="Layout/js/bootstrap-transition.js"></script>
        <script src="Layout/js/bootstrap-typehead.js"></script>
        <script src="Layout/js/jquery.js"></script>

    </head>
    <body>
       <div id="myCarousel" class="carousel slide">
  <ol class="carousel-indicators">
    <li data-target="Layout/img/004-689x295.jpg" data-slide-to="0" class="active"></li>
    <li data-target="Layout/img/1111FINAL-800x295.jpg" data-slide-to="1"></li>
    <li data-target="Layout/img/img103.jpg" data-slide-to="2"></li>
  </ol>
  <!-- Carousel items -->
  <div class="carousel-inner">
      <div class="active item"></div>
      <div class="item"></div>
    <div class="item"></div>
  </div>
  <!-- Carousel nav -->
  <a class="carousel-control left" href="Layout/img/004-689x295.jpg" data-slide="prev">&lsaquo;</a>
  <a class="carousel-control right" href="Layout/img/img103.jpg" data-slide="next">&rsaquo;</a>
</div>
    </body>
</html>
