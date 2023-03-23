<%-- 
    Document   : update_missing
    Created on : 13-Mar-2023, 5:57:18 pm
    Author     : Manoj
--%>
<%@ include file="admin_header.jsp"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <style>
     tr:nth-child(odd)
    {
        background:rgb(227, 246, 270);
    }
</style>
    </head>
    <body>
        <h2 align="center"> Update Wanted Details</h2>
        <br>
          <form name="ff" method="post" action="store_wanted.jsp">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div style="float:right; height:200px;width:200px;background-color:lightblue;"></div>
                </div>
                <div class="col-md-9">
        <table cellspacing="5" cellspadding="30px" border="2" width="100%" height="300px" border="5px" align="center">
           
            <tr><td>Name:</td><td><input type="text" name="t1" id="t1"></td></tr>
            <tr><td>Age:</td><td><input type="text" name="t2" id="t2"></td></tr>
            <tr><td>Gender:</td><td><select name="t3" id="t3"><option>Male</option><option>Female</option><option>Transgender</option> </select></td></tr>
            <tr><td>Type of Crime:</td><td><textarea name="t4" id="t4"></textarea></td></tr>
       
        </table><br>
        
        <input type="submit" name="s1" id="s1" value="Submit" style="height:40px; width:80px; background-color:lightgreen; border-radius:5px; margin-left:350px;"><br><br>
               <br><br> </div>
                
            </div>
        </div>
          </form>
        <br>
        <%@ include file="footer1.jsp"%>
            </body>
</html>
