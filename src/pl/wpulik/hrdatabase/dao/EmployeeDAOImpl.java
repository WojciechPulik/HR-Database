package pl.wpulik.hrdatabase.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import pl.wpulik.hrdatabase.model.Employee;
import pl.wpulik.hrdatabase.util.ConnectionProvider;

public class EmployeeDAOImpl implements EmployeeDAO{
	
	private static String CREATE_EMPLOYEE = "INSERT INTO employees(firstname, lastname, salary) "
			+ "VALUES (:firstName, :lastName, :salary);";
	
	private static String READ_EMPLOYEE = "SELECT employee_id, firstname, lastname, salary FROM employees WHERE lastname = :lastName;";
	
	private static String READ_ALL_EMPLOYEES = "SELECT employee_id, firstname, lastname, salary FROM employees;";
	
	private static String UPDATE_EMPLOYEE = "UPDATE employees SET firstname=:firstName, lastname=:lastName, salary=:salary "
			+ "WHERE employee_id=:id;";
	
	private static String DELETE_EMPLOYEE = "DELETE FROM employees WHERE employee_id=:employee_id;";
	
	private NamedParameterJdbcTemplate template;
	
	public EmployeeDAOImpl() {
		template = new NamedParameterJdbcTemplate(ConnectionProvider.getDataSource());
	}
	
	@Override
	public Employee create(Employee employee) {
		Employee resultEmpl = new Employee(employee);
		KeyHolder holder = new GeneratedKeyHolder();
		SqlParameterSource paramSource = new BeanPropertySqlParameterSource(resultEmpl);
		int update = template.update(CREATE_EMPLOYEE, paramSource, holder);
		if(update > 0) {
			resultEmpl.setId(holder.getKey().longValue());
		}
		return resultEmpl;
	}
	
	@Override
	public List<Employee> read(String lastname) {
		SqlParameterSource paramSource = new MapSqlParameterSource("lastName", lastname);
		List<Employee> result = template.query(READ_EMPLOYEE, paramSource, new EmployeeRowMapper());
		return result;
	}
	
	@Override
	public boolean update(Employee employee) {
		SqlParameterSource paramSource = new BeanPropertySqlParameterSource(employee);
		template.update(UPDATE_EMPLOYEE, paramSource);
		return true;
	}
	
	@Override
	public boolean delete(Long id) {
		SqlParameterSource paramSource = new MapSqlParameterSource("employee_id", id);
		template.update(DELETE_EMPLOYEE, paramSource);
		return true;
	}
	@Override
	public List<Employee> getAll(){
		List<Employee> employees = template.query(READ_ALL_EMPLOYEES, new EmployeeRowMapper());
		return employees;
	}
	
	private class EmployeeRowMapper implements RowMapper<Employee>{
		@Override 
		public Employee mapRow(ResultSet resultSet, int row) throws SQLException {
			Employee employee = new Employee();
			employee.setId(resultSet.getLong("employee_id"));
			employee.setFirstName(resultSet.getString("firstname"));
			employee.setLastName(resultSet.getString("lastname"));
			employee.setSalary(resultSet.getDouble("salary"));
			return employee;
		}
	}
	

}
