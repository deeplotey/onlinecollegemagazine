<%-- 
    Document   : formAction
    Created on : Apr 4, 2013, 11:04:47 AM
    Author     : sony
--%>
<%@page import="java.util.List"%>
<%@  page language="java" session="true"  import="java.io.*,java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <TITLE>form action</TITLE>
        <link href="style_login.css" type="text/css" rel="stylesheet">
        <script src="ajax_code.js"></script>
        </HEAD>
        <BODY>
           <%
            String saveFile="";
            String contentType = request.getContentType();
            if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
            DataInputStream in = new DataInputStream(request.getInputStream());
            int formDataLength = request.getContentLength();
            byte dataBytes[] = new byte[formDataLength];
            int byteRead = 0;
            int totalBytesRead = 0;
            while (totalBytesRead < formDataLength) {
            byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
            totalBytesRead += byteRead;
            }
            String file = new String(dataBytes);
            saveFile = file.substring(file.indexOf("filename=\"") + 10);
            saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
            saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
            int lastIndex = contentType.lastIndexOf("=");
            String boundary = contentType.substring(lastIndex + 1,contentType.length());
            int pos;
            pos = file.indexOf("filename=\"");
            pos = file.indexOf("\n", pos) + 1;
            pos = file.indexOf("\n", pos) + 1;
            pos = file.indexOf("\n", pos) + 1;
            int boundaryLocation = file.indexOf(boundary, pos) - 4;
            int startPos = ((file.substring(0, pos)).getBytes()).length;
            int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
            saveFile="uploads/"+saveFile;
            File ff = new File(saveFile);
            FileOutputStream fileOut = new FileOutputStream(ff);
            fileOut.write(dataBytes, startPos, (endPos - startPos));
            fileOut.flush();
            fileOut.close();
            
            %><Br><table border="2"><tr><td><b>You have successfully upload the file</b>
                    </td></tr>
                <form action="formAction.jsp">
                 <tr><td>Enter The Batch Id for which this assignment is:<b></td><td><input type="text" name="batchid" id="batchid" required/>
                         <input type="text" name="saveFile" value="<%=saveFile%>" required/>
                 </td></tr>
                 <tr><td><input type="submit" name="batch_done" value="Done" />
            </td></tr></form>
    
            </table><h1>
                <%
            }out.print("kl");
            if(request.getParameter("batch_done")!=null)
            {out.print("jkkl");
            try 
            {  Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/navu","root","root");
                String b_id=request.getParameter("batchid");
                String save_File=request.getParameter("saveFile");
               // out.print("jk"+b_id);
                con.createStatement().executeUpdate("insert into cv1(resume_path,emp_id) values('"+save_File+"','"+b_id+"')");
              }
            catch(Exception e){out.print(e);}
            }
           out.print("done");
            %></h1>
     </BODY>
</html>
