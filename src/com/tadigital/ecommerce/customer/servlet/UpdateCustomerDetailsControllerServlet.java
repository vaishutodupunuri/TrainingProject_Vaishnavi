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

@WebServlet("/update")
public class UpdateCustomerDetailsControllerServlet extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String fn=req.getParameter("fname");
		String ln=req.getParameter("lname");
		String gen=req.getParameter("gender");
		String addr=req.getParameter("addr");
		String city=req.getParameter("city");
		String zip=req.getParameter("zip");
		String state=req.getParameter("state");
		String coun=req.getParameter("coun");
		
		HttpSession session = req.getSession();
		String email=(String)session.getAttribute("email");
		Customer customer=new Customer();
		customer.setEmail(email);
		customer.setFn(fn);
		customer.setLn(ln);
		customer.setGen(gen);
		customer.setAddr(addr);
		customer.setCity(city);
		customer.setZip(zip);
		customer.setState(state);
		customer.setCoun(coun);
		
		CustomerService customerService=new CustomerService();
		boolean status =customerService.updateCustomerDetails(customer);
		
		if(status) {
			
			session.setAttribute("status3", "true");
			RequestDispatcher rd = req.getRequestDispatcher("Home.jsp");
			rd.forward(req, resp);
		}
		else {
			
			
			RequestDispatcher rd = req.getRequestDispatcher("ExceptionPage.jsp");
			rd.forward(req, resp);
		}
	}
}
