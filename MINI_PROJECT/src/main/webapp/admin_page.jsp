<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>public home page</title>
<style>
*{
	margin:0;
	padding:0;
	font-family:sans-serif;
}
.banner{

	width:100%;
	height:100vh;
	background-image:linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url(pexels-jean-van-der-meulen-1457842.jpg);
	background-size:cover;
	background-position:center;
}
.narbar{
	width:85%;
	padding:35px 0;
	margin:auto;
	display:flex;
	align-items:center;
	justify-content:space-between;

}
.logo{
width:120px;
cursor:pointer;
}
.narbar ul li{
	list-style:none;
	display:inline-block;
	margin:0 20px;
	position:relative;
}
.narbar ul li a{
	text-decoration:none;
	color:#fff;
	text-transform:uppercase;
}
.narbar ul li::after{
	content:' ';
	height:3px;
	width:100%;
	background:#009688;
	position:absolute:
	left: 0;
	button:-10px;
	transition:0.5s;
 
}
.narbar ul li:hover::after{
width:100%; 
}
.content
{
	width:100%;
	position:absolute;
	top:50%;
	transfrom:translateY(-50%);
	text-align:center;
	color:#fff;
}
</style>
</head>
<body>
<div class="banner">
	<div class="narbar">
	<h1 style="color:#fff">ICUMBI</h1>
	<ul>
	    <li><a href="feedbackview.jsp">QUERIES</a></li>
		<li><a href="registration.jsp">ROOM-ALLOTMENT</a></li>
		<li><a href="student_detials.jsp">STUDENT DETIALS</a></li>
		<li><a href="admin_fees.jsp">HOSTEL-FEES</a></li>
		<li><a href="mess.jsp">MENU-details</a></li>
		<li><a href="welcome.jsp">LOG OUT</a></li>
	</ul>
	</div>
	<div class="content">
	<h1>HOSTEL MANAGEMENT SYSTEM</h1>
	</div>
</div>
</body>
</html>
    