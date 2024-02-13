package remove;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
@WebServlet("/remove")
public class Remove extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="jdbc:mysql://localhost:3306/verification";
		String password="Dayakar@2003";
		String root="root";
		String query="DELETE FROM info WHERE student_id=?";
		String query1="select * from info where student_id=?";
		PrintWriter out=response.getWriter();
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,root,password);
	    PreparedStatement ps=con.prepareStatement(query1);
	    ps.setString(1,request.getParameter("delete"));
	    ResultSet rs=ps.executeQuery();
	    if(!rs.next())
	    {
	    	out.println("student record not found");
	    }
	    else
	    {
	    	PreparedStatement ps1=con.prepareStatement(query);
		    ps1.setString(1,request.getParameter("delete"));
		    ps1.executeUpdate();
	    	out.println("student record removed");
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

		
			}

	
}
