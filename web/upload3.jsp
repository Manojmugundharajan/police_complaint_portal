<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="header.jsp"%>
<%
try
{
String contentType = request.getContentType();
out.println(contentType.indexOf("multipart/form-data")) ;
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) 
{
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while (totalBytesRead < formDataLength) 
{
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
/*response.setContentType("text/txt");
out.println(file);*/

String saveFile = file.substring(file.indexOf("filename=\"") + 10);
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
saveFile=(String)session.getAttribute("wanted_id");
saveFile=boundary;
out.println(saveFile);
FileOutputStream fileOut = new FileOutputStream(application.getRealPath("") + "\\wanted\\"+ saveFile);
String ss= new String (dataBytes);
//out.println(saveFile +"<br>");
//out.println(ss);
fileOut.write(dataBytes, startPos, (endPos - startPos));

fileOut.flush();
fileOut.close();

session.setAttribute("filename",saveFile);

//response.sendRedirect("move_to_server.jsp");
out.println("<img src='wanted/"+saveFile+"' height=300 width=300>");
out.println("successfully uploaded");

}
       
        }
        catch(Exception e)
        {
session.setAttribute("filename",e+"");
//response.sendRedirect("index.html");

}
        
%>
