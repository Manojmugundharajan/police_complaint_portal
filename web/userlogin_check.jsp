<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page  import="java.sql.*" %>
<% 
String fir_id,pwd;

fir_id= request.getParameter("t1");
pwd= request.getParameter("p1");


try
  {
  Class.forName("com.mysql.jdbc.Driver");
  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/police_complaint","root","");
  Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from fir where fir_id='" + fir_id + "' and dob='" + pwd + "'") ;
out.println("select * from fir where fir_id='" + fir_id + "' and dob='" + pwd + "'") ;
        if(rs.next())
            {
            session.setAttribute("fir_id",fir_id);
            response.sendRedirect("view_user_complaint.jsp");
            }
            else
            {
             
             out.println("<script>alert('Invalid Username or Password')</script>");
             out.println("<script>window.location=user_login.jsp</script>");
             //response.sendRedirect("user_login.jsp");
             }

        con.close();
   
        }
     catch(Exception ee)
     {
         out.println("<h1>Error : " + ee.getMessage() );
     }

%>