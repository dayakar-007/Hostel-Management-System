package login_DAO;
import java.sql.*;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
public class Login_dao extends HttpServlet {
	String url="jdbc:mysql://localhost:3306/verification";
	String password="Dayakar@2003";
	String root="root";
	String query="select * from login where user=? and pass=?";
	String queryfees="select * from fees_structure";
	public boolean cheak(String user1,String pass1)
	{
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,root,password);
	    PreparedStatement ps=con.prepareStatement(query);
	    ps.setString(1,user1);
	    ps.setString(2, pass1);
	    ResultSet rs=ps.executeQuery();
	    if(rs!=null) {
	    	return true;
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
	    return false;
		
	}
	
}

