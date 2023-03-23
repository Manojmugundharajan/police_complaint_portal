<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ page  import="java.sql.*" %>
<%
String date,name,age,gender,identification,location,photo;
date=request.getParameter("t1");
name=request.getParameter("t2");
age=request.getParameter("t3");
gender=request.getParameter("t4");
identification=request.getParameter("t5");
location=request.getParameter("t6");
photo=request.getParameter("t7");

try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/police_complaint","root","");
    PreparedStatement ps=con.prepareStatement("insert into missing values (?,?,?,?,?,?,?)");
    int fid= (int) (Math.random()*1000);
    
    ps.setString(1,date);
    ps.setString(2,name);
    ps.setString(3,age);
    ps.setString(4,gender);
    ps.setString(5,identification);
    ps.setString(6,location);
    ps.setInt(7,fid);
    ps.executeUpdate();
    session.setAttribute("missing_id",fid+"");
    con.close();
    out.println("<script> alert('Successfully Stored') </script>");
    response.sendRedirect("missing_upload.jsp");
    //response.sendRedirect("view_complaint.jsp");
}
catch(Exception ee)
{
    out.println("<h1>Error : " + ee.getMessage());
}


%>