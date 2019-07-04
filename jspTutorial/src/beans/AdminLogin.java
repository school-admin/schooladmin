package beans;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginController
 */
public class AdminLogin extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un=request.getParameter("uname");
		String pw=request.getParameter("psw");
		
		// Connect to mysql and verify username password
		
		try {
			Class.forName("org.h2.Driver");
			Connection con = DriverManager.getConnection("jdbc:h2:~/test", "sa", "");
		PreparedStatement ps = con.prepareStatement("select username,password from admin where username=? and password=?");
		ps.setString(1, un);
		ps.setString(2, pw);
 
		ResultSet rs = ps.executeQuery();
 
		while (rs.next()) {
			response.sendRedirect("/jspTutorial/crudOparation/indexAdmin.jsp");
			return;
		}
		response.sendRedirect("/jspTutorial/crudOparation/index.jsp");
		return;
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
