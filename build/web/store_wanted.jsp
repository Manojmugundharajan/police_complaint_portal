<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ page  import="java.sql.*" %>
<%
String name,age,gender,crime_type,photo;
name=request.getParameter("t1");
age=request.getParameter("t2");
gender=request.getParameter("t3");
crime_type=request.getParameter("t4");
photo=request.getParameter("t5");

try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/police_complaint","root","");
    PreparedStatement ps=con.prepareStatement("insert into wanted values (?,?,?,?,?,?)");
     int fid= (int) (Math.random()*1000);
    ps.setString(1,name);
    ps.setString(2,age);
    ps.setString(3,gender);
    ps.setString(4,crime_type);
    ps.setString(5,photo);
    ps.setInt(6,fid);
    ps.executeUpdate();
    session.setAttribute("wanted_id",fid+"");
    con.close();
    out.println("<script> alert('Successfully Stored') </script>");
     response.sendRedirect("wanted_upload.jsp");
}
catch(Exception ee)
{
    out.println("<h1>Error : " + ee.getMessage());
}


%>