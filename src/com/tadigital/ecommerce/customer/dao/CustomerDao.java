package com.tadigital.ecommerce.customer.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.tadigital.ecommerce.customer.entity.Customer;

public class CustomerDao extends Dao {
	public boolean selectCustomerByEmailAndPassword(Customer customer) {
		boolean status = false;
		
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM customer_information WHERE cus_email = '" + customer.getEmail() + "' AND cus_pwd = '" + customer.getPassword() + "'";
			
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				status = true;
				
				customer.setId(rs.getInt(1));
				customer.setFirstName(rs.getString(2));
				customer.setLastName(rs.getString(3));
				
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeResultSet(rs);
			closeConnection(con);
		}
		
		return status;
	}
	
	public boolean insertCustomer(Customer customer) {
		boolean status = false;
		
		
		
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		
		try {
			String sql = "INSERT INTO customer_information(cus_fname, cus_lname, cus_email, cus_pwd) " +
						 "VALUES('" + customer.getFirstName() + "', '" 
						 + customer.getLastName() +  "', '" + customer.getEmail() + "', '" + customer.getPassword() + "')";
			
			int rows = stmt.executeUpdate(sql);
			if(rows != 0) {
				status = true;
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeConnection(con);
		}
		
		return status;
	}
	
	public ArrayList<Customer> selectAllCustomers() {
		ArrayList<Customer> customerList = new ArrayList<>(); 
		
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM customer_information";
			
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				Customer customer = new Customer();				
				customer.setId(rs.getInt(1));
				customer.setFirstName(rs.getString(2));
				customer.setLastName(rs.getString(3));
				
				customer.setEmail(rs.getString(5));
				customer.setPassword(rs.getString(6));
				
				customerList.add(customer);
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeResultSet(rs);
			closeConnection(con);
		}
		
		return customerList;
	}
	public boolean updatePassword(Customer customer) {
		boolean update=false;
		

		Connection con = openConnection();
		Statement stmt = openStatement(con);
		Statement stmt2=openStatement(con);
		ResultSet rs=null;
		
		String old=customer.getOldPassword();
		String newp=customer.getNewPassword();
		String rep= customer.getRepPassword();
		String email=customer.getEmail();
		
		try {
			String sql1="SELECT * FROM customer_information WHERE cus_email='"+email+"' AND cus_pwd='"+old+"'";
			
			
			 rs = stmt.executeQuery(sql1);
			while(rs.next()) {
				update=false;
				if(customer.getNewPassword().equals(customer.getRepPassword())) {
					
					 update=true;
				
			String sql2="UPDATE customer_information SET cus_pwd='"+customer.getNewPassword()+"' WHERE cus_email='"+customer.getEmail()+"'";
					int r=stmt2.executeUpdate(sql2);
				}
			}
			
			
			
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeResultSet(rs);
			closeStatement(stmt);
			closeStatement(stmt2);
			closeConnection(con);
		}
		
		return update;
	}
	
	public boolean updateDetails(Customer customer) {
		boolean update=false;
		
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		Statement stmt2=openStatement(con);
		ResultSet rs=null;
		
		try {
			String sql1="SELECT * FROM customer_information WHERE cus_fname='"+customer.getFn()+"' AND cus_lname='"+customer.getLn()+"'";
			rs=stmt.executeQuery(sql1);
			while(rs.next()) {
			update=false;
			String sql2="UPDATE customer_information SET gender='"+customer.getGen()+"',address='"+customer.getAddr()+"',city='"+customer.getCity()+"',zip='"+customer.getZip()+"',state='"+customer.getState()+"',country='"+customer.getCoun()+"' WHERE cus_email='"+customer.getEmail()+"'";
			int r=stmt2.executeUpdate(sql2);
			if(r!=0)
			update=true;
			}
			
			
			
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} 
		finally {
			closeResultSet(rs);
			closeStatement(stmt2);
			closeStatement(stmt);
			closeConnection(con);
		}
		
		return update;
	}
	
}