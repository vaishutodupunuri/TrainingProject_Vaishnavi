<%@ page language="java" import="javax.servlet.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width initial-scale=1">
<title>Home</title>

<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

</head>
<body>
<div class="container-fluid">
	
	<%@include file="Nav1.jsp" %>
	
	<div class="row" style="background-image: url(images/texture-bw.png)"> 
		<div class="col-md-1">
		</div>
		<div class="col-md-5" style="padding-top: 5px;">
			<h2>NEW ACCOUNT/SIGN IN</h2>
		</div>
	
		<div class="col-md-1">
		</div>
		<div class="col-md-5" style="padding-top: 20px;padding-left: 300px;font-family: sans-serif;">
			<p><a href="Home.jsp">HOME</a>/NEW ACCOUNT/SIGN IN<p></div>
		</div>
	
	<div class="col-md-1">
	</div>
	
	<div class="col-md-4">
		<hr>
			<h2><b>NEW ACCOUNT</b></h2>
			<h4>Not our registered customer yet?</h4><br><br>
			<p>With registration with us new world of fashion,fantastic discounts and much more opens to you! The whole process will not take you more tha a minute!</p><br>
			<p>If you have any questions,please feel free to <span style="color:skyblue">contact us</span>.our customer service center is working for you 24/7.</p>
		<hr>
		<form action="register" method="post">
		Name<br>
			<input type="text" name="name" style="width:100% ;border-color:gray;">
		<br><br>
		Email<br>
			<input type="text" name="email" style="width:100% ;border-color:gray;"><br><br>
		Password<br>
			<input type="password" name="pwd" style="width:100% ;border-color:gray;"><br><br>
			<input type="submit" name="REGISTER" value="REGISTER" style="border-color: green;color: green;"><br/><br/>
		</form>
			<%
				String st =(String)session.getAttribute("status");
				if(st!=null){
				
					if(st.equals("true")){
			%>
			<div class="alert alert-success" role="alert">
  				Registration Successful!!
				</div>
			<%			
				}
					else{
			%>
					<div class="alert alert-danger" role="alert">
 					       Registration Failed
					</div>
					
			<%
					}}
			%>
		<hr>
	</div>
	
	
	<div class="col-md-1">
	</div>
	
	<div class="col-md-4">
		<hr>
		<h2><b>SIGN IN</b></h2>
		<h4>Already our customer?</h4><br><br>
		<p>Get access to your Orders,Wishlist and Recommendations.</p>
		<hr>
		<form action="login" method="post">
		Email<br>
			<input type="text" name="email" style="width:100% ;border-color:gray;"><br><br>
		Password<br>
			<input type="password" name="pwd" style="width:100% ;border-color:gray;"><br><br>
			<input type="submit" name="LOGIN" value="LOGIN" style="border-color: green;color: green;align-content: center;">
		</form>
		<%
				String sta =(String)session.getAttribute("status1");
				if(sta!=null){
				
					if(sta.equals("false")){
			%>
			
					<div class="alert alert-danger" role="alert">
 					Login Failed
						</div>
					
			<%
					}}
			%>
		<hr>
	</div>
	
</div>
<%@include file="NavFoot.jsp"%>
</body>
</html>