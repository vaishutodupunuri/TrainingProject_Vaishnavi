<%@ page language="java" import="javax.servlet.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width initial-scale=1">
		<title>Account</title>
		
		<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
		<link rel="stylesheet" href="css/custom.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	</head>
<body>
	<!-- Parent Container -->
		<div class="container-fluid">
			<!-- Navigaton bar-row 1 -->
			
			<!-- Nav bar components -->
				<%@include file="Nav1.jsp" %>
        <!-- Container for the row -->
        <div class="container" id="cont">
        	<div class="row texture" style="background-image: url(images/texture-bw.png);"> 
				<div class="col-md-1">
				</div>
				<div class="col-md-5 cp">
					<h2>MY ACCOUNT</h2>
				</div>
	
				<div class="col-md-1">
				</div>
				<div class="col-md-5 hc">
					<p><span id="hcolor">HOME</span>/MY ACCOUNT<p></div>
			</div>
		</div>
		<div class="col-md-1"></div>
			<div class="col-md-6">
				<h4>Change your personal details or password here.</h4><br>
				<h5>Pallentesque habitant morbi tristique senectus et netus at malesuada fames ac turpis egestus</h5>
				<hr>
				<h3><b>&nbsp;CHANGE PASSWORD</b></h3>
				<hr class="hrw">
				<form action="changepassword" method="post">
				<div class="col-md-6 form-group">
					Old Password<br><input type="text" name="old" class="form-control" width="50%"><br>
					<div class="col-md-6"></div>
				New Password<br>
					<input type="text" class="form-control" name="new" width="50%">
				</div>
				<div class="col-md-6">
				Retype new Password<br>
				<input type="text" class="form-control" name="renew" width="50%">
				
				</div>
				<br><br>
				

				
				<div class="row">
					<div class="col-md-12">
						<button class="msg" type="submit"><i class="fa fa-save "></i>SAVE CHANGES</button>
					</div>
				</div>
				</form>
		 <%
				String sta=(String)session.getAttribute("status2");
				if(sta!=null){
					
					if(sta.equals("true")){
			%>
			<div class="alert alert-success" role="alert">
  				Password changed Successfully!!
				</div>
				
			<%			
				}
					else{
			%>
					<div class="alert alert-danger" role="alert">
 					       Changing password Failed
					</div>
					
			<%
					}}
			%>		
				
				
				<hr>
				<div>
					<h3><b>&nbsp;PERSONAL DETAILS</b></h3>
					<hr class="hrw">
					<form action="update" method="post">
						<div class="col-md-6" class="form-group">
		        			First Name<br><input type="text" name="fname" class="form-control">
		        		</div>
		        		<div class="col-md-6" class="form-group">
		        			Last Name<br><input type="text" name="lname" class="form-control">
		        		</div>
		        		<div>
		        			Gender<br>
		        			<input type="radio" name="gender" value="Male">&nbsp;Male<br>
		        			<input type="radio" name="gender" value="female">&nbsp;Female<br>
		        			<input type="radio" name="gender" value="trans">&nbsp;Transgender<br>
		        		</div>
		        		<div>
		        			Address<br>
		        			<textarea name="addr" class="form-control add"></textarea>
		        		</div>
		        		<div class="col-md-3" class="form-group">
		        			City<br><input type="text" name="city" class="form-control">
		        		</div>
		        		<div class="col-md-3" class="form-group">
		        			ZIP<br><input type="text" name="zip" class="form-control">
		        		</div>
		        		<div class="col-md-3" class="form-group">
		        			State<br><select class="form-control" name="state">
		        				<option  value="ap">Andhra Pradesh</option>
		        				<option  value="ts">Telangana</option>
		        				<option  value="goa">Goa</option>
		        			</select>
		        		</div>
		        		<div class="col-md-3" class="form-group" >
		        			Country<br><select class="form-control" name="coun">
		        				<option  value="india">India</option>
		        				<option  value="US">US</option>
		        				<option></option>
		        			</select>
		        		</div>
		        		<div class="col-md-12">
						<button class="msg" type="submit" ><i class="fa fa-save "></i>SAVE CHANGES</button>
						</div>
						</form>
				</div>
				<hr>
			<%
				String sta1=(String)session.getAttribute("status3");
				if(sta1!=null){
					
					if(sta1.equals("true")){
			%>
			<div class="alert alert-success" role="alert">
  				Updated Details Successfully!!
				</div>
				
			<%			
				}
					else{
			%>
					<div class="alert alert-danger" role="alert">
 					       Updating Details Failed
					</div>
					
			<%
					}}
			%>		
				
				</div>
			
			<div>
				<h3>CUSTOMER SECTION</h3>
				<hr class="hrw">
				<div class="col-md-2">
				<ul>
					<li class="type">
						<p class="iconcolor"><i class="fas fa-bars"></i>My orders</p>
					</li>
					<li class="type">
						<p class="iconcolor"><i class="fas fa-heart"></i>&nbsp;My wishlist</p>
					</li>
					<li class="type">
						<p class="iconcolor"><i class="fas fa-user"></i>My account</p>
					</li>
					<li class="type">
						<p class="iconcolor"><a href="Logout.jsp" class="iconcolor"><i class="fas fa-sign-out-alt iconcolor"></i>Logout</a></p>
					</li>
				</ul>
				</div>
			</div>
		</div>
	<%@include file="NavFoot.jsp"%>
		
		
			
			
			
			

</body>
</html>