package UPDATE;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;
@WebServlet("/change")
public class update extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="jdbc:mysql://localhost:3306/verification";
		String password="Dayakar@2003";
		String root="root";
		String query="update fees_structure set nonacfees=?,lundry=?,acfees=?,extra=? ";
		PrintWriter out=response.getWriter();
		
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,root,password);
	    PreparedStatement ps=con.prepareStatement(query);
	    ps.setString(1,request.getParameter("nonac"));
	    ps.setString(2,request.getParameter("lun"));
	    ps.setString(3,request.getParameter("ac"));
	    ps.setString(4,request.getParameter("extra"));
	    int i=ps.executeUpdate();
	    if(i>0)
	    {
	    	out.println("data not submited");
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
		catch (IllegalArgumentException e2)
		{
			e2.printStackTrace();
		}
		
		}

	

}
