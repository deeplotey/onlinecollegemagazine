package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class forall_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link href=\"Layout/css/jquery-ui.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\">\n");
      out.write("        <link href=\"Layout/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\">\n");
      out.write("        <link href=\"Layout/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\">\n");
      out.write("        <link href=\"Layout/css/bootstrap-responsive.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\">\n");
      out.write("        <link href=\"Layout/css/bootstrap-responsive.min.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\">\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            .navbar nav{\n");
      out.write("                width:50px\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <script>\n");
      out.write("            history.forward();\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color:#3B5998;\">\n");
      out.write("         <div class=\"navbar\">\n");
      out.write("                    <div class=\"navbar-inner\">\n");
      out.write("                        <div class=\"container\">\n");
      out.write("                            <ul class=\"nav\">\n");
      out.write("                                <li class=\"active\"><a href=\"good1_1.jsp\"><i class=\"icon-home\"></i> HOME</a></li>\n");
      out.write("                                <li><a href=\"#\"><i class=\"icon-edit\"></i>Post Article</a></li>\n");
      out.write("                                <li><a href=\"#\"><i class=\"icon-download-alt\"></i>Download</a></li>\n");
      out.write("                                <li><a href=\"about.jsp\" ><i class=\"icon-globe\"></i>About</a></li>\n");
      out.write("                                <li><a href=\"contactus.jsp\"><i class=\"icon-bell\"></i>Contact us</a></li>\n");
      out.write("                                <li><a href=\"#\"><i class=\"icon-inbox\"></i>Feedback</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
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
