import java.io.*;
import java.sql.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/Search")

public class Search extends HttpServlet {
    
    /**
	 * 
	 */
	static String text;
	
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			   throws ServletException, IOException {
			    PrintWriter pw = response.getWriter();
			    text = request.getParameter("search");
			    doSQL(pw);
			     
			}
	

	/*protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		System.out.println("in the servlet");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	
        String text = request.getParameter("search");
        try {
        
            // loading drivers for mysql
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            //creating connection with the database 
            Connection con = DriverManager.getConnection
                        ("jdbc:mysql://localhost:3306/hackathon","root","demoLogin");

            PreparedStatement ps = con.prepareStatement
                        ("select * from upload where title like '%"+text+"%' or domain like '%"+text+"%'");
            //System.out.println("Hi");
            
            //ps.setString(0, text);
            
            out.println(ps);
            System.out.println("Hi");
            //int i = ps.executeUpdate();
                    
        }
        catch(Exception se) {
            se.printStackTrace();
        } 
    }
}*/
	
	public static void doSQL(PrintWriter pw) {
	    try {
	    	
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	    	String url = "jdbc:mysql://localhost:3306/hackathon";
	        Connection conn = DriverManager.getConnection(url,"root","demoLogin");
	        String query = "select * from upload where title like '%"+text+"%' or technology like '%"+text+"%' or sem like '%"+text+"%' or dept like '%"+text+"%' or team like '%"+text+"%'";
	        		//+ "where technology like '%"
	        		//+ text + "%'";
	        Statement ps = conn.createStatement();
	        ResultSet rs = ps.executeQuery(query);

			//rs = stmt.executeQuery("select title from upload where title like '%"+text +"%'");
	        //rs = ps.executeQuery(query);
	        pw.println("<html><table border=1 width=50% height=50% align=center bgcolor=#7de2d1>");
	        pw.println("<tr><th colspan=8>Results for your search are:</th></tr>");
	        pw.println("<tr><th>Title</th><th>Description</th><th>Name</th><th>Technology</th><th>Semester</th><th>Department</th><th>Link</th><th>Team</th></tr>"); 
	        while (rs.next()) {
	            // you only select one field, but you can easily adapt
	            // this code to have more fields (i.e. table columns)
	            String title = rs.getString("title");
	            String description = rs.getString("description");
	            String name = rs.getString("name");
	            String technology = rs.getString("technology");
	            String sem = rs.getString("sem");
	            String dept = rs.getString("dept");
	            String link = rs.getString("link");
	            String team = rs.getString("team");
	            
	            Blob image = rs.getBlob("image");
	            
	            pw.println("<tr><td>" + title + "</td>");
	            pw.println("<td>" + description + "</td>");
	            pw.println("<td>" + name + "</td>");
	            pw.println("<td>" + technology + "</td>");
	            pw.println("<td>" + sem + "</td>");
	            pw.println("<td>" + dept + "</td>");
	            pw.println("<td>" + link + "</td>");
	            //pw.println("<td>" + image + "</td>");	            
	            pw.println("<td>" + team + "</td></tr>");
	        }
	        pw.println("</table></html>");
			//pw.println("<html>");
			//String title = rs.getString("title");
           // pw.println("title");
            //pw.println("</html>");
	        conn.close();
	    } catch (Exception e) {

	        System.err.println("Got an exception! ");
	        System.err.println(e.getMessage());
	    }
	}
}