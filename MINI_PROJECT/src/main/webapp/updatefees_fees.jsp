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
		<h2 style="color:#fff">UPDATE FEES</H2>
		<form id="register" method="get" action="abcd">
		<label>STUDENT-ID:</label>
		<br>
		<input type="text" name="roll-no" placeholder="20FE1A05B7" id="name">
		<br><br>
		<label>AMOUNNT:</label>
		<br>
		<input type="text" name="amount" placeholder="" id="name">
		<br><br>
		
		<input type="submit" value="submit" id="submit">
		 
		</form>
	</div>
 </div>
<body>
</html>