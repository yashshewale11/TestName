package com.yds.controller;

import java.io.IOException;

import com.yds.model.Employee;
import com.yds.service.EmployeeService;
import com.yds.service.EmployeeServiceImpl;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/EmployeeController")
public class EmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String INDEX_PAGE = "/index.jsp";
	String SIGNUP_PAGE = "/signup.jsp";
	String SIGNIN_PAGE = "/signin.jsp";
	String WELCOME_PAGE = "/welcome.jsp";

	EmployeeService employeeServiceImpl = new EmployeeServiceImpl();

	public EmployeeController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String redirect = "";
		String employeeId = request.getParameter("empid");

		String action = request.getParameter("action");
		if (employeeId != null && action.equals("signup")) {

			int empId = Integer.parseInt(employeeId);

			String empName = request.getParameter("empname");

			String empAddress = request.getParameter("empaddress");

			double empSalary = Double.valueOf(request.getParameter("empsalary"));

			String empEmailId = request.getParameter("empemailid");

			String empPassword = request.getParameter("emppassword");

			Employee employee = new Employee(empId, empName, empAddress, empSalary, empEmailId, empPassword);

			employeeServiceImpl.signUp(employee);

			redirect = SIGNIN_PAGE;

			System.out.println("Redirected to Sign In Page");

		} else if (action.equals("signin")) {
			String empEmailId = request.getParameter("empemailid");

			String empPassword = request.getParameter("emppassword");

			if (employeeServiceImpl.signIn(empEmailId, empPassword)) {
				redirect = WELCOME_PAGE;
			} else {
				redirect = SIGNIN_PAGE;
			}

		}
		RequestDispatcher requestDispatcher = request.getRequestDispatcher(redirect);
		requestDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
