<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head> 
<title>MESSCHANFGES</title>
</head>
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
.container{
	width:100%;
	min-heigth:100;
	

}
.container h2 {
	color:#fff;
	font-size:32px;
	padding:50px 0;
	text-align:center;
}
.price-row{
	width:90%;
	max-width:1100px;
	margin:auto;
	display:grid;
	grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
	grid-gap:25px;
}
.price-col{	
	color:#fff;
	padding:10% 15%;
	border-radius:10px;
	text-align:center;
	border-style:solid;
	border-color:#fff;

}
.price-col p{	
	font-size:22px;
}
.price-col h3{
    font-size:30px;
	margin:20px 0 40px;
	font-weight:500;
	
}
.price-col h3 span{
	font-size:16px;

}
.price-col ul{
	text-align:left;
	margin:20px 0;
	color:#ddd;
	list-style:none;
}
.price-col ul li{
	margin:15px 0;
}
.price-col ul li:before{
	content:'\2022';
	color:#33058;
	font-weight:bold;
	margin-right:8px;
}
p{
text-align:center;
margin-left:auto;
margin-right:auto;
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
margin-left:680px;
margin-right:auto;
margin-bottom:20px;
}

 
</style>
<body> 
<form action="messchan">
<div class="container">
	<h2>UPDATES</h2>
	<div class="price-row">
		<div class="price-col">
			<h3>BREAK-FAST</h3>
			<ul>
				<li>item-1:<input type="text" name="bfitem1"></li>
				<li> item-2:<input type="text" name="bfitem2"></li>
				<li>item-3:<input type="text" name="bfitem3"></li>
			</ul>
		</div>
		<div class="price-col">
			<h3>LUNCH</h3>
			<ul>
				<li>item-1:<input type="text" name="litem1"></li>
				<li> item-2:<input type="text" name="litem2"></li>
				<li>item-3:<input type="text" name="litem3"></li>
				<li>spl-item:<input type="text" name="lspl"></li>
			</ul>
		</div>
		<div class="price-col">
			<h3>DINNNER</h3>
			<ul>
				<li>item-1:<input type="text" name="ditem1"></li>
				<li> item-2:<input type="text" name="ditem2"></li>
				<li>item-3:<input type="text" name="ditem3"></li>
				<li>spl-item:<input type="text" name="dspl"></li>
			</ul>
		</div>
	</div>
	<br>
	<br>
	<input type="submit" value="UPDATE" id="submit">
</div>
</form>
</body>
</html>