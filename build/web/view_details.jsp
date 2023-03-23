<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ include file="admin_header.jsp"%>
<%@ page import="java.sql.*"%>
<style>
     tr:nth-child(odd)
    {
        background:rgb(227, 246, 270);
    }
</style>
<br><br>
<h2 align="center">Complaint Details</h2>
<table cellspacing="5" cellspadding="30px" border="2" width="60%" height="80%" border="5px" align="center">
    
    <%
String fir=request.getParameter("fir");
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/police_complaint","root","");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from fir where fir_id="+fir );
   if(rs.next())
    {
    int fir_id=rs.getInt(1);
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
<br><br>
<br>
<h2 align="center"> Complaint Report</h2>
<form name="ff" method="post" action="admin_replay.jsp">
<table cellspacing="5" cellspadding="30px" border="2" width="60%" height="40%" border="5px" align="center">
    <tr><td>Fir_ID:</td><td><input type="text" id="t1" name="t1"></td></tr>
    <tr><td>Officer Name:</td><td><input type="text" name="t2" id="t2"></td></tr>
    <tr><td>Posting:</td><td><select id="posting" name="posting"><option>Sub-Inspector</option><option>Inspector</option><option>Assistant-commissioner</option><option>Deputy-Commissioner</option><option>Assistant-Superdant of police</option><option>Deputy Superdant of Police</option><option>Superdant of Police</option></select></td></tr>
    <tr><td>Action Date:</td><td><input type="date" name="t3" id="t3"></td></tr>
    <tr><td>Station Place:</td><td><input type="text" name="t4" id="t4"></td></tr>
    <tr><td>Remarks:</td><td><textarea id="t5" name="t5"></textarea></td></tr>
    <tr><td>Status:</td><td><select id="status" name="status"><option>pending...</option><option>process going..</option><option>completed</option></select> &ensp; <input type="submit" name="s1" id="s1" value="Submit" style="margin-right:100px; background-color:lightgreen;"></td></</tr>   
</table><br>
   
</form><br><br><br>
<%@ include file="footer1.jsp"%>