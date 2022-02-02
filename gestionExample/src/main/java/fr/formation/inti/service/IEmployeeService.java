package fr.formation.inti.service;

import java.util.List;

import fr.formation.inti.entity.Employee;

public interface IEmployeeService {
	
	public List<Employee> findAll();

	public Employee findById(int id);

	public void update(Employee newEmployee);

	public void save(Employee newEmployee);

	public void delete(int id);

}
