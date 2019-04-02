package com.tadigital.ecommerce.customer.servlet;

import java.io.IOException;
import java.util.GregorianCalendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tadigital.ecommerce.customer.entity.Customer;
import com.tadigital.ecommerce.customer.service.CustomerService;

@WebServlet("/register")
public class RegistrationProcessControllerServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("RegistrationForm.html");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name=req.getParameter("name");
		String[] fl=name.split(" ");
		String firstName = fl[0];
		String lastName = fl[1];
		
		String email = req.getParameter("email");
		String password = req.getParameter("pwd");
		
		Customer customer = new Customer();
		customer.setFirstName(firstName);
		customer.setLastName(lastName);
		
		
		customer.setEmail(email);
		customer.setPassword(password);
		
		CustomerService customerService = new CustomerService();
		boolean status = customerService.registerCustomer(customer);
		
		if(status) {
			HttpSession session= req.getSession();
			session.setAttribute("status","true");
			RequestDispatcher rd = req.getRequestDispatcher("SignInSignUpForms.jsp");
			rd.forward(req, resp);
		} else {
			HttpSession session= req.getSession();
			session.setAttribute("status","false");
			RequestDispatcher rd = req.getRequestDispatcher("SignInSignUpForms.jsp");
			rd.forward(req, resp);
		}
	}
}