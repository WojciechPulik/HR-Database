package pl.wpulik.hrdatabase.dao;

import java.util.List;

import pl.wpulik.hrdatabase.model.*;

public interface EmployeeDAO extends GenericDAO<Employee, Long>{
	
	public Employee create(Employee employee);
	
	public List <Employee> read(String lastname);
	
	public boolean update(Employee employee);
	
	public boolean delete(Long id);
	
	

}
