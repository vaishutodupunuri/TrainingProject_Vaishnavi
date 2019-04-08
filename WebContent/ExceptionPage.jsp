<%@ page language="java" import="javax.servlet.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isErrorPage="true" %>
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
	<div class="row con" style="background-color: black;">
		<div class="col-md-1" style="color: gray;"></div>
			<div class="col-md-3" style="color: gray;" >
				<p>Contact Us on +91 40 66217777</p>
			</div>
		<div class="col-md-1" style="color: gray;">
		</div>
		<div class="col-md-3"></div>
				<div class="col-md-1 contact">
					<i class="fas fa-sign-in-alt"></i>&nbsp;SIGN IN
				</div>
				<div class="col-md-1 contact">
					<i class="fas fa-user-plus"></i>&nbsp;SIGN UP
				</div>
				<div>
					<i class="fab fa-facebook-f"></i>&nbsp;
					<i class="fab fa-google-plus-g"></i>&nbsp;
					<i class="fab fa-twitter"></i>&nbsp;
					<i class="fas fa-envelope"></i>&nbsp;
				</div>
		
	</div>
	<!-- row 2 -->
		<div class="row">
			<nav>
				<div class="col-md-1"></div>
				<div class="col-md-2">
					<img alt="TADIGITAL" src="images/logo.png" class="ta">
				</div>
				<div class="col-md-2"></div>
					<ul class="navbar-nav mr-auto">
						<li class="nav-item dropdown type">
        					<a class="nav-link dropdown-toggle drops"  role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         						 ELECTRONICS<b class="caret"></b>
         					</a>
         					 <div class="dropdown-menu" aria-labelledby="navbarDropdown">
         					 </div>        				
        				 </li> 
        			</ul>
        		<!--</div>--> 
        		<!-- <div class="col-md-1">-->
        			<ul class="navbar-nav mr-auto">        		      			 
        			 	<li class="nav-item dropdown type">
        					<a class="nav-link dropdown-toggle drops"  role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         						 MEN<b class="caret"></b>
         					</a>
         					 <div class="dropdown-menu" aria-labelledby="navbarDropdown">
         					 </div>        				
        			 	</li>
        		 	 </ul>
        		<!--</div> -->
        		<!--  <div class="col-md-2">-->
        			<ul class="navbar-nav mr-auto">  
        			 	<li class="nav-item dropdown type">
        					<a class="nav-link dropdown-toggle drops"  role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         						 WOMEN<b class="caret"></b>
         					</a>
         					 <div class="dropdown-menu" aria-labelledby="navbarDropdown">
         					 </div>        				
        			 	</li>
        			 </ul>
        		<!-- </div>-->
        		<!-- <div class="col-md-2">-->
        			<ul class="navbar-nav mr-auto">  
        			 	<li class="nav-item dropdown type">
        					<a class="nav-link dropdown-toggle drops" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         						 BABY &amp; KIDS<b class="caret"></b>
         					</a>
         					 <div class="dropdown-menu" aria-labelledby="navbarDropdown">
         					 </div>        				
        			 	</li>
        			 </ul>
        		<!-- </div>-->
        		<!-- <div class="col-md-2">-->
        			<ul class="navbar-nav mr-auto">  
        			 	<li class="nav-item dropdown type">
        					<a class="nav-link dropdown-toggle drops"  role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         						 HOME &amp; FURNITURE<b class="caret"></b>
         					</a>
         					 <div class="dropdown-menu" aria-labelledby="navbarDropdown">
         					 </div>        				
        			 	</li>
        			 </ul>    		 
        			 
        	</nav>
        </div>
        </div>
	<div class="row" style="background-image: url(images/texture-bw.png)"> 
		<div class="col-md-1">
		</div>
		<div class="col-md-5" style="padding-top: 5px;">
			<h2>EXCEPTION PAGE</h2>
		</div>
	
		<div class="col-md-1">
		</div>
		<div class="col-md-5" style="padding-top: 20px;padding-left: 300px;font-family: sans-serif;">
			<p>HOME/EXCEPTION PAGE<p></div>
		</div>
		
		<br/>
		<br/><br/>
		<div class="container-fluid">
		<div class="col-md-3"></div>
		<hr>
		<h2 align="center"><b>Sorry for the Inconvinience-The Page you r looking has a technical error</b></h2>
		<font color="gray">
			<h3 align="center">Kindly proceed to Home page or Report to website Administrator with the description mentioned below.</h3>
		</font>
		<br/><br/>
		<form method="post">
		<center>	<button type="submit" class="buterr" value="home" onClick="SignInSignUp.jsp"><i class="fas fa-home"></i>HOME</button>
			<button type="submit" class="buterr" value="report" onClick="ReportMail.java"><i class="fas fa-bug"></i>REPORT</button></center>
			
		</form>
		<div class="col-md-2"></div>
		</div>
		
	<%
		if(exception!=null){
			
	%>
	<div class="alert alert-danger" role="alert">
 					       <%=exception%>
					</div>
	
	<%
		}
	%>	
		
		
		<div style="background-color: gray;" class="container-fluid">
	<div class="col-md-2">
	</div>
	<div class="col-md-3">
		<p style="padding-left: 20px;" ><b>ABOUT US</b></p>
		<p>Pallentesque habitant morbi tristique senectus et netus at malesuada fames ac turpis egestus</p><hr>
		JOIN OUR MONTHLY NEWSLETTER
			<input type="text" name=name style="width:100% ;border-color:gray;">
		
	</div>
	<div class="col-md-2">
		<p><b>BLOG</b></p>
		<table>
			<tr><td>
				<img src="images/detailsquare1.jpg" height="30px" width="30px"></td><td> BLOG POST NAME
			</td></tr>
			<tr><td></td></tr>
			<tr><td><img src="images/detailsquare1.jpg" height="30px" width="30px"></td><td> BLOG POST NAME</td></tr>
			<tr><td></td></tr>
			<tr><td>
				<img src="images/detailsquare1.jpg" height="30px" width="30px"></td><td> VERY VERY LONG BLOG POST NAME
			</td></tr>
		</table>
	</div>
	<div class="col-md-2"> 
		<p><b>CONTACT</b></p>
		<p>TECH ASPECT SOLUTIONS PVT.LTD.<br></p>
		<p>PLOT NO:38,N HEIGHTS,3rd FLOOR,HITECH CITY PHASE 2,MADHAPUR,HYDERABAD,</p><p>TELANGANA-500081<br>INDIA</p>
			<input type="button" value="GO TO CONTACT PAGE" style="background-color: green;color: white;">
	</div>
	
	<div>
		<table ><tr>
			<td>
				<img src="images/detailsquare1.jpg" height="60px" width="60px" style=" padding-bottom: 4px; padding-right: 4px;padding-left: 4px;padding-top: 4px;">
			</td>
			<td>
				<img src="images/detailsquare2.jpg" height="60px" width="60px" style=" padding-bottom: 4px; padding-right: 4px;padding-left: 4px;padding-top: 4px;">
			</td>
			<td>
				<img src="images/detailsquare3.jpg" height="60px" width="60px" style=" padding-bottom: 4px; padding-right: 4px;padding-left: 4px;padding-top: 4px;">
			</td>
		</tr>
		<tr>
		<td>
			<img src="images/detailsquare3.jpg" height="60px" width="60px" style=" padding-bottom: 4px; padding-right: 4px;padding-left: 4px;padding-top: 4px;">
		</td>
		<td>
			<img src="images/detailsquare2.jpg" height="60px" width="60px" style=" padding-bottom: 4px; padding-right: 4px;padding-left: 4px;padding-top: 4px;">
		</td>
		<td>
			<img src="images/detailsquare1.jpg" height="60px" width="60px" style=" padding-bottom: 4px; padding-right: 4px;padding-left: 4px;padding-top: 4px;">
		</td>
		</tr>
	</table>
	</div>
	
</div>
</body>
</html>
	