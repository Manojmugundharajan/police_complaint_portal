<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
       <link rel="stylesheet" href="bootstrap-5.2.2-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            header
            {
            background-image:url("images/ban.jpg");
            }
            #d2
            {
            float:right;
            margin-right:600px;
            margin-top:70px;
            text-shadow:2px 2px white;
            }
            #d1
            {
            width:100%;
            height:60px;
            background-color:darkblue;
            }
            .menu
            {
            text-decoration:none;
            color:white;
            font-size:25px;
           
            }
            
            
        </style>
    </head>
    <body>
        <header>
            <img src="images/p4.jpg" style="height:200px; width:200px;">
            <h1 id="d2"><b>Tamil Nadu Police</b></h1>
            <img src="images/p5.png" style="height:200px; width:300px; margin-left:1150px; margin-top:-200px;">
        </header>
        <div id="d1"><br>
        


          <a href="update_missing.jsp" class="menu" style="margin-left:50px;">Update Missing</a>
          <a href="update_wanted.jsp" class="menu" style="margin-left:50px;">Update Wanted</a>
            <a href="missing.jsp" class="menu" style="margin-left:50px;">Missing</a>
            <a href="wanted.jsp" class="menu" style="margin-left:50px;">Wanted</a>
            <a href="about.jsp" class="menu" style="margin-left:50px;">About us</a>
              <a href="contact.jsp" class="menu" style="margin-left:50px;">Contact us</a>
             <a href="index.jsp" class="menu" style="margin-left:50px;">Logout</a>
            
        </div>
        
    
    
   
    
    </body>
</html>
