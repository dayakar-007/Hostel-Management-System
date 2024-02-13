package feedback;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;


@WebServlet("/review")
public class Feedback extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="jdbc:mysql://localhost:3306/verification";
		String password="Dayakar@2003";
		String root="root";
		String query=" insert into feedback values(?,?,?)";
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,root,password);
	    PreparedStatement ps=con.prepareStatement(query);
	    ps.setString(1,request.getParameter("fbname"));
	    ps.setString(2, request.getParameter("fbemail"));
	    ps.setString(3, request.getParameter("fbdata"));
	    ps.executeUpdate();
		}
		catch (ClassNotFoundException e) 
		{
			   e.printStackTrace();
		}
		catch(SQLException e1)
		{
			e1.printStackTrace();
		}
		PrintWriter out=response.getWriter();
		
		out.println("response submited");

	
}
}
