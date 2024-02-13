package admin_contol;
import java.io.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
@WebServlet("/admin")
public class Admin_controller extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String user=request.getParameter("adminid");
		String pass=request.getParameter("adminpass");
		//adim controller completed
		if(user.equals("20FE1A05B7") && pass.equals("20FE1A05B7"))
		{
			response.sendRedirect("admin_page.jsp");
		}
		else
		{
			response.sendRedirect("admin_login_page.jsp");
		}
	}

	
}
