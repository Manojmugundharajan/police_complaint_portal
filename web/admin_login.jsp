<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
        <style>
            #dd1
            {
                margin-left:470px;
            }
        </style>
</head>
<body>
    
   <div style="width: 600px; height: 350px; background-color: rgb(227, 246, 270);" id="dd1">
       <br><br><h1 align="center" ><i>LOGIN </i></h1>
                <form id="f1" name="f1" action="adminlogin_check.jsp">
                    <table align="center" style="font-size: 25px;">
                        <tr><td>Login ID:</td><td><input type="text" name="tt1" id="tt1"></td></tr>
                        <tr><td>Password:</td><td><input type="password" name="pp1" id="pp1"></td></tr>
                    </table><br><br>
                    <div align="center"><input type="submit" name="s1" id="s1" value="Login" style="width:80px; height:40px; background-color:lightgreen; border-radius: 5px; border-color:lightgreen;">&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="reset" name="b1" id="b1" value="cancel" style="width:80px; height:40px; background-color:orange; border-radius:5px; border-color: orange;"></div>
                    
                    
                </form>       

	</div>
   
</body>
</html>
<%@ include file="footer1.jsp"%>
