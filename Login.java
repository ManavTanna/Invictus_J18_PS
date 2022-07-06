import java.io.*;
import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import jakarta.servlet.annotation.WebServlet;

import java.sql.*;
@WebServlet("/Login")

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String email = request.getParameter("email");
        String password = request.getParameter("psw");
        
			if(Validate.checkUser(email, password))
			{
				response.sendRedirect("MainScreen.jsp");
			}
			else
			{
			   out.println("Email or Password incorrect");
			   RequestDispatcher rs = request.getRequestDispatcher("Start.jsp");
			   rs.include(request, response);
			}
    }  
}