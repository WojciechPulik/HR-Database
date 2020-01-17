package pl.wpulik.hrdatabase.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pl.wpulik.hrdatabase.service.EmployeeService;


@WebServlet("/delete")
public class EmployeeDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException {
		request.getRequestDispatcher("/WEB-INF/newemployee.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		long id = 0;
		String idString = request.getParameter("inputId");
		try {
			id = Long.parseLong(idString);
		}
		catch(NumberFormatException e) {
			e.printStackTrace();
		}
		if(request.getUserPrincipal() != null) {
			EmployeeService employeeService = new EmployeeService();
			employeeService.deleteEmployee(id);
			response.sendRedirect(request.getContextPath() + "/deleted.jsp");
		} else {
			response.sendRedirect(request.getContextPath() + "/forbidden.jsp");
		}
		
	}

}
