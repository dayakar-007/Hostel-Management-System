<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.sql.*,jakarta.servlet.*,jakarta.servlet.http.*,java.lang.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.info{
	border-style:solid;
	}
</style>
</head>
<body>
<div class="daya">
<%
	String url="jdbc:mysql://localhost:3306/verification";
	String password="Dayakar@2003";
	String root="root";
	String query="select * from feedback";
	try
	{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,root,password);
    PreparedStatement ps=con.prepareStatement(query);
    ResultSet rs=ps.executeQuery();
    if(!rs.next())
    {%>
    <h2><%out.println("NO ISSUES from users");%></h2>
    
    <% 
    }
    else
    {
    while(rs.next())
    {
	%>    <div class="info">
	     <h3>Name:<%out.println(rs.getString(1));%></h3>
	     <h2>Email:<%out.println(rs.getString(2));%></h2>
	     <p>issue: <%out.println(rs.getString(3)); %></p>
	     </div>
	     <br>
	<%
	}
    %>
    <a href="deletequeries.jsp"><button>REMOVE </button></a>
    
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
</div>
      
</body>
</html>