package user_cotrol;

import jakarta.servlet.ServletException;
import java.io.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import login_DAO.Login_dao;
import java.io.IOException;

@WebServlet("/usercontrol")

public class User_controller extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String user=request.getParameter("user");
		String pass=request.getParameter("pass");
		Login_dao log=new Login_dao();
		if(log.cheak(user,pass))
		{
			out.println("user and pass word both are matched");
		}
		else
		{
			out.println("something is going wrong"); 
		}
		
	
	}

}
