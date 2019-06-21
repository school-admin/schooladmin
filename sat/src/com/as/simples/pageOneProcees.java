package com.as.simples;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class pageOneProcees
 */
@WebServlet("/pageOneProcees")
public class pageOneProcees extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	   String name=request.getParameter("name");
	   String add=request.getParameter("add");
	   String phone=request.getParameter("phone");
	   
	  System.out.println("the Name is:"+name);
	  System.out.println("the Address is:"+add);
	  System.out.println("the Phone is:"+phone);
	  
	  request.getSession().setAttribute("name", name);
	  request.getSession().setAttribute("Address", add);
	  request.getSession().setAttribute("Phone", phone);
	  
	  response.sendRedirect("html/page2.html");
	}

}
