<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            body{background-color:gainsboro;}
           
        </style>
        <script>
            function highlight(){
                document.getElementById('image').style.height='300px';
                document.getElementById('image').style.width='300px';
            }
        </script>
    </head>
   
    
    <body background="images/background.jpg" style="background-repeat:no-repeat;text-align:center;">
            <div style="margin-top:154px;">
                <%
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
%>
       
       <table cellpadding="0" cellspacing="0" >
           <tr><td id="image"><h2 style="color:#0033ff;"></h2></td></tr>
           <tr><td id="image" style="font-size:20px;color:red;font-family:cursive;"></td></tr>
           <tr><td><input type="submit" value="highlight" onClick="highlight()"/></td></tr>
       </table>
           <%
            //}
       %>
            </div>
        
    </body>
</html>
