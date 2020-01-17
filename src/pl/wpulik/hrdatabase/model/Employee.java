package pl.wpulik.hrdatabase.model;

public class Employee {
	private long id;
	private String firstName;
	private String lastName;
	private double salary;
	
	public Employee() {}
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public Employee(Employee employee) {
		this.id = employee.id;
		this.firstName = employee.firstName;
		this.lastName = employee.lastName;
		this.salary = employee.salary;
	}
	
	

}

