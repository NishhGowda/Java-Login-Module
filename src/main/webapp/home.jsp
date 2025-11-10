<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>

<style>
body {
    font-family: Arial, sans-serif;
    background: linear-gradient(135deg, #667eea, #764ba2);
    margin: 0;
    height: 100vh;
    color: white;
    text-align: center;
}
h1 {
    margin-top: 60px;
    font-size: 36px;
}
p {
    width: 60%;
    margin: 20px auto;
    line-height: 1.6;
    font-size: 18px;
    color: #f0f0f0;
}
button {
    background-color: #00b4d8;
    border: none;
    color: white;
    padding: 12px 24px;
    border-radius: 8px;
    cursor: pointer;
    font-size: 17px;
    box-shadow: 0 4px 10px rgba(0,0,0,0.2);
    transition: 0.3s;
}
button:hover {
    background-color: #0096c7;
    transform: scale(1.05);
}
h3 { color: #b5f5ec; }
a { text-decoration: none; }
</style>



</head>
<body>

<h1>Welcome to the Landing page!</h1>
<p>This application allows users to easily create and manage their accounts. 
        Click the button below to get started and experience a simple, secure registration process.</p>
        
<a href="CreateAccount.jsp" ><button>Create Account</button></a>
<a href="login.jsp"><button>Login</button></a>

	<% String msg=(String)request.getAttribute("msg"); 
	if(msg!=null){ %>
	<h3><%= msg %></h3>
	<% } %>
	
</body>
</html>