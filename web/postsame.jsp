<%-- 
    Document   : postarticle
    Created on : 21 Feb, 2013, 12:07:19 PM
    Author     : Jasjeet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>Post Article</title>
        <link href="Layout/css/bootstrap.css" rel="stylesheet" type="text/css" media="screen" >
        <link href="Layout/css/layout.css" rel="stylesheet" type="text/css" media="screen">

        <script type="text/javascript" language="JavaScript" src="Layout/js/jquery.min.js"></script>

        <script type="text/javascript" language="JavaScript" src="Layout/js/bootstrap-modal.js"></script>
        

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
    </head>
    <body>
       
        <div class="container">
          <%if(session.getAttribute("sname")!=null){%> <jsp:include page="session.jsp"></jsp:include> <%}%>
            <jsp:include page="forall.jsp"/>
            <form method="POST" class="bs-docs-example" name="deep" action="postsame.jsp?submit=submit">

                <h1 align="center">&nbsp;&nbsp;&nbsp;Share your thoughts here</h1>
                <table align="center" class="table table-bordered">
                    <tr class="success" ><td>Category:<select name="category">
                                <option>Academics</option>
                                <option>Alumni</option>
                                <option>Extra Curricular Activities</option>
                                <option>Student development Section</option>
                                <option>Entertainment</option>
                                <option>Training and placement</option>
                                <option>Social Activities</option>
                                <option>Sports</option>
                            </select></td></tr>

                    <tr><td>Heading of post*:<input type="text" name="heading" value=""  /></td></tr>
                    <tr><td>Description of post*:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea name="description" required="required" rows="10" cols="20" >
                            </textarea></td></tr>
                    <tr><td><p>Select font:</p><select name="textfont">
                                <option>verdana</option>
                                <option>times new roman</option>
                                <option>cursive</option>
                                <option>monotype corsiva</option>
                            </select>&nbsp;&nbsp;&nbsp;&nbsp;
                            <p>Select color:</p><select name="textcolor">
                                <option>purple</option>
                                <option>red</option>
                                <option>blue</option>
                                <option>green</option>
                                <option>black</option>
                                <option>pink</option>
                            </select>&nbsp;&nbsp;&nbsp;&nbsp;
                            <p>Select size:</p>
                            <select name="textsize">
                                <option>12</option>
                                <option>14</option>
                                <option>16</option>
                                <option>18</option>
                            </select></td></tr> 
                    <tr><td><input type="file" name="upload" ></td></tr>
                    <tr><td>  <% if (request.getParameter("submit") != null) {%>
                            <div>              
                                <p><a  data-toggle="modal" href="#example" class="btn btn-primary btn-large">Preview</a></p> 
                            
                                <%}%>

                            <!-- modal start     -->
                            <div id="example" class="modal hide fade in" style="display:none; "> 
                                <%                                    
                                    String s1 = request.getParameter("uploadimage");
                                    String s2 = request.getParameter("heading");
                                    String s3 = request.getParameter("description");
                                    String s7 = request.getParameter("category");
                                    String s4 = request.getParameter("textfont");
                                    String s5 = request.getParameter("textsize");
                                    String s6 = request.getParameter("textcolor");
                                %>
                                <div class="modal-header">  
                                    <a class="close" data-dismiss="modal">×</a>  
                                    <h3>This is a Modal Heading</h3>  
                                </div>  
                                <div class="modal-body">  

                                    <div class="container">
                                        <table cellspacing="0" cellpadding="0">
                                            <tr><td><h1 style="color:#0033ff;"><%=s2%></h1></td></tr>
                                            <tr><td style="font-size:<%=s5%>px;color:<%=s6%>;font-family:<%=s4%>;"><%=s3%></td></tr>
                                        </table> 
                                        

                                    </div>     
                                </div>  
                                <div class="modal-footer"> 
                                    <%                                        
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
                                    %>
                                    
                                    <a href="updatepost.jsp" class="btn-primary">Update</a>
                                    <a href="#" class="btn" data-dismiss="modal">Close</a>  
                                </div>  
                            </div> 
                           
                            <input type="submit" name="submit"/>


                </table>
            </form>
                                    

        </div>
    </body>
</html>
