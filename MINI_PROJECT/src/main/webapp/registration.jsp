<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>student registation</title>
<style>
*{
     margin:o;
	 padding:0;
}
body{
	background-image:linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url(pexels-jean-van-der-meulen-1457842.jpg);
	background-size:cover;
	background-position:center;
}
div.main{
	width:400px;
	margin:100px auto 0px auto;

}
h2{
text-align:center;
padding:20px;
font-family:sans-serif; 
}
form#register{
	
	width:70%;
	heigth:130%;
	font-size:18px;
	border-radius:10px;
	border:2px solid #fff;
	border-shadow:2px 2px 15px rgba(0,0,0,0.3);
	color:#fff
}
#register{
	margin:40px;
	padding-left:90px;
	padding-bottom:15px;
	padding-top:10px;
	margin-right:300px;
}
label{
	font-family:sans-serif;
	font-size:18px;
}
input#name{
	width:200px;
	border:1px solid #ddd;
	border-radius:3px;
	outline:0;
	padding:7px;
	background-color:#fff;
	box-shadow:insert 1px 1px 5px rgba(0,0,0,0.3);
}
input#submit{
width:200px;
padding:7px;
font-size:16px;
font-family:sans-serif;
font-weigth:600;
border-radius:3px;
background-color:rgba(250,100,0,0.8);
color:#fff;
cursor:pointer;
border:1px solid rgba(255,255,255,0.3);
box-shadow:1px 1px 5px rgba(0,0,0,0.3);
bottom-margin:20px;
}
label,span,h2{
text-shadow:1px 1px 5px rgba(0,0,0,0.3);
}
#name{
padding-left:20px;
}

</style>
</head>
<body>
 <div class="main">
	<div class="register">
		<h2 style="color:#fff">REGISTATION</H2>
		<form id="register" method="get" action="registration" >
		<label>STUDENT-ID:</label>
		<br>
		<input type="text" name="roll-no" placeholder="20FE1A05B7" id="name" minlength="10" maxlength="10" required>
		<br><br>
		<label>FIRST-NAME:</label>
		<br>
		<input type="text" name="fname" placeholder="SUR NAME" id="name" required>
		<br><br>
		<label>LAST-NAME:</label>
		<br>
		<input type="text" name="lname" placeholder="NAME" id="name"  required>
		<br><br>
		<label>AADHAR-NUMBER:</label>
		<br>
		<input type="tel" name="aadhar" placeholder="1234-5678-9012" id="name"  pattern="[0-9]{4}[0-9]{4}[0-9]{4}"required>
		<br><br>
		<label>PHONE-NUMBER:</label>
		<br>
		<input type="tel" name="phone" placeholder="7013095501" id="name" pattern="[0-9]{3}[0-9]{3}[0-9]{4}" required>
		<br><br>
		<label>email:-</label>
		<br>
		<input type="email" name="email" placeholder="asdfgh@gmail " id="name" required>
		<br><br>
		<label>ROOM-NUMBER:-</label>
		<br>
		<input type="text" name="rnum" placeholder="NACF12" id="name" required>
		<br><br>
		<label>TOTAL FEES</label>
		<br>
		<input type="number" name="password@" placeholder="enter amount" id="name" required>
		<br><br>
		<label>PENDDING FEES</label>
		<br>
		<input type="number" name="pendding" placeholder="enter amount" id="name" required>
		<br><br>
		<input type="submit" value="submit" id="submit">
		 
		</form>
	</div>
 </div>
<body>
</html>