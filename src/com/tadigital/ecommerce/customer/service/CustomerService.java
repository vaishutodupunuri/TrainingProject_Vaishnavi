package com.tadigital.ecommerce.customer.service;

import javax.mail.PasswordAuthentication;
import java.util.ArrayList;
import java.util.Properties;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.Transport;
import javax.mail.Message;
import javax.mail.MessagingException;

//import com.sun.xml.internal.fastinfoset.sax.Properties;
//import com.sun.corba.se.impl.protocol.giopmsgheaders.Message;
//import com.sun.xml.internal.fastinfoset.sax.Properties;
import com.tadigital.ecommerce.customer.dao.CustomerDao;
import com.tadigital.ecommerce.customer.entity.Customer;

public class CustomerService {
	CustomerDao customerDao = new CustomerDao();
	
	
	
	public boolean loginCustomer(Customer customer) {
		boolean status = customerDao.selectCustomerByEmailAndPassword(customer);
		
		return status;
	}
	
	public boolean registerCustomer(Customer customer) {
		boolean status = customerDao.insertCustomer(customer);
		if(status) {
			sendWelcomeMail(customer.getFirstName() + " " + customer.getLastName(), customer.getEmail());
		}
		return status;
	}
	
	public ArrayList<Customer> getAllCustomers() {
		ArrayList<Customer> customerList = customerDao.selectAllCustomers();
		
		return customerList;
	}
	public String sendWelcomeMail(String name, String email) {
		String status = "NOT SENT";
		
		
		//MAIL SERVER CONFIGURATION
		java.util.Properties properties = new Properties();
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.socketFactory.port", "465");
		properties.put("mail.smtp.socketFactory.class",	"javax.net.ssl.SSLSocketFactory");
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.port", "465");
		
		//CONNECT TO MAIL SERVER
		Session session = Session.getDefaultInstance(properties,new javax.mail.Authenticator() {
																	protected PasswordAuthentication getPasswordAuthentication() {
																		return new PasswordAuthentication("vaishutodupunuri@gmail.com","shiva767");
																	}
																});
		try {
			//COMPOSE MESSAGE
			MimeMessage mimeMessage = new MimeMessage(session);
			mimeMessage.setFrom(new InternetAddress("vaishutodupunuri@gmail.com"));
			mimeMessage.setRecipients(Message.RecipientType.TO,	InternetAddress.parse(email));
			
			mimeMessage.setSubject("Welcome to TA Digital Online Shopping Portal.");
			String msg = "Hello " + name + ",\n\n" +
						 "Thanks for Registering on our shopping portal." +
						 "\nWelcome to TA Digital" +
						 "\n\nThanks & Regards" +
						 "\nVaishnavi Todupunuri";
			mimeMessage.setText(msg);

			//SEND MAIL*/
			
			
			Transport.send(mimeMessage);
			
			status = "SENT";
		} catch (MessagingException mex) {
			mex.printStackTrace();
		} 
		
		return status;
	}
	public boolean updateCustomerPassword(Customer customer) {
		boolean update=customerDao.updatePassword(customer);
		
		return update;
	}
	public boolean updateCustomerDetails(Customer customer) {
		boolean status=customerDao.updateDetails(customer);
		
		return status;
	}
	
}