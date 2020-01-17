package pl.wpulik.hrdatabase.dao;

public class MysqlDAOFactory extends DAOFactory{
	
	@Override
	public EmployeeDAO getEmployeeDAO() {
		return new EmployeeDAOImpl();
	}
	
	@Override
	public UserDAO getUserDAO() {
		return new UserDAOImpl();
	}
	

}
