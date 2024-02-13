<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.io.*,java.sql.*,jakarta.servlet.*,jakarta.servlet.http.*,java.lang.*" %>
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
    font-size:44px;
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

</style>
<body> 
<%!
String url="jdbc:mysql://localhost:3306/verification";
String password="Dayakar@2003";
String root="root";
String queryfees="select * from fees_structure";
String nonfee="";
String lan="";
String acfees="";
String etra="";
int total1=0;
int total2=0;
%>
<%
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection(url,root,password);
PreparedStatement ps=con.prepareStatement(queryfees);
ResultSet rs=ps.executeQuery();
rs.next();
nonfee=rs.getString(1);
lan=rs.getString(2);
acfees=rs.getString(3);
etra=rs.getString(4);
total1=Integer.parseInt(nonfee)+Integer.parseInt(lan);
total2=Integer.parseInt(acfees)+Integer.parseInt(lan);

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
	<h2>HOSTEL FEES STRUCTURE</h2>
	<div class="price-row">
		<div class="price-col">
			<h3>NON-AC <span>ROOMS</span></h3>
			<ul>
				<li>HOSTEL FEES:<%out.println(nonfee);%></li>
				<li> LUNDRY FEES:<%out.println(lan);%></li>
				<li>TOTAL FEES:<%out.println(total1);%></li>
			</ul>
		</div>
		<div class="price-col">
			<h3>AC <span>ROOMS</span></h3>
			<ul>
				<li>HOSTEL FEES:<%out.println(acfees);%></li>
				<li> LUNDRY FEES:<%out.println(lan);%></li>
				<li>TOTAL FEES:<%out.println(total2);%></li>
				<li>EXTRA FEES:<%out.println(etra);%></li>
			</ul>
		</div>
	</div>
</div>
</body>
</html>