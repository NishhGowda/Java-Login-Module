	<%@page import="Entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
	User userdata = (User)session.getAttribute("userdata");

	if (userdata == null) {
		RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
		request.setAttribute("msg", "Please Login First");
		dispatcher.include(request, response); 
	} else{ %>
		<h1 id="warning">This is your First Page</h1>	
		<a href="https://music.amazon.com/">Amazon Music</a>
		<a href="page2.jsp"><button>Second Page</button></a>
	<% } %>




</body>
</html>