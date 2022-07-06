import java.io.*;
import java.sql.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
@WebServlet("/Details")
@MultipartConfig

public class Details extends HttpServlet {
    
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		System.out.println("in the servlet");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String technology = request.getParameter("technology");
        String link = request.getParameter("link");
        String dept = request.getParameter("dept");
        String sem = request.getParameter("sem");
        String team =  "VES"+title;
        
        Part filePart = request.getPart("image");
        InputStream in = filePart.getInputStream();
        
        
            // loading drivers for mysql
            try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = null;
				//creating connection with the database 
				con = DriverManager.getConnection
			            ("jdbc:mysql://localhost:3306/hackathon","root","demoLogin");
				String name[] = new String[4];
	            name[0] = request.getParameter("name1");
	            name[1] = request.getParameter("name2");
	            name[2] = request.getParameter("name3");
	            name[3] = request.getParameter("name4");
	            
	            System.out.println("in the details");
	            
	            
	            for(int i=0; i<4; i++)
	            {
	            	if(!(name[i].isEmpty()))
	            	{
	            		String query = "insert into upload (title, description, link, technology, dept, sem, team, name, image) values(?,?,?,?,?,?,?,?,?)";
	            		PreparedStatement ps = null;
						try {
							ps = con.prepareStatement(query);
							ps.setString(1, title);
							ps.setString(2, description);
		            		ps.setString(3, link);
		            		ps.setString(4, technology);
		            		ps.setString(5, dept);
		            		ps.setString(6, sem);
		            		ps.setString(7, team);
		            		ps.setString(8, name[i]);
		            		ps.setBlob(9, in);
		            		ps.execute();
		            	//	int j = ps.executeUpdate();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
	            		
	            	}
	            }  
			} catch (ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
            
                                   
            response.sendRedirect("MainScreen.jsp"); 
    }
}