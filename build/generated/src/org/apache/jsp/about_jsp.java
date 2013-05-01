package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class about_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>About</title>\n");
      out.write("        <link rel=\"icon\" href=\"Layout/css/layout.css\" />\n");
      out.write("         <link href=\"Layout/css/jquery-ui.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\">\n");
      out.write("        <link href=\"Layout/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\">\n");
      out.write("        <link href=\"Layout/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\">\n");
      out.write("        <link href=\"Layout/css/bootstrap-responsive.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\">\n");
      out.write("        <link href=\"Layout/css/bootstrap-responsive.min.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\">\n");
      out.write("\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            @font-face\n");
      out.write("            {\n");
      out.write("                font-family: myFirstFont;\n");
      out.write("                src: url('Layout/font/ABeeZee-Regular.ttf');     \n");
      out.write("            }\n");
      out.write("\n");
      out.write("            div\n");
      out.write("            {\n");
      out.write("                font-family:myFirstFont;\n");
      out.write("            }\n");
      out.write("            body{ color:#3B5998;background-color:white;}\n");
      out.write("            .container-narrow img{\n");
      out.write("                border-style:solid;\n");
      out.write("                border-color:black;\n");
      out.write("                -moz-border-radius: 5px;\n");
      out.write("                 border-radius:15px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <script>\n");
      out.write("            history.forward();\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         ");
if(session.getAttribute("sname")!=null){
      out.write(' ');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "session.jsp", out, false);
      out.write(' ');
}
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("          \n");
      out.write("            <div  class=\"container-fluid\" role=\"main\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                <form class=\"bs-docs-example\">\n");
      out.write("<p class=\"pull-right\"><i class=\"icon-home\"></i><a href=\"good1_1.jsp\">Goto Homepage</a></p>\n");
      out.write("                    <h1  Style=\"text-align:center;text-decoration:underline;\">Ludhiana College of Engg.& Tech.</h1>\n");
      out.write("                    <div Style=\"text-align:center;\">Grooming Professionals Through Education</div>\n");
      out.write("\n");
      out.write("                    <div class=\"container-narrow\">\n");
      out.write("                        <p style=\"text-align: center;\"><img class=\"alignnone size-full wp-image-587\" title=\"Ludhiana-College-of-Engineering\"  src=\"Layout/img/Ludhiana-College-of-Enginee.jpg\" alt=\"\" width=\"887\" height=\"403\"/></p>\n");
      out.write("                        <p style=\"text-align: justify;\">The turn of 21″ century was the beginning of era of technological advancements along with outsourcing of business by the developed countries to India, being the major manpower hub. VIKAS EDUCATIONAL SOCIETY committed to social upliftment accepted this challenge which resulted in genesis of Ludhiana College of Engineering and Technology (LCET) in the year 2002. LCET is approved by All India Council for Technical Education &amp; Govt. of Punjab and affiliated to Punjab Technical University, Jalandhar for offering under graduate and post graduate courses in Engineering, Management and Computer Applications. LCET is keeping pace with the increasing need for skilled human resource in the National &amp; International Industry by imparting quality education.</p>\n");
      out.write("                        <p style=\"text-align: justify;\">The VIKAS EDUCATIONAL SOCIETY has always been eager to take all required initiatives for the betterment of the students. LCET in the Chairmanship of Mr. Vijay Gupta has a mission to make incessant endeavourto translate the vision of society into a reality and achieve the following:</p>\n");
      out.write("                        <ul>\n");
      out.write("                            <li>To create world class facilities and ambience foradvanced level of teaching and practical training.</li>\n");
      out.write("                            <li>To grow continuously and become fountain head among institutes of Technical Education in India.</li>\n");
      out.write("                            <li>To develop students as global citizens with unflinching commitment and dedication towards progress.</li>\n");
      out.write("                            <li>To have collaboration with leading universities and industries so as to provide new opportunities to our students.</li>\n");
      out.write("                            <li>To strive tirelessly to bring our institute up to global standards.</li>\n");
      out.write("                            <li>To produce “new age engineers” who will not only excel in engineering fields but also have good managerial skills and the abilityto communicate well in diverse situations.</li>\n");
      out.write("                            <li>To enable the students hard work, dedication and synergic commitment to stand tip toe with all his positivity, spirit, creativity and exuberance to win.</li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div><!-- .entry-content -->\n");
      out.write("                    <footer class=\"entry-meta\">\n");
      out.write("                    </footer><!-- .entry-meta -->\n");
      out.write("                </form><!-- #post-586 -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            </div><!-- #content -->\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("                 <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-alert.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-button.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-carousel.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-dropdown.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-modal.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-popover.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-scrollspy.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-tab.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-tooltip.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-transition.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
