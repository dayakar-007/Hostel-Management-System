package cheaking;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
@WebServlet("/search")
public class Cheach extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		String url="jdbc:mysql://localhost:3306/verification";
		String password="Dayakar@2003";
		String root="root";
		String query="SELECT * FROM info WHERE  student_id=?";
		PrintWriter out=response.getWriter();
		
		
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,root,password);
	    PreparedStatement ps=con.prepareStatement(query);
	    ps.setString(1,request.getParameter("search2"));
	    ResultSet rs=ps.executeQuery();
	    if(!rs.next())
	    {
	    	session.setAttribute("cheack","");
	    	response.sendRedirect("pendingview.jsp");
	    }
	    else
	    {
	    	session.setAttribute("cheack","a");
	    	session.setAttribute("rollno",rs.getString(1) );
	    	session.setAttribute("name", rs.getString(2)+" "+rs.getString(3));
	    	session.setAttribute("phone", rs.getString(5));
	    	session.setAttribute("total", rs.getString(8));
	    	session.setAttribute("pending", rs.getString(9));
	    	response.sendRedirect("pendingview.jsp");
	    	
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
