package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class slideshow_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"Layout/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\">\n");
      out.write("        <link href=\"Layout/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\">\n");
      out.write("        <link href=\"Layout/css/bootstrap-responsive.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\">\n");
      out.write("        <link href=\"Layout/css/bootstrap-responsive.min.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\">\n");
      out.write("        <link href=\"Layout/css/layout.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\">\n");
      out.write("        <link rel=\"icon\" href=\"Layout/img/glyphicons-halflings-white.png\" type=\"image/x-icon\"/>\n");
      out.write("        <link rel=\"icon\" href=\"Layout/img/glyphicons-halflings.png\" type=\"image/x-icon\"/>\n");
      out.write("        <script src=\"Layout/js/bootstrap.js\"></script>\n");
      out.write("        <script src=\"Layout/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"Layout/js/bootstrap-alert.js\"></script>\n");
      out.write("        <script src=\"Layout/js/bootstrap-button.js\"></script>\n");
      out.write("        <script src=\"Layout/js/bootstrap-carousel.js\"></script>\n");
      out.write("        <script src=\"Layout/js/bootstrap-dropdown.js\"></script>\n");
      out.write("        <script src=\"Layout/js/bootstrap-modal.js\"></script>\n");
      out.write("        <script src=\"Layout/js/bootstrap-popover.js\"></script>\n");
      out.write("        <script src=\"Layout/js/bootstrap-scrollspy.js\"></script>\n");
      out.write("        <script src=\"Layout/js/bootstrap-tab.js\"></script>\n");
      out.write("        <script src=\"Layout/js/bootstrap-tooltip.js\"></script>\n");
      out.write("        <script src=\"Layout/js/bootstrap-transition.js\"></script>\n");
      out.write("        <script src=\"Layout/js/bootstrap-typehead.js\"></script>\n");
      out.write("        <script src=\"Layout/js/jquery.js\"></script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <div id=\"myCarousel\" class=\"carousel slide\">\n");
      out.write("  <ol class=\"carousel-indicators\">\n");
      out.write("    <li data-target=\"Layout/img/004-689x295.jpg\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("    <li data-target=\"Layout/img/1111FINAL-800x295.jpg\" data-slide-to=\"1\"></li>\n");
      out.write("    <li data-target=\"Layout/img/img103.jpg\" data-slide-to=\"2\"></li>\n");
      out.write("  </ol>\n");
      out.write("  <!-- Carousel items -->\n");
      out.write("  <div class=\"carousel-inner\">\n");
      out.write("      <div class=\"active item\"></div>\n");
      out.write("      <div class=\"item\"></div>\n");
      out.write("    <div class=\"item\"></div>\n");
      out.write("  </div>\n");
      out.write("  <!-- Carousel nav -->\n");
      out.write("  <a class=\"carousel-control left\" href=\"Layout/img/004-689x295.jpg\" data-slide=\"prev\">&lsaquo;</a>\n");
      out.write("  <a class=\"carousel-control right\" href=\"Layout/img/img103.jpg\" data-slide=\"next\">&rsaquo;</a>\n");
      out.write("</div>\n");
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
