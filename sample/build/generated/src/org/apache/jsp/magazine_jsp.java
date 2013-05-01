package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class magazine_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            body{background-color:gainsboro;}\n");
      out.write("           \n");
      out.write("        </style>\n");
      out.write("        <script>\n");
      out.write("            function highlight(){\n");
      out.write("                document.getElementById('image').style.height='300px';\n");
      out.write("                document.getElementById('image').style.width='300px';\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("   \n");
      out.write("    \n");
      out.write("    <body background=\"images/background.jpg\" style=\"background-repeat:no-repeat;text-align:center;\">\n");
      out.write("            <div style=\"margin-top:154px;\">\n");
      out.write("                ");

             /*   String m1="";
                String m2="";
                String m3="";
                String m4="";
                String m5="";
                //String m6="";
                Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
       PreparedStatement ps=con.prepareStatement("select * from article");
       ResultSet rs=ps.executeQuery();
       while(rs.next()){
           m1=rs.getString(2);
           m2=rs.getString(3);
           m3=rs.getString(4);
           m4=rs.getString(5);
           m5=rs.getString(6);*/

      out.write("\n");
      out.write("       \n");
      out.write("       <table cellpadding=\"0\" cellspacing=\"0\" >\n");
      out.write("           <tr><td id=\"image\"><h2 style=\"color:#0033ff;\"></h2></td></tr>\n");
      out.write("           <tr><td id=\"image\" style=\"font-size:20px;color:red;font-family:cursive;\"></td></tr>\n");
      out.write("           <tr><td><input type=\"submit\" value=\"highlight\" onClick=\"highlight()\"/></td></tr>\n");
      out.write("       </table>\n");
      out.write("           ");

            //}
       
      out.write("\n");
      out.write("            </div>\n");
      out.write("        \n");
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
