<%@ include file="header.jsp"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
<link rel="stylesheet" href="bootstrap-5.2.2-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style>
.mySlides {
display:none;
}
</style>
</head>
<body>
<div style="max-width:1200px; margin-left:30px;">
  <img class="mySlides" src="images/p3.jpg" style="width:120%; height:70%;">
  <img class="mySlides" src="images/p7.jpg" style="width:120%; height:70%;">
  <img class="mySlides" src="images/p8.jpg" style="width:120%; height:70%;">
</div><br><br>
<button style=" height:50px; width:200px; background-color:orange; margin-left:700px; border-radius:5px;"><a href="complaint_register.jsp" style="text-decoration:none;color:black;"><b>Complient Register</b></a></button>
<br><br>
<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 3000); 
}
</script>
<%@ include file="footer1.jsp"%>
