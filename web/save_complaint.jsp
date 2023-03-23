<%-- 
    Document   : save_complaint
    Created on : 09-Mar-2023, 3:20:54 pm
    Author     : Manoj
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ page  import="java.sql.*" %>
<%
  String district,name,gender,address,email,subject,occurency_place,description,files,dob,mobile,occurency_date;


district=request.getParameter("city");
name=request.getParameter("t1");
gender=request.getParameter("gender");
dob=request.getParameter("t2");
address=request.getParameter("t3");
mobile=request.getParameter("t4");
email=request.getParameter("t5");
subject=request.getParameter("subj");
occurency_date=request.getParameter("t6");
occurency_place=request.getParameter("t7");
description=request.getParameter("t8");
files=request.getParameter("upload");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/police_complaint","root","");
PreparedStatement ps= con.prepareStatement("insert into fir values(?,?,?,?,?,?,?,?,?,?,?)");
ps.setString(2,district);
ps.setString(3,name);
ps.setString(4,gender);
ps.setString(5,dob);
ps.setString(6,address);
ps.setString(7,mobile);
ps.setString(8,email);
ps.setString(9,subject);
ps.setString(10,occurency_date);
ps.setString(11,occurency_place);
ps.setString(12,description);
//ps.setString(12,files);
ps.executeUpdate();
con.close();
        out.println("<h1>Successfully Stored</h1>");
}
 catch(Exception ee)
     {
         out.println("<h1>Error : " + ee.getMessage() );
     }
%>