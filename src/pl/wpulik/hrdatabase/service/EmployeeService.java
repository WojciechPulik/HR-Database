package pl.wpulik.hrdatabase.service;

import java.util.List;

import pl.wpulik.hrdatabase.dao.DAOFactory;
import pl.wpulik.hrdatabase.dao.EmployeeDAO;
import pl.wpulik.hrdatabase.model.Employee;

public class EmployeeService {
	
	public void addEmployee(String firstName, String lastName, double salary) {
		Employee empl = new Employee();
		empl.setFirstName(firstName);
		empl.setLastName(lastName);
		empl.setSalary(salary);
		DAOFactory factory = DAOFactory.getDAOFactory();
		EmployeeDAO emplDao = factory.getEmployeeDAO();
		emplDao.create(empl);
	}
	
	public void deleteEmployee(long id) {
		DAOFactory factory = DAOFactory.getDAOFactory();
		EmployeeDAO emplDao = factory.getEmployeeDAO();
		emplDao.delete(id);
	}
	
	public List<Employee> getAllEmployees(){
		DAOFactory factory = DAOFactory.getDAOFactory();
		EmployeeDAO employeeDao = factory.getEmployeeDAO();
		List<Employee> employees = employeeDao.getAll();
		return employees;
	}
	
	public List<Employee> getEmployeeByName(String lastName){
		DAOFactory factory = DAOFactory.getDAOFactory();
		EmployeeDAO employeeDao = factory.getEmployeeDAO();
		List<Employee> resultEmployee = employeeDao.read(lastName);
		return resultEmployee;
	}
	
	public void updateEmployee(long id, String firstName, String lastName, double salary) {
		Employee empl = new Employee();
		empl.setId(id);
		empl.setFirstName(firstName);
		empl.setLastName(lastName);
		empl.setSalary(salary);
		DAOFactory factory = DAOFactory.getDAOFactory();
		EmployeeDAO emplDao = factory.getEmployeeDAO();
		emplDao.update(empl);
	}

}