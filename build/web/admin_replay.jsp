<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page  import="java.sql.*" %>
<% 
String fir_id, date;
String name, post, place, remarks, status;

fir_id=request.getParameter("t1");
name= request.getParameter("t2");
post= request.getParameter("posting");
date=request.getParameter("t3");
place= request.getParameter("t4");
remarks= request.getParameter("t5");
status= request.getParameter("status");

try
  {
  Class.forName("com.mysql.jdbc.Driver");
  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/police_complaint","root","");
  PreparedStatement ps= con.prepareStatement("insert into report values(?,?,?,?,?,?,?)");
  ps.setString(1,fir_id);
  ps.setString(2,name);
  ps.setString(3,post);
  ps.setString(4,date);
  ps.setString(5,place);
  ps.setString(6,remarks);
  ps.setString(7,status);
  ps.executeUpdate();
  con.close();
  out.println("<script> alert('Successfully Stored') </script>");
  response.sendRedirect("view_complaint.jsp");
  
}
  catch(Exception ee)
     {
         out.println("<h1>Error : " + ee.getMessage() );
     }

%>