<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Login</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f7f7f7; /* Light gray background */
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }

    .login-container {
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        padding: 40px 30px; /* Adjusted padding */
        width: 300px;
        text-align: center;
        animation: fadeIn 1s ease-in-out;
    }

    .login-container h2 {
        margin-bottom: 20px;
        color: #333;
    }

    .form-group {
        margin-bottom: 15px;
    }

    .form-group label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
        color: #555;
    }

    .form-group input {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    .form-group input[type="submit"] {
        background-color: #405de6; /* Instagram's blue color */
        color: #fff;
        border: none;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    .form-group input[type="submit"]:hover {
        background-color: #3b55d4; /* Darker shade on hover */
    }

    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
</style>
</head>
<body>
<div class="login-container">
    <h2>Employee Login</h2>
    <form action="EmployeeController" method="get">
        <input type="hidden" name="action" value="signin">
        <div class="form-group">
            <label for="empemailid">Employee Email</label>
            <input type="text" name="empemailid">
        </div>
        <div class="form-group">
            <label for="emppassword">Password</label>
            <input type="password" name="emppassword">
        </div>
        <div class="form-group">
            <input type="submit" value="Sign In">
        </div>
    </form>
</div>
</body>
</html>
