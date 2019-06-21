package servlet;

import java.sql.Connection;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class LoginProcess
 */
public class LoginProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginProcess() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String username=request.getParameter("username");
		System.out.print(username);
		String userpass=request.getParameter("userpass");
		String branch=request.getParameter("branch");
		boolean status=false;
		try{
		Class.forName("org.h2.Driver");
		Connection con=DriverManager.getConnection("jdbc:h2:~/test","sa","");
		PreparedStatement ps=con.prepareStatement("select * from payregister where username=? and userpass=? and branch=? ");
		ps.setString(1,username);
		ps.setString(2,userpass);
		ps.setString(3,branch);
		ResultSet rs=ps.executeQuery();
		status=rs.next();
		if(status){
		System.out.print("hi");
		username=rs.getString(2);
		request.getSession().setAttribute("username",String.valueOf(username));
		request.getSession().setAttribute("islogin","plz sign in first");

		response.sendRedirect("home.jsp");
		}
		else{
		System.out.print("hi");
		request.setAttribute("Error","Sorry! Username or Password Error. Plz Enter Correct Detail ");
		System.out.println("Plz sign in first");
		response.sendRedirect("index.html");
		}
		}
		catch(Exception e){
		e.printStackTrace();
		}
	}

}
