package Registration;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
@WebServlet("/registration")
public class registration_control extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String student_id=request.getParameter("roll-no");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String aadhar=request.getParameter("aadhar");
	    String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String room=request.getParameter("rnum");
		String password1=request.getParameter("password@");
		String pending=request.getParameter("pendding");
		String url="jdbc:mysql://localhost:3306/verification";
		String password="Dayakar@2003";
		String root="root";
		String query="insert info values(?,?,?,?,?,?,?,?,?)";
		String query1="insert login values(?,?)";
			try
			{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,root,password);
		    PreparedStatement ps=con.prepareStatement(query);
		    ps.setString(1, student_id);
		    ps.setString(2, fname);
		    ps.setString(3, lname);
		    ps.setString(4, aadhar);
		    ps.setString(5, phone);
		    ps.setString(6, email);
		    ps.setString(7, room);
		    ps.setString(8, password1);
		    ps.setString(9, pending);
		    int i=ps.executeUpdate();
		    PreparedStatement pst=con.prepareStatement(query1);
		    pst.setString(1,student_id);
		    pst.setString(2, password);
		    int j=pst.executeUpdate();
		    if(i>0 && j>0)
		    {
		    	response.sendRedirect("submited.jsp");
		    }
		    
			}
			catch (ClassNotFoundException e) 
			{
				   e.printStackTrace();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
	}

	
}
