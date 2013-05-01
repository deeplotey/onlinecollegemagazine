package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class postsame_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n");
      out.write("        <title>Post Article</title>\n");
      out.write("        <link href=\"Layout/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" >\n");
      out.write("        <link href=\"Layout/css/layout.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\">\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-modal.js\"></script>\n");
      out.write("        \n");
      out.write("\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            body{\n");
      out.write("                background-color:#3B5998;\n");
      out.write("            }\n");
      out.write("            .bs-docs-example {\n");
      out.write("                position: relative;\n");
      out.write("\n");
      out.write("                padding: 39px 19px 14px;\n");
      out.write("                background-color: #fff;\n");
      out.write("                border: 1px solid #ddd;\n");
      out.write("                -webkit-border-radius: 4px;\n");
      out.write("                -moz-border-radius: 4px;\n");
      out.write("                height:850px;\n");
      out.write("                width:500px;\n");
      out.write("                margin-left:300px;\n");
      out.write("                color:#3B5998;\n");
      out.write("            }\n");
      out.write("            .bs-docs-example td{\n");
      out.write("                font-size:18px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("        <div class=\"container\">\n");
      out.write("          ");
if(session.getAttribute("sname")!=null){
      out.write(' ');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "session.jsp", out, false);
      out.write(' ');
}
      out.write("\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "forall.jsp", out, false);
      out.write("\n");
      out.write("            <form method=\"POST\" class=\"bs-docs-example\" name=\"deep\" action=\"postsame.jsp?submit=submit\">\n");
      out.write("\n");
      out.write("                <h1 align=\"center\">&nbsp;&nbsp;&nbsp;Share your thoughts here</h1>\n");
      out.write("                <table align=\"center\" class=\"table table-bordered\">\n");
      out.write("                    <tr class=\"success\" ><td>Category:<select name=\"category\">\n");
      out.write("                                <option>Academics</option>\n");
      out.write("                                <option>Alumni</option>\n");
      out.write("                                <option>Extra Curricular Activities</option>\n");
      out.write("                                <option>Student development Section</option>\n");
      out.write("                                <option>Entertainment</option>\n");
      out.write("                                <option>Training and placement</option>\n");
      out.write("                                <option>Social Activities</option>\n");
      out.write("                                <option>Sports</option>\n");
      out.write("                            </select></td></tr>\n");
      out.write("\n");
      out.write("                    <tr><td>Heading of post*:<input type=\"text\" name=\"heading\" value=\"\"  /></td></tr>\n");
      out.write("                    <tr><td>Description of post*:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea name=\"description\" required=\"required\" rows=\"10\" cols=\"20\" >\n");
      out.write("                            </textarea></td></tr>\n");
      out.write("                    <tr><td><p>Select font:</p><select name=\"textfont\">\n");
      out.write("                                <option>verdana</option>\n");
      out.write("                                <option>times new roman</option>\n");
      out.write("                                <option>cursive</option>\n");
      out.write("                                <option>monotype corsiva</option>\n");
      out.write("                            </select>&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                            <p>Select color:</p><select name=\"textcolor\">\n");
      out.write("                                <option>purple</option>\n");
      out.write("                                <option>red</option>\n");
      out.write("                                <option>blue</option>\n");
      out.write("                                <option>green</option>\n");
      out.write("                                <option>black</option>\n");
      out.write("                                <option>pink</option>\n");
      out.write("                            </select>&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                            <p>Select size:</p>\n");
      out.write("                            <select name=\"textsize\">\n");
      out.write("                                <option>12</option>\n");
      out.write("                                <option>14</option>\n");
      out.write("                                <option>16</option>\n");
      out.write("                                <option>18</option>\n");
      out.write("                            </select></td></tr> \n");
      out.write("                    <tr><td><input type=\"file\" name=\"upload\" ></td></tr>\n");
      out.write("                    <tr><td>  ");
 if (request.getParameter("submit") != null) {
      out.write("\n");
      out.write("                            <div>              \n");
      out.write("                                <p><a  data-toggle=\"modal\" href=\"#example\" class=\"btn btn-primary btn-large\">Preview</a></p> \n");
      out.write("                            \n");
      out.write("                                ");
}
      out.write("\n");
      out.write("\n");
      out.write("                            <!-- modal start     -->\n");
      out.write("                            <div id=\"example\" class=\"modal hide fade in\" style=\"display:none; \"> \n");
      out.write("                                ");
                                    
                                    String s1 = request.getParameter("uploadimage");
                                    String s2 = request.getParameter("heading");
                                    String s3 = request.getParameter("description");
                                    String s7 = request.getParameter("category");
                                    String s4 = request.getParameter("textfont");
                                    String s5 = request.getParameter("textsize");
                                    String s6 = request.getParameter("textcolor");
                                
      out.write("\n");
      out.write("                                <div class=\"modal-header\">  \n");
      out.write("                                    <a class=\"close\" data-dismiss=\"modal\">×</a>  \n");
      out.write("                                    <h3>This is a Modal Heading</h3>  \n");
      out.write("                                </div>  \n");
      out.write("                                <div class=\"modal-body\">  \n");
      out.write("\n");
      out.write("                                    <div class=\"container\">\n");
      out.write("                                        <table cellspacing=\"0\" cellpadding=\"0\">\n");
      out.write("                                            <tr><td><h1 style=\"color:#0033ff;\">");
      out.print(s2);
      out.write("</h1></td></tr>\n");
      out.write("                                            <tr><td style=\"font-size:");
      out.print(s5);
      out.write("px;color:");
      out.print(s6);
      out.write(";font-family:");
      out.print(s4);
      out.write(";\">");
      out.print(s3);
      out.write("</td></tr>\n");
      out.write("                                        </table> \n");
      out.write("                                        \n");
      out.write("\n");
      out.write("                                    </div>     \n");
      out.write("                                </div>  \n");
      out.write("                                <div class=\"modal-footer\"> \n");
      out.write("                                    ");
                                        
                                        String save = "submit";
                                        if (save.equals(request.getParameter("submit")))
                                                                                       {try{
                                             Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag","root","root");
        PreparedStatement ps=con.prepareStatement("insert into article(category,heading,description,color,font,size) values(?,?,?,?,?,?)");
        
        ps.setString(1,s7);
        ps.setString(2,s2);
        ps.setString(3,s3);
        ps.setString(4,s6);
        ps.setString(5,s4);
        ps.setString(6,s5);
        ps.executeUpdate();}catch(Exception e){out.print(String.valueOf(e));}
                                        }
                                    
      out.write("\n");
      out.write("                                    \n");
      out.write("                                    <a href=\"updatepost.jsp\" class=\"btn-primary\">Update</a>\n");
      out.write("                                    <a href=\"#\" class=\"btn\" data-dismiss=\"modal\">Close</a>  \n");
      out.write("                                </div>  \n");
      out.write("                            </div> \n");
      out.write("                           \n");
      out.write("                            <input type=\"submit\" name=\"submit\"/>\n");
      out.write("\n");
      out.write("\n");
      out.write("                </table>\n");
      out.write("            </form>\n");
      out.write("                                    \n");
      out.write("\n");
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
