<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%@ page import="java.sql.*"%>
<style>
     tr:nth-child(odd)
    {
        background:rgb(227, 246, 270);
    }
</style>
<br><br>
<table cellspacing="5" border="2" style="width:800px; border:3px solid lightblue; font-size: 15px;" align="center">
    
    <%

try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/police_complaint","root","");
    Statement st = con.createStatement();
    String fir_id=(String) session.getAttribute("fir_id");
    ResultSet rs = st.executeQuery("select * from fir where fir_id="+ fir_id);
   if(rs.next())
    {
    
    String district=rs.getString(2);
    String name=rs.getString(3);
    String gender=rs.getString(4);
    String dob=rs.getString(5);
    String address=rs.getString(6);
    String mobile=rs.getString(7);
    String email=rs.getString(8);
    String subject=rs.getString(9);
    String occurency_date=rs.getString(10);
    String occurency_place=rs.getString(11);
    String description=rs.getString(12);
    String files=rs.getString(13);
    String status=rs.getString(14);
    
    %>
    <tr><td>FIR_Id:</td><td><%=fir_id%></td></tr>
    <tr><td>District:</td><td><%=district%></td></tr>
    <tr><td>Name:</td><td><%=name%></td></tr>
    <tr><td>Gender:</td><td><%=gender%></td></tr>
    <tr><td>Date of Birth:</td><td><%=dob%></td></tr>
    <tr><td>Address:</td><td><%=address%></td></tr>
    <tr><td>Mobile:</td><td><%=mobile%></td></tr>
    <tr><td>Email_ID:</td><td><%=email%></td></tr>
    <tr><td>Subject:</td><td><%=subject%></td></tr>
    <tr><td>Occurency_date:</td><td><%=occurency_date%></td></tr>
    <tr><td>Occurency_place:</td><td><%=occurency_place%></td></tr>
    <tr><td>Description:</td><td><%=description%></td></tr>
    <tr><td>Files:</td><td><%=files%></td></tr>
    <tr><td>Status:</td><td><b><u>Viewed</u></b></td></tr>
    <% 
    }
con.close();
}
  catch(Exception ee)
        {
            out.println(ee.getMessage());
        }
        
%>
    
</table>
<br><br><br>
<h2 align="center">Complaint Status</h2>
<br>
<table cellspacing="5" border="2" style="width:800px; border:3px solid lightblue; font-size: 15px;" align="center">
    
    <%

try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/police_complaint","root","");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from report where fir_id="+ fir_id);
   if(rs.next())
    {
    
    String fir_id=rs.getString(1);
    String name=rs.getString(2);
    String post=rs.getString(3);
    String date=rs.getString(4);
    String place=rs.getString(5);
    String remarks=rs.getString(6);
    String status=rs.getString(7);
    %>
    <tr><td>Fir_Id:</td><td><%=fir_id%></td></tr>
    <tr><td>Officer Name:</td><td><%=name%></td></tr>
    <tr><td>Posting:</td><td><%=post%></td></tr>
    <tr><td>Action Date:</td><td><%=date%></td></tr>
    <tr><td>Station Place:</td><td><%=place%></td></tr>
    <tr><td>Remarks:</td><td><%=remarks%></td></tr>
    <tr><td>Complaint Status:</td><td><%=status%></td></tr>  
    
    <% 
    }
con.close();
}
  catch(Exception ee)
        {
            out.println(ee.getMessage());
        }
        
%>
    
</table>
<br><br><br>