<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.sql.*,jakarta.servlet.*,jakarta.servlet.http.*,java.lang.*"  %>
<!DOCTYPE html>
<html>
<head> 
<title>FEES STRUCTURE</title>
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
button{
	width:10%;
	padding:14px 0;
	background:transparent;
	color:#fff;
	font-size:15px;
	border:1px solid #fff;
	border-radius:6px;
	margin-top:30px;
	cursor:pointer;
}

 
</style>
<body> 
<%!

String url="jdbc:mysql://localhost:3306/verification";
String password="Dayakar@2003";
String root="root";
String queryfees="select * from mess";
String bfitem1="";
String bfitem2="";
String bfitem3="";
String litem1="";
String litem2="";
String litem3="";
String lspl="";
String ditem1="";
String ditem2="";
String ditem3="";
String dspl="";
%>
<%
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection(url,root,password);
PreparedStatement ps=con.prepareStatement(queryfees);
ResultSet rs=ps.executeQuery();
rs.next();
bfitem1=rs.getString(1);
bfitem2=rs.getString(2);
bfitem3=rs.getString(3);
litem1=rs.getString(4);
litem2=rs.getString(5);
litem3=rs.getString(6);
lspl=rs.getString(7);
ditem1=rs.getString(8);
ditem2=rs.getString(9);
ditem3=rs.getString(10);
dspl=rs.getString(11);


}
catch (ClassNotFoundException e) 
{
	   e.printStackTrace();
}
catch(SQLException e1)
{
	e1.printStackTrace();
}
%>
<div class="container">
	<h2>MESS-DETAILS</h2>
	<div class="price-row">
		<div class="price-col">
			<h3>BREAK-FAST</h3>
			<ul>
				<li>item-1:<%out.println(bfitem1);%></li>
				<li> item-2:<%out.println(bfitem2);%></li>
				<li>item-3:<%out.println(bfitem3);%></li>
			</ul>
		</div>
		<div class="price-col">
			<h3>LUNCH</h3>
			<ul>
				<li>item-1:<%out.println(litem1);%></li>
				<li> item-2:<%out.println(litem2);%></li>
				<li>item-3:<%out.println(litem2);%></li>
				<li>spl-item:<%out.println(lspl);%></li>
			</ul>
		</div>
		<div class="price-col">
			<h3>DINNNER</h3>
			<ul>
				<li>item-1:<%out.println(ditem1);%></li>
				<li> item-2:<%out.println(ditem2);%></li>
				<li>item-3:<%out.println(ditem3);%></li>
				<li>spl-item:<%out.println(dspl);%></li>
			</ul>
		</div>
	</div>
	<p><a href="messchange.jsp" target="_blank"><button>change</button></a></p>
</div>
</body>
</html>