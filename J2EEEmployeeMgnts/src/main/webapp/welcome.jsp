<%@page import="com.yds.dao.EmployeeDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.util.List, com.yds.dao.EmployeeDao, com.yds.model.Employee"%>
<%
// Create an instance of EmployeeDao
EmployeeDaoImpl employeeDao = new EmployeeDaoImpl();

// RetrieveString
String empEmailId = request.getParameter("empemailid"); // Retrieve email from request
String empPassword = request.getParameter("emppassword"); // Retrieve password from request

Employee employee = employeeDao.getEmployeeByEmailAndPassword(empEmailId, empPassword);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee List</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    h1 {
        color: #333;
        text-align: center;
        padding: 20px;
    }

    table {
        width: 80%;
        margin: auto;
        border-collapse: collapse;
    }

    table, th, td {
        border: 1px solid #333;
    }

    th, td {
        padding: 10px;
        text-align: center;
    }

    th {
        background-color: #333;
        color: #fff;
    }

    .logout-link {
        display: block;
        text-align: center;
        margin-top: 20px;
        color: #333;
    }
</style>
</head>
<body>
	<h1>Employee List</h1>
	<table>
		<tr>
			<th>Employee ID</th>
			<th>Name</th>
			<th>Address</th>
			<th>Salary</th>
			<th>Email</th>
		</tr>
		<%
		if (employee != null) {
		%>
		<tr>
			<td><%=employee.getEmpId()%></td>
			<td><%=employee.getEmpName()%></td>
			<td><%=employee.getEmpAddress()%></td>
			<td><%=employee.getEmpSalary()%></td>
			<td><%=employee.getEmpEmailId()%></td>
		</tr>
		<%
		} else {
		%>
		<tr>
			<td colspan="5">Employee not found</td>
		</tr>
		<%
		}
		%>
	</table>
	<a class="logout-link" href="index.jsp">Logout</a>
</body>
</html>
