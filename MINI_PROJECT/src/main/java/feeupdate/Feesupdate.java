package feeupdate;

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
import java.sql.ResultSet;
import java.sql.SQLException;
@WebServlet("/abcd")
public class Feesupdate extends HttpServlet {
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			PrintWriter out=response.getWriter();
			String url="jdbc:mysql://localhost:3306/verification";
			String password="Dayakar@2003";
			String root="root";
			String query="update info set pending=? where student_id=?";
			String query1="select * from info where student_id=?";
			String ans="";
			try
			{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,root,password);
		    PreparedStatement ps=con.prepareStatement(query1);
		    ps.setString(1,request.getParameter("roll-no"));
		    ResultSet rs=ps.executeQuery();
		    if(!rs.next())
		    {
		    	out.println("student record not found");
		    }
		    else
		    {
		    	
		    	int total=Integer.parseInt(rs.getString(9));
		    	int ped=Integer.parseInt(request.getParameter("amount"));
		    	
		    	if(ped>=total)
		    	{
		    		ans="0";
		    	}
		    	else
		    	{
		    		ans=Integer.toString(total-ped);
		    		out.println(ans);
		    	}
		    	PreparedStatement ps1=con.prepareStatement(query);
			    ps1.setString(1,ans);
			    ps1.setString(2,request.getParameter("roll-no"));
			    int i=ps1.executeUpdate();
		    	if(i>0)
		    	{
		    		out.println(ans);
		    		out.println("done");
		    	}
		    	else
		    	{
		    		out.println("not done");
		    	}
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
