package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class dbex_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
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
      out.write("        <style type=\"text/css\">\n");
      out.write("            body {\n");
      out.write("                padding-top: 20px;\n");
      out.write("                padding-bottom: 60px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* Custom container */\n");
      out.write("            .container {\n");
      out.write("                margin: 0 auto;\n");
      out.write("                max-width: 1000px;\n");
      out.write("            }\n");
      out.write("            .container > hr {\n");
      out.write("                margin: 60px 0;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* Main marketing message and sign up button */\n");
      out.write("            .jumbotron {\n");
      out.write("                margin: 80px 0;\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("            .jumbotron h1 {\n");
      out.write("                font-size: 100px;\n");
      out.write("                line-height: 1;\n");
      out.write("            }\n");
      out.write("            .jumbotron .lead {\n");
      out.write("                font-size: 24px;\n");
      out.write("                line-height: 1.25;\n");
      out.write("            }\n");
      out.write("            .jumbotron .btn {\n");
      out.write("                font-size: 21px;\n");
      out.write("                padding: 14px 24px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* Supporting marketing content */\n");
      out.write("            .marketing {\n");
      out.write("                margin: 60px 0;\n");
      out.write("            }\n");
      out.write("            .marketing p + h4 {\n");
      out.write("                margin-top: 28px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            /* Customize the navbar links to be fill the entire space of the .navbar */\n");
      out.write("            .navbar .navbar-inner {\n");
      out.write("                padding: 0;\n");
      out.write("            }\n");
      out.write("            .navbar .nav {\n");
      out.write("                margin: 0;\n");
      out.write("                display: table;\n");
      out.write("                width: 100%;\n");
      out.write("            }\n");
      out.write("            .navbar .nav li {\n");
      out.write("                display: table-cell;\n");
      out.write("                width: 1%;\n");
      out.write("                float: none;\n");
      out.write("            }\n");
      out.write("            .navbar .nav li a {\n");
      out.write("                font-weight: bold;\n");
      out.write("                text-align: center;\n");
      out.write("                border-left: 1px solid rgba(255,255,255,.75);\n");
      out.write("                border-right: 1px solid rgba(0,0,0,.1);\n");
      out.write("            }\n");
      out.write("            .navbar .nav li:first-child a {\n");
      out.write("                border-left: 0;\n");
      out.write("                border-radius: 3px 0 0 3px;\n");
      out.write("            }\n");
      out.write("            .navbar .nav li:last-child a {\n");
      out.write("                border-right: 0;\n");
      out.write("                border-radius: 0 3px 3px 0;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("\n");
      out.write("            <div class=\"masthead\">\n");
      out.write("                <h3 class=\"muted\">Project name</h3>\n");
      out.write("                <div class=\"navbar\">\n");
      out.write("                    <div class=\"navbar-inner\">\n");
      out.write("                        <div class=\"container\">\n");
      out.write("                            <ul class=\"nav\">\n");
      out.write("                                <li class=\"active\"><a href=\"#\">Home</a></li>\n");
      out.write("                                <li><a href=\"#\">Projects</a></li>\n");
      out.write("                                <li><a href=\"#\">Services</a></li>\n");
      out.write("                                <li><a href=\"#\">Downloads</a></li>\n");
      out.write("                                <li><a href=\"#\">About</a></li>\n");
      out.write("                                <li><a href=\"#\">Contact</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div><!-- /.navbar -->\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!-- Jumbotron -->\n");
      out.write("            <div class=\"jumbotron\">\n");
      out.write("                <h1>Marketing stuff!</h1>\n");
      out.write("                <p class=\"lead\">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>\n");
      out.write("                <a class=\"btn btn-large btn-success\" href=\"#\">Get started today</a>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <hr>\n");
      out.write("\n");
      out.write("            <!-- Example row of columns -->\n");
      out.write("            <div class=\"row-fluid\">\n");
      out.write("                <div class=\"span4\">\n");
      out.write("                    <h2>Heading</h2>\n");
      out.write("                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>\n");
      out.write("                    <p><a class=\"btn\" href=\"#\">View details »</a></p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"span4\">\n");
      out.write("                    <h2>Heading</h2>\n");
      out.write("                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>\n");
      out.write("                    <p><a class=\"btn\" href=\"#\">View details »</a></p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"span4\">\n");
      out.write("                    <h2>Heading</h2>\n");
      out.write("                    <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>\n");
      out.write("                    <p><a class=\"btn\" href=\"#\">View details »</a></p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <hr>\n");
      out.write("\n");
      out.write("            <div class=\"footer\">\n");
      out.write("                <p>© Company 2013</p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
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
