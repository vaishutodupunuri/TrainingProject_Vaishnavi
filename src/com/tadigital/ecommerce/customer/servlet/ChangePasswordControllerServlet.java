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
import com.tadigital.ecommerce.customer.dao.Dao;

@WebServlet("/changepassword")
public class ChangePasswordControllerServlet extends HttpServlet{
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String old=req.getParameter("old");
		String newp=req.getParameter("new");
		String rep=req.getParameter("rep");
		HttpSession session = req.getSession();
		String email=(String)session.getAttribute("email");
		Customer customer=new Customer();
		customer.setEmail(email);
		customer.setOldPassword(old);
		customer.setNewPassword(newp);
		customer.setRepPassword(rep);
		
		CustomerService customerService=new CustomerService();
		customerService.updateCustomerPassword(customer);
		
		
	}
}
