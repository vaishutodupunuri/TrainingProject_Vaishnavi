

<%@ page language="java" import="javax.servlet.*,javax.servlet.http.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	String name=(String)session.getAttribute("User");
	if(name==null){
%>


<div class="row con" style="background-color: black;">
		<div class="col-md-1" style="color: gray;"></div>
			<div class="col-md-3" style="color: gray;" >
				<p>Contact Us on +91 40 66217777</p>
			</div>
		<div class="col-md-1" style="color: gray;">
		</div>
		<div class="col-md-3"></div>
				<div class="col-md-1 contact">
				<a href="SignInSignUpForms.jsp" class="sign"	><i class="fas fa-sign-in-alt"></i>&nbsp;SIGN IN</a>
				</div>
				<div class="col-md-1 contact">
					<a href="SignInSignUpForms.jsp" class="sign"	><i class="fas fa-user-plus"></i>&nbsp;SIGN UP</a>
				</div>
				<div>
					<i class="fab fa-facebook-f"></i>&nbsp;
					<i class="fab fa-google-plus-g"></i>&nbsp;
					<i class="fab fa-twitter"></i>&nbsp;
					<i class="fas fa-envelope"></i>&nbsp;
				</div>
		
	</div>
	<div class="row">
		<div class="col-md-1" style="color: gray;">
		</div>
		<div class="col-md-4"><img alt="TADIGITAL" src="images/logo.png" height="42" width="150">
		</div>
		<div class="col-md-2">
			<select class="dropdown">
				<option value="Electronics">ELECTRONICS</option>
			</select>
		</div>
		<div class="col-md-1">
			<select class="dropdown">
				<option value="Men">MEN</option>
			</select>
		</div>
		<div class="col-md-1">
			<select class="dropdown">
				<option value="Women">WOMEN</option>
			</select>
		</div>
		<div class="col-md-1">
			<select class="dropdown">
				<option value="baby">BABY &amp; KIDS</option>
			</select>
		</div>
		<div class="col-md-1">
			<select class="dropdown">
				<option value="home">HOME &amp; FURNITURE</option>
			</select>
		</div>
			
	</div>
	
<% 
	}
else{
%>
	<div class="row con" style="background-color: black;">
		<div class="col-md-1" style="color: gray;"></div>
			<div class="col-md-3" style="color: gray;" >
				<p>Contact Us on +91 40 66217777</p>
			</div>
		<div class="col-md-1" style="color: gray;">
		</div>
		<div class="col-md-3"></div>
				<div class="col-md-2 contact1">
				<ul>
					 <li class="nav-item dropdown1 signdrop">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <b><%= name %></b><b class="caret"></b>
                        </a>
                        <div class="dropdown-menu" >
                        <ul class="dropdown-item1">
                            <li><a  href="CustomerAccount.jsp">My Account</a><br></li> 
                            <li><a  href="CustomerAccount.jsp">Change password</a><br></li> 
                            <li><a  href="Logout.jsp">Log Out</a><br></li> 
                         </ul>  
                        </div>
                     </li>
                 </ul>
				</div>
				
				<div>
					<i class="fab fa-facebook-f"></i>&nbsp;
					<i class="fab fa-google-plus-g"></i>&nbsp;
					<i class="fab fa-twitter"></i>&nbsp;
					<i class="fas fa-envelope"></i>&nbsp;
				</div>
		
	</div>
	<div class="row">
		<div class="col-md-1" style="color: gray;">
		</div>
		<div class="col-md-4"><img alt="TADIGITAL" src="images/logo.png" height="42" width="150">
		</div>
		<div class="col-md-2">
			<select class="dropdown">
				<option value="Electronics">ELECTRONICS</option>
			</select>
		</div>
		<div class="col-md-1">
			<select class="dropdown">
				<option value="Men">MEN</option>
			</select>
		</div>
		<div class="col-md-1">
			<select class="dropdown">
				<option value="Women">WOMEN</option>
			</select>
		</div>
		<div class="col-md-1">
			<select class="dropdown">
				<option value="baby">BABY &amp; KIDS</option>
			</select>
		</div>
		<div class="col-md-1">
			<select class="dropdown">
				<option value="home">HOME &amp; FURNITURE</option>
			</select>
		</div>
			
	</div>
	
<%
}
%>


















