<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee SignUp</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: cyan;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 400px;
    }

    form input[type="text"],
    form input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    form input[type="submit"] {
        background-color: #333;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    form input[type="submit"]:hover {
        background-color: #555;
    }
</style>
</head>
<body>
<form action="EmployeeController" method="get">
    <input type="hidden" name="action" value="signup">
    <label for="empid">Employee Id</label>
    <input type="text" name="empid"><br> 
    <label for="empname">Employee Name</label>
    <input type="text" name="empname"><br>
    <label for="empaddress">Employee Address</label>
    <input type="text" name="empaddress"><br>
    <label for="empsalary">Employee Salary</label>
    <input type="text" name="empsalary"><br>
    <label for="empemailid">Employee EmailId</label>
    <input type="text" name="empemailid"><br>
    <label for="emppassword">Employee Password</label>
    <input type="password" name="emppassword"><br>

    <input type="submit" value="SignUP">
</form>
</body>
</html>
