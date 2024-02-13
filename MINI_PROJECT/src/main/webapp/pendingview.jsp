<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
if(session.getAttribute("cheack")=="")
{
%>
	<h1><%out.println("student data not found");%></h1>
<%
}
else
{
%>
	<h1><%out.println("STDENT ID   :-"+session.getAttribute("rollno"));%></h1>
	<h1><%out.println("NAME        :-"+session.getAttribute("name"));%></h1>
	<h1><%out.println("PHONE NUMBER:-"+session.getAttribute("phone"));%></h1>
	<h1><%out.println("TOTAL FEES  :-"+session.getAttribute("total"));%></h1>
	<h1><%out.println("PENDING FEES:-"+session.getAttribute("pending"));%></h1>
<%	
}
%>

</body>
</html>