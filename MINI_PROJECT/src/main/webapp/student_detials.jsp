<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.io.*,java.sql.*,jakarta.servlet.*,jakarta.servlet.http.*,java.lang.*"  %>
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
color:#fff;
text-align:center;
padding:20px;
font-family:sans-serif; 
}
table, th, td {
  border: 1px solid white;
  color:white;
  text-align: left;
}
th, td {
  padding: 15px;
}
.opp{
padding-left:200px;
}
.btn-group button {
   
  
  color: black; 
  padding: 10px 24px;
  cursor: pointer;
  float: left;
  
}

</style>
</head>
<body>
<h1>STUDENTS DETAILS</h1>
<div class="opp">
<table style="width:80%">
	<tr>
		<th>ROll NUMBER  </th>
		<th>NAME&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
		<th>PHONE NUMBER</th>
		<th>AADHAR NUMBER</th>
		<th>ROOM NO</th>
		<th>PENDDING FEES</th>
		<th>TOTAL FEES   </th>
	</tr>
	<%
	String url="jdbc:mysql://localhost:3306/verification";
	String password="Dayakar@2003";
	String root="root";
	String query="select * from info";
	try
	{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,root,password);
    PreparedStatement ps=con.prepareStatement(query);
    ResultSet rs=ps.executeQuery();
    while(rs.next())
    {
	%>
	<tr>
	<td><%out.println(rs.getString(1));%></td>
	<td><%out.println(rs.getString(3));%></td>
	<td><%out.println(rs.getString(5));%></td>
	<td><%out.println(rs.getString(4));%></td>
	<td><%out.println(rs.getString(7));%></td>
	<td><%out.println(rs.getString(9));%></td>
	<td><%out.println(rs.getString(8));%></td>
	</tr>
	<%
	}
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
</table>
<br>
<br>
<br>
<div class="btn-group" style="width:110%">
  <a href="remove.jsp" target="_blank"><button style="width:24%">REMOVE</button></a>
  <a href="updatefees_fees.jsp"><button style="width:24%">UPDATE FEES</button></a>
  <a href="pending_details.jsp"><button style="width:24%">STATUS CHECKING</button></a>
 
</div>
</div>
</body>	
</html>