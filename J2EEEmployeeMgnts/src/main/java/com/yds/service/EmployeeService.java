package com.yds.service;

import java.util.List;

import com.yds.model.Employee;

public interface EmployeeService {
	public void signUp(Employee employee);

	public boolean signIn(String empEmailId, String empPassword);
	
	List<Employee> getAllEmployees();
	
	Employee getEmployeeByEmailAndPassword(String empEmailId, String empPassword);

}
