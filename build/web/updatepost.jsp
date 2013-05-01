
<%-- 
    Document   : updatepost
    Created on : Apr 22, 2013, 7:46:20 PM
    Author     : AMAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
         <link href="Layout/css/bootstrap.css" rel="stylesheet" type="text/css" media="screen"/> 
        <link href="Layout/css/layout.css" rel="stylesheet" type="text/css" media="screen"/>
         <style type="text/css">
            body{
                background-color:#3B5998;
            }
            .bs-docs-example {
                position: relative;

                padding: 39px 19px 14px;
                background-color: #fff;
                border: 1px solid #ddd;
                -webkit-border-radius: 4px;
                -moz-border-radius: 4px;
                height:850px;
                width:500px;
                margin-left:300px;
                color:#3B5998;
            }
            .bs-docs-example td{
                font-size:18px;

            }
        </style>
        <script>
            history.forward();
        </script>
    </head>
    <body>
<%
 Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_clg_mag","root","root");
         int k=0;
 int a=0;String cat="";String heading=""; String description="";String font="";String color="";String size="";
%>
        <div class="container">
            <jsp:include page="forall.jsp"/>
            <form method="POST" class="bs-docs-example" name="deep">
                <jsp:include page="session.jsp"></jsp:include>
                <h1 align="center">&nbsp;&nbsp;&nbsp;Update here</h1>
                <table align="center" class="table table-bordered">
                    <%  
                      try{
   
         
          PreparedStatement ps=con.prepareStatement("select max(id) from article");
         
          ResultSet rs=ps.executeQuery();
          while(rs.next()){
               a=rs.getInt(1);
               
          }
          PreparedStatement ps1=con.prepareStatement("select * from article where id=?");
          ps1.setInt(1,a);
          ResultSet rs1=ps1.executeQuery();
          if(rs1.next()){
              cat=rs1.getString(1);
               heading=rs1.getString(2);
              description=rs1.getString(3);
               font=rs1.getString(4);
               color=rs1.getString(5);
              size=rs1.getString(6);
          }
}catch(Exception e){ out.print(String.valueOf(e));}
%>
                    <tr class="success" ><td>Category:<input type="text" readonly="readonly" value="<%=cat%>"/></td></tr>

                    <tr><td>Heading of post:<input type="text" name="heading1" value="<%=heading%>" required /></td></tr>
                    <tr><td>Description of post:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea name="description"   ><%=description%>
                            </textarea></td></tr>
                    <tr><td><p>Select font:</p><input type="text" name="font1" value="<%=font%>"/>&nbsp;&nbsp;&nbsp;&nbsp;
                            <p>Select color:</p><input type="text" name="color1" value="<%=color%>"/>&nbsp;&nbsp;&nbsp;&nbsp;
                            <p>Select size:</p>
                            <input type="text" name="size1" value="<%=size%>"/></td></tr>
                   
                            <%
                            
                            if(request.getParameter("update")!=null){
                              
                                PreparedStatement ps3=con.prepareStatement("update article set heading=?,font=?,color=?,size=? where id="+a+"");
                                ps3.setString(1,request.getParameter("heading1"));
                                ps3.setString(2,request.getParameter("font1"));
                                ps3.setString(3,request.getParameter("color1"));
                                ps3.setString(4,request.getParameter("size1"));
                                ps3.executeUpdate();
                                response.sendRedirect("good1_1.jsp");
                                                          }
                            %>
                            
                            <tr><td><input type="submit" name="update" value="UPDATE"/></td></tr></table>  </form></div>
                <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap.min.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-alert.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-button.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-carousel.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-dropdown.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-modal.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-popover.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-scrollspy.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-tab.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-tooltip.js"></script>
        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-transition.js"></script>        
    </body>
</html>
