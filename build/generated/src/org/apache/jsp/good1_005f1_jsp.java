package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class good1_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Home Page</title>\n");
      out.write("         <link href=\"Layout/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" >\n");
      out.write("        <link href=\"Layout/css/layout.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\">\n");
      out.write("          <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-dropdown.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-modal.js\"></script>\n");
      out.write("        <link rel=\"icon\" href=\"Layout/img/glyphicons-halflings-white.png\" type=\"image/x-icon\"/>\n");
      out.write("        <link rel=\"icon\" href=\"Layout/img/glyphicons-halflings.png\" type=\"image/x-icon\"/>\n");
      out.write("        <script>\n");
      out.write("   history.forward();\n");
      out.write("</script>\n");
      out.write("<script src=\"ajax_code.js\">\n");
      out.write("</script>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            body {\n");
      out.write("                padding-top: 20px;\n");
      out.write("                padding-bottom: 60px;\n");
      out.write("       \n");
      out.write("                /*Here you can set the body background image and background color.Also,if you want to juggle with fonts then you can do anything here.*/\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* Custom container */\n");
      out.write("            .container {\n");
      out.write("                margin: 0 auto;\n");
      out.write("                max-width: inherit;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            .container > hr {\n");
      out.write("                margin: 60px 0;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* Main marketing message and sign up button */\n");
      out.write("            .jumbotron {\n");
      out.write("                margin: 50px 0;\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("            .jumbotron h1 {\n");
      out.write("                font-size:55px;\n");
      out.write("                line-height: 1;\n");
      out.write("            }\n");
      out.write("            .jumbotron .lead {\n");
      out.write("                font-size: 24px;\n");
      out.write("                line-height: 1.25;\n");
      out.write("            }\n");
      out.write("            .jumbotron .btn {\n");
      out.write("                font-size:18px;\n");
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
      out.write("            \n");
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
      out.write("            .lead img{\n");
      out.write("                height:250px;\n");
      out.write("                width:350px;\n");
      out.write("                padding-left:0;\n");
      out.write("            }\n");
      out.write("            .btn-group {\n");
      out.write("            position: relative;\n");
      out.write("           \n");
      out.write("            display: inline-block;\n");
      out.write("           font-size: 0;\n");
      out.write("           white-space: nowrap;\n");
      out.write("            vertical-align: middle;\n");
      out.write("             }\n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("<body style=\" background-color:white;\">");
 String a1,a2,a3,a4,a5=""; 
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            \n");
      out.write("            <div class=\"masthead\">\n");
      out.write("                <div class=\"navbar\">\n");
      out.write("                    <div class=\"navbar-inner\">\n");
      out.write("                        <div class=\"container\">\n");
      out.write("                            <ul class=\"nav\">\n");
      out.write("                                <li class=\"active\"><a href=\"good1_1.jsp\"><i class=\"icon-home\"></i>HOME</a></li>\n");
if(session.getAttribute("sname")==null){
      out.write("  <li><a href=\"loginpage.jsp\"><i class=\"icon-lock\"></i>Login</a></li>");
}
      out.write("\n");
      out.write("                                <li><a href=\"#\"><i class=\"icon-download-alt\"></i>Download</a></li>\n");
      out.write("                                <li><a href=\"about.jsp\" ><i class=\"icon-globe\"></i>About</a></li>\n");
      out.write("                                <li><a href=\"contactus.jsp\"><i class=\"icon-bell\"></i>Contact us</a></li>\n");
      out.write("                                <li><a href=\"#\"><i class=\"icon-inbox\"></i>Feedback</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div><!-- /.navbar -->\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!-- Jumbotron -->\n");
      out.write("           \n");
      out.write("                ");
if(session.getAttribute("sname")!=null){
      out.write("\n");
      out.write("                <div class=\"btn-group pull-right\" >\n");
      out.write("                <a class=\"btn btn-primary\" href=\"#\"><i class=\"icon-user icon-white\"></i>");
      out.print(" "+(String)session.getAttribute("sname") );
      out.write(" </a>\n");
      out.write("                <a class=\"btn btn-primary dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\"><span class=\"caret\"></span></a>\n");
      out.write("              <ul class=\"dropdown-menu\">\n");
      out.write("                <li><a data-toggle=\"modal\" href=\"#view\"><i class=\"icon-th-list\"></i>&nbsp;&nbsp;View</a></li>\n");
      out.write("                <li><a href=\"editinfo.jsp\"><i class=\"icon-pencil\"></i>&nbsp;&nbsp;Update</a></li>\n");
      out.write("                <li><a href=\"changepassword.jsp\"><i class=\"icon-pencil\"></i>&nbsp;&nbsp;Change Password</a></li>\n");
      out.write("                <li><a href=\"logout.jsp\"><i class=\"icon-off\"></i>&nbsp;&nbsp;Logout</a></li>\n");
      out.write("                \n");
      out.write("              </ul>\n");
      out.write("            </div>");
}
      out.write("\n");
      out.write("             <!-- modal start     -->\n");
      out.write("               ");

               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag","root","root");
               PreparedStatement ps=con.prepareStatement("select * from reg where username='"+(String)session.getAttribute("sname")+"'");
               ResultSet rs=ps.executeQuery();
               if(rs.next()){
               a1=rs.getString(1);
               a2=rs.getString(2);
               a3=rs.getString(3);
               a4=rs.getString(5);
               a5=rs.getString(7);
               
      out.write("\n");
      out.write("                            <div id=\"view\" class=\"modal hide fade in\" style=\"display:none; \"> \n");
      out.write("                               \n");
      out.write("                                <div class=\"modal-header\">  \n");
      out.write("                                    <a class=\"close\" data-dismiss=\"modal\">×</a>  \n");
      out.write("                                    <h3>Your Profile</h3>  \n");
      out.write("                                </div>  \n");
      out.write("                                <div class=\"modal-body\">  \n");
      out.write("                                    <div class=\"container\">\n");
      out.write("                                        <p>Name:");
      out.print(a1);
      out.write("<br>\n");
      out.write("                                            Gender:");
      out.print(a2);
      out.write("<br>\n");
      out.write("                                            Date of birth:");
      out.print(a3);
      out.write("<br>\n");
      out.write("                                            E-mail:");
      out.print(a4);
      out.write("<br>\n");
      out.write("                                            User-name:");
      out.print(a5);
      out.write("<br>\n");
      out.write("                                            \n");
      out.write("\n");
      out.write("                                  </p>  </div>     \n");
      out.write("                                </div>  \n");
      out.write("                                <div class=\"modal-footer\"> \n");
      out.write("                                    <a href=\"#\" class=\"btn\" data-dismiss=\"modal\">Close</a>  \n");
      out.write("                                </div>\n");
      out.write("                            </div>");
}
      out.write("\n");
      out.write("             <div class=\"jumbotron\">\n");
      out.write("                <h1 style=\"color:#3B5998;\">LCET College Magazine</h1>\n");
      out.write("\n");
      out.write("               <div id=\"myCarousel\" class=\"carousel slide\">\n");
      out.write("                     <ol class=\"carousel-indicators\">\n");
      out.write("                        <li data-target=\"#myCarousel\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("                        <li data-target=\"#myCarousel\" data-slide-to=\"1\" class=\"\"></li>\n");
      out.write("                        <li data-target=\"#myCarousel\" data-slide-to=\"2\" class=\"\"></li>\n");
      out.write("                         <li data-target=\"#myCarousel\" data-slide-to=\"3\" class=\"\"></li>\n");
      out.write("                    </ol>\n");
      out.write("                    <div class=\"carousel-inner\" style=\"height:500px;\">\n");
      out.write("                        <div class=\"item active\">\n");
      out.write("                            <img src=\"Layout/img/img4.jpg\" alt=\"\">\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"item\">\n");
      out.write("                            <img src=\"Layout/img/img2.jpg\" alt=\"\">\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"item\">\n");
      out.write("                            <img src=\"Layout/img/img3.jpg\" alt=\"\">\n");
      out.write("                           \n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"item\">\n");
      out.write("                            <img src=\"Layout/img/img5.jpg\" alt=\"\">\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <a class=\"left carousel-control\" href=\"#myCarousel\" data-slide=\"prev\">‹</a>\n");
      out.write("                    <a class=\"right carousel-control\" href=\"#myCarousel\" data-slide=\"next\">›</a>\n");
      out.write("                </div>\n");
      out.write("                              <a class=\"btn btn-large btn-success\" href=\"registration.jsp\">Get started today</a>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <hr>\n");
      out.write("            <div  id=\"myDiv\" class=\"row-fluid\">\n");
      out.write("                <!-- Example row of columns -->\n");
      out.write("                ");
    String m1 = "";
                    String m2 = "";
                    String m3 = "";
                    String m4 = "";
                    String m5 = "";
                    String m6 = "";
                    String m7 = "";
                    String m8 = request.getQueryString();
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag", "root", "root");
                        PreparedStatement ps1 = con.prepareStatement("select * from article  limit 0,3");
                        ResultSet rs1 = ps1.executeQuery();
                        while (rs1.next())
                            {
                            m1 = rs1.getString(2);
                            m2 = rs1.getString(3);
                            m3 = rs1.getString(4);
                            m4 = rs1.getString(5);
                            m5 = rs1.getString(6);
                            m6 = rs1.getString(7);
                            m7=rs1.getString(9);
                            if(m7.equals("yes")){

      out.write(" \n");
      out.write("\n");
      out.write("                <div class=\"span4\" style=\"border-right:#d4d4d4;border-right-style:solid;\">\n");
      out.write("                    <img class=\"pull-left\" src=\"Layout/png/glyphicons_072_bookmark.png\"/>\n");
      out.write("                    <h2>");
      out.print(m1);
      out.write("</h2>\n");
      out.write("                    <p style=\"font-family:");
      out.print(m3);
      out.write(";color:");
      out.print(m4);
      out.write(";font-size:");
      out.print(m5);
      out.write(";\">");
if(m2.length()>50){out.println(m2.substring(0, 50));}else {out.println(m2);}
      out.write("</p>\n");
      out.write("                    <p><a class=\"btn\" href=\"#\">View details »</a></p>\n");
      out.write("                </div>\n");
      out.write("                    ");
 } else{
      out.write("\n");
      out.write("                 <div class=\"span4\" style=\"border-right:#d4d4d4;border-right-style:solid;\">\n");
      out.write("                    \n");
      out.write("                    <h2>");
      out.print(m1);
      out.write("</h2>\n");
      out.write("                    <p style=\"font-family:");
      out.print(m3);
      out.write(";color:");
      out.print(m4);
      out.write(";font-size:");
      out.print(m5);
      out.write(";\">");
      out.print(m2);
      out.write("</p>\n");
      out.write("                    <p><a class=\"btn\" href=\"#\">View details »</a></p>\n");
      out.write("                </div>\n");
      out.write("                    ");
 }}
                    }
                    catch (Exception e) { out.print(String.valueOf(e));
                    }
      out.write("\n");
      out.write("            </div>\n");
      out.write("<div class=\"pagination\">\n");
      out.write("    <form>\n");
      out.write("              <ul>\n");
      out.write("                  <li><input type=\"button\" onclick=\"good1(0)\" value=\"«\" /></li>\n");
      out.write("                <li><input type=\"button\"  onclick=\"good1(1)\" value=\"1\"/>\n");
      out.write("                <li><input type=\"button\" onclick=\"good1(2)\" value=\"2\"/></li>\n");
      out.write("                <li><input type=\"button\" onclick=\"good1(3)\" value=\"3\"/></li>\n");
      out.write("                <li><input type=\"button\" onclick=\"good1(4)\" value=\"4\"/></li>\n");
      out.write("                <li><input type=\"button\" onclick=\"good1(5)\" value=\"5\"/></li>\n");
      out.write("                <li><input type=\"button\" onclick=\"good1(7)\" value=\"»\"/></li>\n");
      out.write("              </ul>\n");
      out.write("    </form>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"footer\">\n");
      out.write("                <p>© LCET 2013</p>\n");
      out.write("            </div>\n");
      out.write("        </div><p class=\"pull-right\">\n");
      out.write("            <a href=\"#\" >Back to Top</a></p>\n");
      out.write("          <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-alert.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-button.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-carousel.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-dropdown.js\"></script>\n");
      out.write("        \n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-popover.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-scrollspy.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-tab.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"JavaScript\" src=\"Layout/js/bootstrap-tooltip.js\"></script>\n");
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
