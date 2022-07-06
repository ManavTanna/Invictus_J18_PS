import java.io.*;
import java.sql.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/Register")

public class Register extends HttpServlet {
    
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		System.out.println("in the servlet");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	
        String email = request.getParameter("email");
        String password = request.getParameter("psw");
        String r_password = request.getParameter("psw-repeat");
        if(!(password == r_password) && email.endsWith("@ves.ac.in"))
        {
        try {
        
            // loading drivers for mysql
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            //creating connection with the database 
            Connection con = DriverManager.getConnection
                        ("jdbc:mysql://localhost:3306/hackathon","root","demoLogin");

            PreparedStatement ps = con.prepareStatement
                        ("insert into login values(?,?)");

            ps.setString(1, email);
            ps.setString(2, password);
            int i = ps.executeUpdate();
            
            if(i>0) {
            	response.sendRedirect("Start.jsp");
            }
            else out.println("Sorry!Not registered");
        
        }
        catch(Exception se) {
            se.printStackTrace();
        }
        } 
        else
        	out.println("Please check if you've enetered correct password and also make sure that only ves id is allowed!");
	
    }
}