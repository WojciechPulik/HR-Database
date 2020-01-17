package pl.wpulik.hrdatabase.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pl.wpulik.hrdatabase.service.EmployeeService;



@WebServlet("/new")
public class EmployeeAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/newemployee.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		double salary = 0.0;
		request.setCharacterEncoding("UTF-8");
		String firstName = request.getParameter("inputFirstName");
		String lastName = request.getParameter("inputLastName");
		String stringSalary = request.getParameter("inputSalary");
		try {
		salary = Double.parseDouble(stringSalary);
		}
		catch(NumberFormatException e) {
			e.printStackTrace();
		}
		EmployeeService employeeService = new EmployeeService();
		employeeService.addEmployee(firstName, lastName, salary);
		response.sendRedirect(request.getContextPath() + "/added.jsp");
		
	}

}
