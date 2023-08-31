package com.yds.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yds.model.Employee;

public class EmployeeDaoImpl implements EmployeeDao {
	Connection connection = null;

	public EmployeeDaoImpl() {
		// TODO Auto-generated constructor stub
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/employeemgnts", "root", "root");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void signUp(Employee employee) {
		// TODO Auto-generated method stub
		String insertSQL = "insert into employee(empid,empname,empaddress,empsalary,empemailid,emppassword)values(?,?,?,?,?,?)";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(insertSQL);
			preparedStatement.setInt(1, employee.getEmpId());
			preparedStatement.setString(2, employee.getEmpName());
			preparedStatement.setString(3, employee.getEmpAddress());
			preparedStatement.setDouble(4, employee.getEmpSalary());
			preparedStatement.setString(5, employee.getEmpEmailId());
			preparedStatement.setString(6, employee.getEmpPassword());
			preparedStatement.executeUpdate();

			System.out.println("Data Inserted Succsessfully");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	public boolean signIn(String empEmailId, String empPassword) {
		// TODO Auto-generated method stub

		boolean flag = false;
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from employee where empemailid=? and emppassword=?");
			preparedStatement.setString(1, empEmailId);
			preparedStatement.setString(2, empPassword);
			ResultSet resultSet = preparedStatement.executeQuery();
			flag = resultSet.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}

	@Override
	public List<Employee> getAllEmployees() {
		List<Employee> employees = new ArrayList<>();
		String selectSQL = "SELECT * FROM employee";

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(selectSQL);
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				int empId = resultSet.getInt("empid");
				String empName = resultSet.getString("empname");
				String empAddress = resultSet.getString("empaddress");
				double empSalary = resultSet.getDouble("empsalary");
				String empEmailId = resultSet.getString("empemailid");
				String empPassword = resultSet.getString("emppassword");

				Employee employee = new Employee(empId, empName, empAddress, empSalary, empEmailId, empPassword);
				employees.add(employee);
			}

			resultSet.close();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return employees;
	}

	@Override
	public Employee getEmployeeByEmailAndPassword(String empEmailId, String empPassword) {
		Employee employee = null;
		String selectSQL = "SELECT * FROM employee WHERE empemailid = ? AND emppassword = ?";

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(selectSQL);
			preparedStatement.setString(1, empEmailId);
			preparedStatement.setString(2, empPassword);
			ResultSet resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				int empId = resultSet.getInt("empid");
				String empName = resultSet.getString("empname");
				String empAddress = resultSet.getString("empaddress");
				double empSalary = resultSet.getDouble("empsalary");
				String empEmail = resultSet.getString("empemailid");
				String empPwd = resultSet.getString("emppassword");

				employee = new Employee(empId, empName, empAddress, empSalary, empEmail, empPwd);
			}

			resultSet.close();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return employee;
	}

}
