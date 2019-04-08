
<%@page import="sun.reflect.ReflectionFactory.GetReflectionFactoryAction"%>
<%@ page language="java" import="javax.servlet.*,javax.servlet.http.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		//HttpSession session=req.getSession();
		session.invalidate();
		response.sendRedirect("Home.jsp");
		//RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");
		//rd.forward(request, response);
	%>
</body>
</html>