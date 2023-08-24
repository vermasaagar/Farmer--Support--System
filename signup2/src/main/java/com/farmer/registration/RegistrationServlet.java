package com.farmer.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		String uspwd = request.getParameter("pass");
		String Reuspwd = request.getParameter("re_pass");
		String umobile = request.getParameter("contact");
		RequestDispatcher dispatcher = null; 
		 Connection con = null;   
		
		if(uname==null || uname.equals("")){
			request.setAttribute("status","invalidName" );
			dispatcher =request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request ,response);
		}
		if(uemail==null || uemail.equals("")){
			request.setAttribute("status","invalidEmail" );
			dispatcher =request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request ,response);
		}
		if(uspwd==null || uspwd.equals("")){
			request.setAttribute("status","invalidUspwd" );
			dispatcher =request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request ,response);
			
		}else if(! uspwd.equals(Reuspwd)){
			
			request.setAttribute("status","invalidConfirmPassword" );
			dispatcher =request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request ,response);
		}
		if(umobile==null || umobile.equals("")){
			request.setAttribute("status","invalidMobile" );
			dispatcher =request.getRequestDispatcher("lregistration.jsp");
			dispatcher.forward(request ,response);
			
		}else if (umobile.length()>10) {
			request.setAttribute("status", "InvalidMobileLenth");
			dispatcher =request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request ,response);
			
		}
		
		try {
		  Class.forName("com.mysql.cj.jdbc.Driver");
		   con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer?allowPublicKeyRetrieval=true&useSSL=false", "root","ayan098");
		  PreparedStatement pst = con.prepareStatement("insert into users(uname,uspwd,uemail,umobile)values(?,?,?,?)");
		  pst.setString(1, uname);
		  pst.setString(2, uspwd);
		  pst.setString(3, uemail);
		  pst.setString(4, umobile);
		  
		  int rowCount = pst.executeUpdate();
		  dispatcher = request.getRequestDispatcher("registration.jsp");
		  if (rowCount > 0 ) {
			  request.setAttribute("status", "success");
			  	 
		  }else {
			  request.setAttribute("status", "failed");
		  }
		  dispatcher.forward(request ,response);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
			
		}
		
	}

		
}
