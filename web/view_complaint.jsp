<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ include file="admin_header.jsp"%>
<%@ page import="java.sql.*"%>
<style>
    tr:nth-child(odd)
    {
        background:rgb(227, 246, 270);
    }
    th,td
    {
        font-size:25px;
        
    }
</style>
<table border="2" style="width:1000px; border:3px solid lightblue; font-size: 15px;" align="center">
    <h1 align="center">View Complaint</h1>
    <tr><th>FIR_No.</th><th>District</th><th>Name</th><th>Date</th><th>Subject</th><th>&nbsp;</th></tr>

<%
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/police_complaint","root","");
    Statement st = con.createStatement();
       ResultSet rs = st.executeQuery("SELECT * FROM fir");
    while(rs.next())
    {
    int fir_id = rs.getInt(1);
    String district=rs.getString(2);
    String name=rs.getString(3);
    String occurency_date=rs.getString(10);
    String subject=rs.getString(9);
    %>
    
<tr><td><%=fir_id%></td><td><%=district%></td><td><%=name%></td><td><%=occurency_date%></td><td style="font-family:latha"><%=subject%></td><td><a href="view_details.jsp?fir=<%=fir_id%>">View</a></td><td></td></tr>


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
