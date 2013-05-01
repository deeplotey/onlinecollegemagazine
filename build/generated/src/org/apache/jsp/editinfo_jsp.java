package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class editinfo_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("         <link href=\"Layout/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" >\n");
      out.write("        <link href=\"Layout/css/layout.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\">\n");
      out.write("          <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-dropdown.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-modal.js\"></script>\n");
      out.write("        <link rel=\"icon\" href=\"Layout/img/glyphicons-halflings-white.png\" type=\"image/x-icon\"/>\n");
      out.write("        <link rel=\"icon\" href=\"Layout/img/glyphicons-halflings.png\" type=\"image/x-icon\"/>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color:#3B5998;\"><form class=\"bs-docs-example\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "forall.jsp", out, false);
      out.write("\n");
      out.write("        ");
 String a1,a2,a4,a5="";
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag","root","root");
               PreparedStatement ps=con.prepareStatement("select * from reg where username='"+(String)session.getAttribute("sname")+"'");
               ResultSet rs=ps.executeQuery();
               if(rs.next()){
               a1=rs.getString(1);
               a2=rs.getString(2);
               
               a4=rs.getString(5);
               a5=rs.getString(7);
               
      out.write("\n");
      out.write("               <div class=\"container-narrow\"><h1>Update Information</h1>\n");
      out.write("                   Name: <input type=\"text\" name=\"name\" value=\"");
      out.print(a1);
      out.write("\"/><br>\n");
      out.write("                   Gender:<input type=\"text\" name=\"gender\" value=\"");
      out.print(a2);
      out.write("\"/><br>\n");
      out.write("                   E-mail:<input type=\"text\" name=\"email\" value=\"");
      out.print(a4);
      out.write("\"/><br>\n");
      out.write("                   User-name:<input type=\"text\" name=\"uname\" value=\"");
      out.print(a5);
      out.write("\"/><br>\n");
      out.write("                   </div> \n");
      out.write("            ");
}
      out.write("\n");
      out.write("            <input type=\"submit\" value=\"update\" name=\"update\"/>\n");
      out.write("            ");

            if(request.getParameter("update")!=null){
                PreparedStatement ps1=con.prepareStatement("update reg set name='"+request.getParameter("name")+"',gender='"+request.getParameter("gender")+"',email='"+request.getParameter("email")+"',username='"+request.getParameter("uname")+"' where username='"+(String)session.getAttribute("sname")+"'");
                ps1.executeUpdate();
                PreparedStatement ps2=con.prepareStatement("update accounts set username='"+request.getParameter("uname")+"',email='"+request.getParameter("email")+"' where username='"+(String)session.getAttribute("sname")+"'");
                ps2.executeUpdate();
                PreparedStatement ps4=con.prepareStatement("update forgotpassword set username='"+request.getParameter("uname")+"' where username='"+(String)session.getAttribute("sname")+"'");
                ps4.executeUpdate();
                response.sendRedirect("good1_1.jsp");
            }
            
      out.write("\n");
      out.write("        </form>\n");
      out.write("          <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/jquery.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-alert.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-button.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-carousel.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-dropdown.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-datepicker.js\"></script>\n");
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
