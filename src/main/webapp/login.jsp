<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #636363, #a2ab58); 
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #fff;
        }

        .Container {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 30px 40px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            width: 400px;
            backdrop-filter: blur(10px);
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 25px;
            font-weight: 600;
            color: #fff;
        }

        .formData {
            margin-bottom: 20px;
        }

        .formData label {
            display: block;
            margin-bottom: 6px;
            font-weight: 500;
            color: #fff;
        }

        .formData input {
            width: 100%;
            padding: 10px 12px;
            border: none;
            border-radius: 8px;
            outline: none;
            font-size: 14px;
        }

        .formData input[type="submit"] {
            background-color: #ffffff;
            color: #3498db;
            font-weight: 600;
            transition: all 0.3s ease;
            cursor: pointer;
        }

        .formData input[type="submit"]:hover {
            background-color: #e0e0e0;
        }

        a button {
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 14px;
            border: none;
            background-color: #ffffff;
            color: #8e44ad;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        a button:hover {
            background-color: #f0f0f0;
        }

        
       }
    </style>
</head>
<body>

<section class="Container">
    <h2>Login User</h2>
    
    <% String msg=(String)request.getAttribute("msg"); 
	if(msg!=null){ %>
	<h3><%= msg %></h3>
	<% } %>

    <form method="post" action="loginuser">
        <!-- Username -->
        <aside class="formData">
            <label for="userName">User Name:</label>
            <input type="text" id="userName" name="userName" required minlength="3" maxlength="20" />
        </aside>

        <!-- Password -->
        <aside class="formData">
            <label for="userpassword">Password:</label>
            <input type="password" id="userpassword" name="userpassword" required minlength="8" maxlength="12"
                   pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#$%&_\-]).{8,12}$"
                   title="Must contain 1 uppercase, 1 lowercase, 1 digit, 1 special character (!@#$%&_-) and be 8-12 characters long" />
        </aside>

        

        <!-- Submit -->
        <aside class="formData">
            <input type="submit" value="Login User" />
        </aside>
    </form>
    <aside style="text-align: center;">
        <a href="createaccount.jsp"><button>Back to Signup</button></a>
    </aside>
</section>

</body>
</html>