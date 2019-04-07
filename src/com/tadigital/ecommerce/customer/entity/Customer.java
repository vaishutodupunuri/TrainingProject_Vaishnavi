package com.tadigital.ecommerce.customer.entity;



//ENTITY/BEAN/POJO/MODEL CLASS
public class Customer {
	//PROPERTIES
	private int id;
	private String firstName;
	private String lastName;
	
	private String email;
	private String password;
	private String newpassword;
	private String oldpassword;
	private String reppassword;
	
	private String fn;
	private String ln;
	private String gen;
	private String addr;
	private String city;
	private String zip;
	private String state;
	private String coun;
	
	public Customer() {
	}
	public Customer(int id, String firstName, String lastName, String email, String password,String oldp,String newp,String rep) {
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		
		this.email = email;
		this.password = password;
		this.oldpassword=oldp;
		this.newpassword=newp;
		this.reppassword=rep;
	}
	
	//GETTER OR ACCESSOR METHODS
	public int getId() {
		return id;
	}
	public String getFirstName() {
		return firstName;
	}
	public String getLastName() {
		return lastName;
	}
	
	public String getEmail() {
		return email;
	}
	public String getPassword() {
		return password;
	}
	public String getNewPassword() {
		return newpassword;
	}
	public String getOldPassword() {
		return oldpassword;
	}
	public String getRepPassword() {
		return reppassword;
	}
	public String getFn() {
		return fn;
	}
	public String getLn() {
		return ln;
	}
	public String getGen() {
		return gen;
	}
	public String getAddr() {
		return addr;
	}
	public String getCity() {
		return city;
	}
	public String getZip() {
		return zip;
	}
	public String getState() {
		return state;
	}
	public String getCoun() {
		return coun;
	}
	
	//SETTER OR MUTATOR METHODS
	public void setId(int id) {
		this.id = id;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public void setNewPassword(String newp) {
		this.newpassword = newp;
	}
	public void setOldPassword(String old) {
		this.oldpassword = old;
	}
	public void setRepPassword(String rep) {
		this.reppassword = rep;
	}
	public void setFn(String fn) {
		this.fn = fn;
	}
	public void setLn(String ln) {
		this.ln = ln;
	}
	public void setGen(String gen) {
		this.gen = gen;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public void setState(String state) {
		this.state = state;
	}
	public void setCoun(String coun) {
		this.coun = coun;
	}
	
	@Override
	public String toString() {
		return "Customer [id=" + id + ", firstName=" + firstName + ", lastName=" + 
				lastName + ", " + ", email=" + email + 
				", password=" + password + "]";
	}
}