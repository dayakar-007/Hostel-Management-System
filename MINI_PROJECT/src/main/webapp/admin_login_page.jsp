<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
margin:0px;
padding:0px;
font-family:montserrat;
background-color:#f2f2f2;
background-image:linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url(pexels-jean-van-der-meulen-1457842.jpg);
background-position:center;
background-size:cover;
height:100vh;
overflow:hidden;
}
h1{
size:100px;
}
.center{

position:absolute;
top:50%;
left:50%;
transform:translate(-50%,-50%);
width:400px;
border-radius:10px;
border-style:solid;
border-color:#fff;
}
.center h1{
text-align:center;
padding:0 0 20px 0;
border-bottom:1px solid #fff;
}
.center form{
padding:0 40px;
box-sizing:border-box;
}
form .txt_fied{
position:relative;
border-bottom:2px solid #fff;
margin:30px 0;
}
.txt_fied input{
width:100%;
padding:0 5px;
height:40px;
font-size:16px;
border:none;
background:none;
outline:none;
}
.txt_fied label{
position:absolute;
top:50%;
left:50%;
color:#fff;
transform:translate(-50%);
font-size:16px;
pointer-events:none;
}
.txt_fied span::before{
content:'';
position:absolute;
top:40px;
left:0;
width:100%;
height:2px;
background:#fff;
transition:.5s;
}
.txt_fied input:focus~label,
.txt_fied input:valid~label{
top:-5px;
color:#fffS;
}
.txt_fied input:focus~span::before,
.txt_fied input:valid~span::before
{
width:100%;
}
.pass{
margin:-5px 0 20px 5px;
color:#fff;
cursor:pointer;
}
.pass:hover{
text-decoration:underline;
}
input[type="submit"]{
width:100%;
height:40px;
margin-bottom:6px;
border:1px solid;
border-radius:25px;
font-size:18px;
font-weight:700;
cursor:pointer;
outline:none;
}
input[type="submit"]:hover{
transition:.5s;
}
</style>
</head>
<body>
<div class="center">
	<h1 style="color:#fff">ADMIN</h1>
	<form action="admin">
	<div class="txt_fied">
		<input type="text" name="adminid" required>
		<span></span>
		<label>ADMIN:ID</label>
	</div>
	<div class="txt_fied">
		<input type="password" name="adminpass"  required>
		<span></span>
		<label>password</label>
	</div>
	<div class="pass">Forgot Password?</div> 
	<input type="submit" value="login"> 
</form>
</div>
</body>
</html>