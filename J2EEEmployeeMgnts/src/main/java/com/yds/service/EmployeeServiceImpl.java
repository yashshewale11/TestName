package com.yds.service;

import java.util.List;

import com.yds.dao.EmployeeDaoImpl;
import com.yds.model.Employee;

public class EmployeeServiceImpl implements EmployeeService{
	
	EmployeeDaoImpl employeeDaoImpl= new EmployeeDaoImpl();

	@Override 
	public void signUp(Employee employee) {
		// TODO Auto-generated method stub
	employeeDaoImpl.signUp(employee);
	}

	@Override
	public boolean signIn(String empEmailId, String empPassword) {
		// TODO Auto-generated method stub
		return employeeDaoImpl.signIn(empEmailId, empPassword);
	}

	@Override
	public List<Employee> getAllEmployees() {
		return employeeDaoImpl.getAllEmployees();
	}

	@Override
	public Employee getEmployeeByEmailAndPassword(String empEmailId, String empPassword) {
		return employeeDaoImpl.getEmployeeByEmailAndPassword(empEmailId, empPassword);
	}
	
	

}
