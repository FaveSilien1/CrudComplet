package fr.formation.inti.service;

import java.util.Date;
import java.util.List;

import fr.formation.inti.dao.EmployeeDao;
import fr.formation.inti.dao.IEmployeeDao;
import fr.formation.inti.entity.Employee;

public class EmployeeService implements IEmployeeService{
	
	private IEmployeeDao dao ;
	
	public EmployeeService() {
		dao = new EmployeeDao();
	}
	
	
	public List<Employee> findAll() {
		dao.beginTransaction();
		List<Employee> list = dao.findAll();
		dao.commitTransaction();
		return list;
	}
	
	public static void main(String[] args) {
		IEmployeeService service = new EmployeeService();
		service.delete(42);
		//service.findAll();
		//service.findById(2);
//		Employee emp = Employee("luc", "jean","2005-05-22");
	
	}



	@Override
	public Employee findById(int id) {
		dao.beginTransaction();
		Employee emp = dao.findById(id);
		dao.commitTransaction();
		return emp;
	}


	@Override
	public void update(Employee newEmployee) {
		dao.beginTransaction();
		dao.update(newEmployee);
		dao.commitTransaction();
		
	}


	@Override
	public void save(Employee newEmployee) {
		dao.beginTransaction();
		dao.save(newEmployee);
		dao.commitTransaction();
		
	}


	@Override
	public void delete(int id) {
		dao.beginTransaction();
		dao.delete(id);
		dao.commitTransaction();
		
	}

}
