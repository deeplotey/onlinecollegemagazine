<%-- 
    Document   : about
    Created on : Apr 20, 2013, 1:38:11 PM
    Author     : AMAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About</title>
        <link rel="icon" href="Layout/css/layout.css" />
         <link href="Layout/css/jquery-ui.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" media="screen">
        <link href="Layout/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" media="screen">

        <style type="text/css">
            @font-face
            {
                font-family: myFirstFont;
                src: url('Layout/font/ABeeZee-Regular.ttf');     
            }

            div
            {
                font-family:myFirstFont;
            }
            body{ color:#3B5998;background-color:white;}
            .container-narrow img{
                border-style:solid;
                border-color:black;
                -moz-border-radius: 5px;
                 border-radius:15px;
            }
        </style>
        <script>
            history.forward();
        </script>
    </head>
    <body>
         <%if(session.getAttribute("sname")!=null){%> <jsp:include page="session.jsp"></jsp:include> <%}%>
        <div class="container">
          
            <div  class="container-fluid" role="main">



                <form class="bs-docs-example">
<p class="pull-right" style="font-size:large;"><i class="icon-home"></i><a href="good1_1.jsp">Goto Homepage</a></p>
                    <h1  Style="text-align:center;text-decoration:underline;">Ludhiana College of Engg.& Tech.</h1>
                    <div Style="text-align:center;">Grooming Professionals Through Education</div>

                    <div class="container-narrow">
                        <p style="text-align: center;"><img class="alignnone size-full wp-image-587" title="Ludhiana-College-of-Engineering"  src="Layout/img/Ludhiana-College-of-Enginee.jpg" alt="" width="887" height="403"/></p>
                        <p style="text-align: justify;">The turn of 21″ century was the beginning of era of technological advancements along with outsourcing of business by the developed countries to India, being the major manpower hub. VIKAS EDUCATIONAL SOCIETY committed to social upliftment accepted this challenge which resulted in genesis of Ludhiana College of Engineering and Technology (LCET) in the year 2002. LCET is approved by All India Council for Technical Education &amp; Govt. of Punjab and affiliated to Punjab Technical University, Jalandhar for offering under graduate and post graduate courses in Engineering, Management and Computer Applications. LCET is keeping pace with the increasing need for skilled human resource in the National &amp; International Industry by imparting quality education.</p>
                        <p style="text-align: justify;">The VIKAS EDUCATIONAL SOCIETY has always been eager to take all required initiatives for the betterment of the students. LCET in the Chairmanship of Mr. Vijay Gupta has a mission to make incessant endeavourto translate the vision of society into a reality and achieve the following:</p>
                        <ul>
                            <li>To create world class facilities and ambience foradvanced level of teaching and practical training.</li>
                            <li>To grow continuously and become fountain head among institutes of Technical Education in India.</li>
                            <li>To develop students as global citizens with unflinching commitment and dedication towards progress.</li>
                            <li>To have collaboration with leading universities and industries so as to provide new opportunities to our students.</li>
                            <li>To strive tirelessly to bring our institute up to global standards.</li>
                            <li>To produce “new age engineers” who will not only excel in engineering fields but also have good managerial skills and the abilityto communicate well in diverse situations.</li>
                            <li>To enable the students hard work, dedication and synergic commitment to stand tip toe with all his positivity, spirit, creativity and exuberance to win.</li>
                        </ul>
                    </div><!-- .entry-content -->
                    <footer class="entry-meta">
                    </footer><!-- .entry-meta -->
                </form><!-- #post-586 -->



            </div><!-- #content -->
            
        </div>
                 <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap.min.js"></script>
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
    </body>
</html>
