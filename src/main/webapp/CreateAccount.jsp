<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create User</title>
    
   <style>
body {
    font-family: Arial, sans-serif;
    background: linear-gradient(135deg, #667eea, #764ba2);
    margin: 0;
    padding: 40px 0;
    color: white;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: flex-start;
}

.form-container {
    width: 400px;
    padding: 30px 35px;
    border-radius: 12px;
    background-color: rgba(255,255,255,0.12);
    box-shadow: 0 4px 20px rgba(0,0,0,0.3);
    text-align: left;
}

.form-container h2 {
    text-align: center;
    color: #fff;
    margin-bottom: 12px;
    letter-spacing: 0.5px;
}

p {
    text-align: center;
    color: #e0e0e0;
    font-size: 15px;
    margin-bottom: 25px;
}

.form-group {
    margin-bottom: 18px;
}

.form-group label {
    display: block;
    margin-bottom: 6px;
    color: #f8f8f8;
    font-weight: 500;
}

.form-group input {
    width: 100%;
    padding: 10px 12px;
    border-radius: 6px;
    border: none;
    background-color: rgba(255,255,255,0.2);
    color: #fff;
    outline: none;
    transition: 0.2s;
}

.form-group input:focus {
    background-color: rgba(255,255,255,0.25);
    box-shadow: 0 0 0 2px #00b4d8;
}

.form-group input[type="submit"] {
    background-color: #00b4d8;
    color: white;
    border: none;
    padding: 12px;
    width: 100%;
    border-radius: 8px;
    cursor: pointer;
    transition: 0.3s ease;
    font-weight: 600;
    margin-top: 8px;
}

.form-group input[type="submit"]:hover {
    background-color: #0096c7;
    transform: scale(1.04);
}

.home-btn {
    margin-top: 25px;
    text-align: center;
}

.home-btn button {
    background-color: #00b4d8;
    color: white;
    padding: 10px 25px;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    transition: 0.3s ease;
}

.home-btn button:hover {
    background-color: #0096c7;
    transform: scale(1.04);
}

a {
    text-decoration: none;
}
</style>


</head>
<body>

<div class="form-container">
    <h2>Create User</h2>

    <form method="post" action="createuser">
        <!-- User Name -->
        <div class="form-group">
            <label for="userName">User Name:</label>
            <input type="text" id="userName" name="userName" required minlength="3" maxlength="20" />
        </div>

        <!-- Password -->
        <div class="form-group">
            <label for="userpassword">Password:</label>
            <input type="password" id="userpassword" name="userpassword" required minlength="8" maxlength="12"
                   pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#$%&_\-]).{8,12}$"
                   title="Must contain 1 uppercase, 1 lowercase, 1 digit, 1 special character (!@#$%&_-) and be 8-12 characters long" />
        </div>

        <!-- Phone Number -->
        <div class="form-group">
            <label for="userPhno">Phone Number:</label>
            <input type="text" id="userPhno" name="userPhno" required pattern="^\d{10,12}$"
                   title="Phone number must be 10 to 12 digits" />
        </div>

        <!-- Age -->
        <div class="form-group">
            <label for="userAge">Age:</label>
            <input type="number" id="userAge" name="userAge" min="12" required />
        </div>

        <!-- Submit -->
        <div class="form-group">
            <input type="submit" value="Create User" />
        </div>
    </form>
</div>
<div class="home-btn">
<a href="home.jsp"><button>Home</button></a>
</div>
</body>
</html>