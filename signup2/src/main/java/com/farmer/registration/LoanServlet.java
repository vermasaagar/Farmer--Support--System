package com.farmer.registration;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.*;
import javax.servlet.http.*;





@SuppressWarnings("serial")
public  class LoanServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response  )throws ServletException,IOException {
		   response.setContentType("text/html");
		   PrintWriter out = response.getWriter();
		   out.println("<h1>Welcome to farmicaza</h1>");
		   
		   String name = request.getParameter("name");
		   String address = request.getParameter("address");
		   String phone = request.getParameter("phone");
		   String email = request.getParameter("email");
		   String loan = request.getParameter("loan_amount");
		   String loanp = request.getParameter("loan_purpose");
		   
		   String gender = request.getParameter("gender");
		   
		   String cond = request.getParameter("condition");
		   
		   if(loan.length()>6) {
			   out.println("<h1>your laon amount is too hign</h1>");
			   
		   }
		   else {
			   out.println("<h2>your Loan has been applied successfully......... </h2>");
			   out.println("<h2>loan Amount: "+loan+"</h2>");
		   }

		   
		   if(cond.equals("checked")) {
	
			   out.println("<h2>name: "+name+"</h2>");
			   
			   out.println("<h2>Adress: "+address+"</h2>");
			   
			   out.println("<h2>email: "+email+"</h2>");
			   out.println("<h2>phone no: "+phone+"</h2>");
			
			   out.println("<h2>loan Purpose: "+loanp+"</h2>");
			   out.println("<h2>gender: "+gender+"</h2>");
		   }
		   else {
			   out.println("you are not accept term and condition");
		   }
		   
		}  
  
     
}
