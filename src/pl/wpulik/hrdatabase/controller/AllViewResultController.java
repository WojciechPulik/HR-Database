package pl.wpulik.hrdatabase.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pl.wpulik.hrdatabase.model.Employee;
import pl.wpulik.hrdatabase.service.EmployeeService;


@WebServlet("/all")
public class AllViewResultController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getUserPrincipal()!=null) {
			EmployeeService employeeService = new EmployeeService();
			List<Employee> resultEmployee = employeeService.getAllEmployees();
			request.setAttribute("resultEmployee", resultEmployee);
			request.getRequestDispatcher("WEB-INF/resultAll.jsp").forward(request, response);
		}else {
			response.sendError(403);
		}
	}

}
