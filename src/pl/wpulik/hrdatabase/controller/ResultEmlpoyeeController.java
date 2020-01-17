package pl.wpulik.hrdatabase.controller;

import java.util.List;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pl.wpulik.hrdatabase.model.Employee;
import pl.wpulik.hrdatabase.service.EmployeeService;


@WebServlet("/search")
public class ResultEmlpoyeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String lastName = request.getParameter("inputLastName");
		EmployeeService employeeService = new EmployeeService();
		List<Employee> resultEmployee = employeeService.getEmployeeByName(lastName);
		request.setAttribute("resultEmployee", resultEmployee );
		request.getRequestDispatcher("WEB-INF/resultAll.jsp").forward(request, response);
	}

}
