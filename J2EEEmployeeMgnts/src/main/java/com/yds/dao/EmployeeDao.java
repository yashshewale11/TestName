package com.yds.dao;

import java.util.List;

import com.yds.model.Employee;

public interface EmployeeDao {

	public void signUp(Employee employee);

	public boolean signIn(String empEmailId, String empPassword);
	
	List<Employee> getAllEmployees();

	Employee getEmployeeByEmailAndPassword(String empEmailId, String empPassword);
}
