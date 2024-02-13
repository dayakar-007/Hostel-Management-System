<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.sql.*,jakarta.servlet.*,jakarta.servlet.http.*,java.lang.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String url="jdbc:mysql://localhost:3306/verification";
	String password="Dayakar@2003";
	String root="root";
	String query="delete from feedback";
	try
	{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,root,password);
    PreparedStatement ps=con.prepareStatement(query);
    ps.executeUpdate();
    {%>
    <h2><%out.println("ALL QUERIES ARE DELETED");%></h2>
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
        
</body>
</html>