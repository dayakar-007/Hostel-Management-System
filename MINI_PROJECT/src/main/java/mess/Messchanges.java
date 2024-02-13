package mess;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
@WebServlet("/messchan")
public class Messchanges extends HttpServlet {
    	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		String url="jdbc:mysql://localhost:3306/verification";
    		String password="Dayakar@2003";
    		String root="root";
    		String query="update mess set bfitem1=?,bfitem2=?,bfitem3=?,litem1=?,litem2=?,litem3=?,lspl=?,ditem1=?,ditem2=?,ditem3=?,dspl=?";
    		PrintWriter out=response.getWriter();
    		try
    		{
    		Class.forName("com.mysql.cj.jdbc.Driver");
    		Connection con=DriverManager.getConnection(url,root,password);
    	    PreparedStatement ps=con.prepareStatement(query);
    	    ps.setString(1,request.getParameter("bfitem1"));
    	    ps.setString(2,request.getParameter("bfitem2"));
    	    ps.setString(3,request.getParameter("bfitem3"));
    	    ps.setString(4,request.getParameter("litem1"));
    	    ps.setString(5,request.getParameter("litem2"));
    	    ps.setString(6,request.getParameter("litem3"));
    	    ps.setString(7,request.getParameter("lspl"));
    	    ps.setString(8,request.getParameter("ditem1"));
    	    ps.setString(9,request.getParameter("ditem2"));
    	    ps.setString(10,request.getParameter("ditem3"));
    	    ps.setString(11,request.getParameter("dspl"));
    	    
    	    int i=ps.executeUpdate();
    	    if(i>0)
    	    {
    	    	out.println("DATA updated");
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
