<%@ include file="header.jsp"%>
<%@ page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        
    </head>
    <body>
        
        
        
       
        <br><br>
        <h1 align="center"><b><i>Missing Person's Details</i></b></h1>
        <br>
       
        
                <marquee behavior="alternate">
        <%
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/police_complaint","root","");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select*from missing");
        while(rs.next())
        {
        String date=rs.getString(1);
        String name=rs.getString(2);
        String age=rs.getString(3);
        String gender=rs.getString(4);
        String identification=rs.getString(5);
        String location=rs.getString(6);
        String photo=rs.getString(7);
        %>        
    
         
        
             <div style="display:inline-block;width:230px;float:left; border:2px rigid black; margin-left:15px;background-color:lightyellow;">
                 <img src="images/missing1.jpg" height="200" width="200" style="display:inline;float:left; margin-left:14px;"><br>
            <span style="float:left;font-size:20px;">
                <table><br>
                <tr><td><b>Missing Date:</b></td><td><%=date%></td></tr>
                <tr><td><b>Name:</b></td><td><%=name%></td></tr>
                <tr><td><b>Age:</b></td><td><%=age%></td></tr>
                <tr><td><b>Gender:</b></td><td><%=gender%></td></tr>
                <tr><td><b>Identification:</b></td><td><%=identification%></td></tr>
                <tr><td><b>Missing Location:</b></td><td><%=location%></td></tr>
            </table>
            </span>
             </div>
          
                         
        
     <%
        }
        con.close();
        }
      catch(Exception ee)
        {
            out.println(ee.getMessage());
        }

     %>



                </marquee><br><br><br>
        

       <%@ include file="footer1.jsp"%>
    </body>
</html>
