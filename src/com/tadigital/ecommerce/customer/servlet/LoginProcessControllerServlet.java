package com.tadigital.ecommerce.customer.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.tadigital.ecommerce.customer.entity.Customer;

import com.tadigital.ecommerce.customer.service.CustomerService;

@WebServlet("/login")
public class LoginProcessControllerServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("LoginForm.html");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("pwd");
		
		Customer customer = new Customer();
		customer.setEmail(email);
		customer.setPassword(password);
		HttpSession session = req.getSession();
		CustomerService customerService = new CustomerService();
		boolean status = customerService.loginCustomer(customer);
		session.setAttribute("User", customer.getFirstName()+customer.getLastName());
		if(status) {
			
			session.setAttribute("CUSTOMERDATA", customer);
			session.setAttribute("email", email);
			RequestDispatcher rd = req.getRequestDispatcher("Home.jsp");
			rd.forward(req, resp);
		} else {
			
			session.setAttribute("status1", "false");
			RequestDispatcher rd = req.getRequestDispatcher("SignInSignUpForms.jsp");
			rd.forward(req, resp);
			
		}
	}
}