package servletpages;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class find
 */
public class find extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id=request.getParameter("id");
		response.setContentType("text/html");
		 
		PrintWriter out = response.getWriter(); 
		try {
			Class.forName("org.h2.Driver");
		 // loads driver
		Connection c = DriverManager.getConnection("jdbc:h2:~/test", "sa", ""); // gets a new connection
 
		PreparedStatement ps = c.prepareStatement("select * from STUDENT2 where ID=?");
		ps.setString(1, id);
		
		ResultSet rs = ps.executeQuery();
		
		
		              
		
		 if (rs.next())
	      {
			 
			
			
			out.print("<table width=50% border=1>");  
			out.print("<caption>Result:</caption>");
 
			 ResultSetMetaData rsmd=rs.getMetaData();  
				int total=rsmd.getColumnCount();  
				out.print("<tr>");  
				for(int i=1;i<=total;i++)  
				{  
				out.print("<th>"+rsmd.getColumnName(i)+"</th>");  
				}  
				  
				out.print("</tr>");  
			 
	        
			 out.print("<tr><td>"+rs.getInt(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"
			 +rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(10)+"</td><td>"
					 +rs.getString(11)+"</td><td>"+rs.getString(12)+"</td><td>"+rs.getString(13)+"</td><td>"
			 +rs.getString(14)+"</td><td>"+rs.getString(15)+"</td><td>"
			 +rs.getString(16)+"</td></tr>");
	      }
		 else {
		 out.print("SORRY! NO RECORD FOUND");
		 out.print("</table>");  
		   
		 }
	
		
		
	}
		catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{out.close();}
		

}
}