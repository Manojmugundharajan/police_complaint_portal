<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>



<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
			<link rel="stylesheet" href="bootstrap-5.2.2-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<style type="text/css">
	body
	{
		background-color: white;

	}
	td
	{
		padding-left: 20px;
	}
	#t1,#t2,#t3,#t4,#t5,#t6,#t7,#t8,select,#subj
	{
		width: 100%;
	}
</style>

<script type="text/javascript" src="jquery-3.4.1.js"></script>
<script type="text/javascript">

	function upload()
	{
		
		if(document.getElementById('r1').checked )
			up.style.visibility="visible";
		else
			if(document.getElementById('r2').checked)
			up.style.visibility="hidden";
	}

	function show_nos()
	{
		var a;
		a=parseInt(Math.random()*100000);
		captcha.innerHTML= "&ensp;" + a + "&ensp;";
		h1.value=a;
	}

	function check()
	{
		 var a=h1.value;
		 var b=t9.value;
		
		if(a==b)
				s1.style.visibility="visible";
		else
			s1.style.visibility="hidden";
		
		
	}

	

	

	function district()
	{
		var d=["Ariyalur","Chengalpattu","Chennai","Coimbatore","Cudddalore","Dharmapuri","Dindigul","Erode","Kallakurichi","Kanchepuram","Karur","Krishnagiri","Kaniyakumari","Madurai","Mayiladuthurai","Nagapatinam","Namakkal","Perambalur","Pudukottai","Ramanathapuram","Ranipet","Salem","Sivagangai","Tenkasi","Thanjavur","Theni","Thiruvallur","Thiruvarur","Thoothukudi","Thiruchirapalli","Thirunelveli","Tirupathur","Tiruppur","Tiruvannamalai","The Nilgris","Vellore","Villupuram","Virudhunagar"];
		city.options.length=38;
		
		for(i=0;i<d.length;i++)
		{
	
		city.options[i].text=d[i];
		}

		//city.inner;HTML=opt;
	}

	function subject()
	{
		var s=[ "PERSON MISSING ","VEHICLE MISSING / THEFT","CELL PHONE MISSING / THEFT ","BAG LIFTING / THEFT ","OTHER THEFT ","RECEIVING STOLEN PROPERTY ","AL DOCUMENT MISSING ","CHEATING / EMBEZZLEMENT / LAND GRABBING ","MAKING COUNTERFEIT NOTES / COINS ","MURDER ","KIDNAPPING / WRONGFUL CONFINEMENT ","Points | HURT ","You can DAMAGING PROPERTY ","WORDY QUERREL / THREATENING ","EXTORTION ","PUBLIC NUISANCE EVE TEASING ","OFFENCE RELATED TO MARRIAGE ","RAPE ","TRAFFIC VIOLATION ","OTHER OFFENCES ","GANJA SALES/ILLEGAL MINING/ ILLICIT DISTILLATION/ GAMBLING ETC "];
		

subj.options.length=s.length;
		
		for(i=0;i<s.length;i++)
		{	
		subj.options[i].text=s[i];
		}


	}




</script>
</head>

<body onload="district();subject();show_nos();">

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div style="height: 50px; width: 100%; background-color: lightblue; border: 1px solid black; border-radius: 30px;">
					<h1 align="center" style="margin-top: 8px;">COMPLAINT REGISTRATION FORM</h1>
					
				</div>
				<div class="row">
					<div class="col-md-4">
						<p style="font-size: 10px;"><b>Points to Remember</b><br>
							You can use this form to register your complaints.<br>
							<b>False complaints are subject to prosecution under IPC.</b><br>
							<b>Fields given in <i style="color:red;">Red Colour</i> are <i style="color: red;">Mandatory</i></b>.</p>
						
					</div>
					
				</div>

				<div class="row">
					<div class="col-md-12">
						<div style="height:700px; width: 100%; border: 5px solid lightblue; border-radius:30px;">
							<br>
						
							<form name="ff" id="ff" action="save_complaint.jsp">		
							
							<table border="2" style="width:800px; border:3px solid lightblue; font-size: 15px;" align="center">
							<tr style="background-color:rgb(227, 246, 270);"><td colspan="2"><h3> <i style="color:red">&emsp;&emsp;City/District<span style="color:red">*</span></i>:
							 	<select style="width:250px; font-size: 20px;" id="city" name="city">
								<option selected>Select the city </option>
								</select> </h3></td></tr>
							<tr><td colspan="2"><h3 align="center">Details of Complaint</h3></td></tr>

							<tr style="background-color:rgb(227, 246, 270);"><td>Name:</td><td><input type="text" name="t1" id="t1" placeholder="Complaint name"> </td></tr>

							<tr><td>Gender:</td><td> <select id="gender" name="gender"><option selected>select your gender</option><option>Male</option><option>Female</option><option>Transgender</option> </select> </td></tr>

							<tr style="background-color:rgb(227, 246, 270);"><td>Date of Birth:</td><td> <input type="text" name="t2" id="t2"></td></tr>

							<tr><td>Address:</td><td> <textarea name="t3" id="t3" placeholder="Address"></textarea> </td></tr>

							<tr style="background-color:rgb(227, 246, 270);"><td>Mobile No.</td><td> <input type="text" name="t4" id="t4" placeholder="Mobile No."> </td></tr>

							<tr><td>Email ID:</td><td> <input type="text" name="t5" id="t5" placeholder="email id"> </td></tr>

							<tr style="background-color:rgb(227, 246, 270);"><td>Subject<span style="color:red;">*</span>:</td><td> <select id="subj" name="subj" style="width:250px; font-size: 20px;"><option selected>select your subject</option><option style="font-size:15px;"></option></select></td></tr>

							<tr><td>Date of Occurency:</td><td> <input type="text" name="t6" id="t6"> </td></tr>

							<tr style="background-color:rgb(227, 246, 270);"><td>Place of Occurency:</td><td> <textarea name="t7" id="t7" placeholder="Place of Occurency (Max. 200 Characters allowed)"></textarea></td></tr>

							<tr><td>Description:</td><td> <textarea name="t8" id="t8" placeholder="Complaint Description (Max. 2000 Characters allowed)" ></textarea> </td></tr>
								
							<tr style="background-color:rgb(227, 246, 270);"><td colspan="2"><br>
								<span style="margin-left: 100px;" > Want to attach documents[Max.500KB(PDF,PNG,JPEG) files allowed] &emsp;&emsp;&emsp;&emsp; <input type="radio" name="r1" id="r1" onclick="upload()">Yes &emsp; <input type="radio" name="r1" id="r2" onclick="upload()">No </span><br>

								<span id="up" style="margin-left: 250px;visibility: hidden;">File Upload: &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="button" name="b1" id="b1" value="Upload!"><br></span><br>

								 <span style="margin-left:150px;">Security Code<span style="color:red">*</span><span id="captcha" style="background-color:yellow; width: 150px; height: 20px; border:1px solid black;">&ensp;</span>&emsp;&emsp;<input type="text" name="t9" id="t9" placeholder="enter captcha" onkeyup="check()">&emsp;&emsp;</span>
<input type="hidden" name="h1" id="h1">
								 <br>
								 <br><br>

								 <input type="submit" name="s1" id="s1" value="Register" style="margin-left: 300px;background-color: orange; border-radius:5px; visibility: hidden;">&emsp;&emsp;<input type="reset" name="r1" id="r1" value="clear" style="background-color: orange; border-radius: 5px;"></td></tr>

						</table><br>
						</form>

						
							



						</div>
						
					</div>
					
				</div>				
			</div>
			
		</div>
		
	</div><br><br>



<br><br>
</body>
</html>