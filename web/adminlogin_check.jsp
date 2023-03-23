<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page  import="java.sql.*" %>
<% 
String username,pwd1;

username= request.getParameter("tt1");
pwd1= request.getParameter("pp1");


try
  {
  Class.forName("com.mysql.jdbc.Driver");
  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/police_complaint","root","");
  Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from admin_login where uname='" + username + "' and pwd='" + pwd1 + "'") ;
        if(rs.next())
            {
            response.sendRedirect("view_complaint.jsp");
            }
            else
            {
             //alert("Invalid Username or Password");
                response.sendRedirect("admin_login.jsp");
                }

        con.close();
   
        }
     catch(Exception ee)
     {
         out.println("<h1>Error : " + ee.getMessage() );
     }

%>