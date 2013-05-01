package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class session_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("         \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div>\n");
      out.write("                <div class=\"btn-group pull-right\" >\n");
      out.write("                <a class=\"btn btn-primary\" href=\"#\"><i class=\"icon-user icon-white\"></i>User </a>\n");
      out.write("                <a class=\"btn btn-primary dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\"><span class=\"caret\"></span></a>\n");
      out.write("              <ul class=\"dropdown-menu\">\n");
      out.write("                <li><a data-toggle=\"modal\" href=\"#view\"><i class=\"icon-th-list\"></i>&nbsp;&nbsp;View</a></li>\n");
      out.write("                <li><a href=\"editinfo.jsp\"><i class=\"icon-pencil\"></i>&nbsp;&nbsp;Update Profile</a></li>\n");
      out.write("                <li><a href=\"#\"><i class=\"icon-pencil\"></i>&nbsp;&nbsp;Change password</a></li>\n");
      out.write("                <li><a href=\"logout.jsp\"><i class=\"icon-off\"></i>&nbsp;&nbsp;Logout</a></li>\n");
      out.write("                \n");
      out.write("              </ul>\n");
      out.write("            </div>\n");
      out.write("               <!-- modal start     -->\n");
      out.write("               \n");
      out.write("                            <div id=\"view\" class=\"modal hide fade in\" style=\"display:none; \"> \n");
      out.write("                               \n");
      out.write("                                <div class=\"modal-header\">  \n");
      out.write("                                    <a class=\"close\" data-dismiss=\"modal\">×</a>  \n");
      out.write("                                    <h3>Your Profile</h3>  \n");
      out.write("                                </div>  \n");
      out.write("                                <div class=\"modal-body\">  \n");
      out.write("                                    <div class=\"container\">\n");
      out.write("                                         </div>     \n");
      out.write("                                </div>  \n");
      out.write("                                <div class=\"modal-footer\"> \n");
      out.write("                                    <a href=\"#\" class=\"btn\" data-dismiss=\"modal\">Close</a>  \n");
      out.write("                                </div>\n");
      out.write("                            </div></div>\n");
      out.write("         \n");
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
