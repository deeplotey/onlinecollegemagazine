package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class changepassword_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title></title>\n");
      out.write("     <link href=\"Layout/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\"/>\n");
      out.write("        <link href=\"Layout/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\"/>\n");
      out.write("        <link href=\"Layout/css/bootstrap-responsive.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\"/>\n");
      out.write("        <link href=\"Layout/css/bootstrap-responsive.min.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\"/>\n");
      out.write("        <link href=\"Layout/css/layout.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\"/>\n");
      out.write("</head>\n");
      out.write(" <body style=\"background-color:#3B5998;\">\n");
      out.write("        <form class=\"bs-docs-example\" style=\"background-color: #3B5998;\">\n");
      out.write("       <div class=\"container\" style=\"background-color:#3B5998; \">\n");
      out.write("           <div class=\"hero-unit\" style=\"background-color: white;\">\n");
      out.write("      <form class=\"form-signin\">\n");
      out.write("        <h2 class=\"form-signin-heading\" style=\"color: #3B5998;\">Change Password</h2>\n");
      out.write("        Username&nbsp;&nbsp;<input type=\"text\"  placeholder=\"Enter Username\"><br/>\n");
      out.write("        Current Password&nbsp;&nbsp;<input type=\"password\"  placeholder=\"Enter Current Password\"><br/>\n");
      out.write("        New Password&nbsp;&nbsp;<input type=\"password\"  placeholder=\"Enter New Password\"><br/>\n");
      out.write("        Confirm Password&nbsp;&nbsp;<input type=\"password\"  placeholder=\"Enter Confirm Password\"><br/>\n");
      out.write("        \n");
      out.write("        <input class=\"btn btn-large btn-success\" type=\"submit\" value=\"Change password\" align=\"center\"/>\n");
      out.write("         </div></div>\n");
      out.write("      </form>\n");
      out.write("\n");
      out.write("   \n");
      out.write("       \n");
      out.write("    </body>\n");
      out.write("</html>");
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
