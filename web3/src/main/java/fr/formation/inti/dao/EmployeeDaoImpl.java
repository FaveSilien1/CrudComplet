package fr.formation.inti.dao;

import java.util.List;


import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import fr.formation.inti.entity.Employee;
import fr.formation.inti.utils.HibernateUtils;

public class EmployeeDaoImpl implements IEmployeeDao {
	private static final Log log = LogFactory.getLog(EmployeeDaoImpl.class);
	private SessionFactory sf = HibernateUtils.getSessionFactory();
	private Session session = sf.getCurrentSession();
	private Transaction tx = session.getTransaction();

	public Session getCurrentSessionOpen() {
		if (!session.isOpen())
			session = sf.openSession();

		return session;
	}
	
	public void beginTransaction() {
		if (!tx.isActive())
			tx = session.beginTransaction();
  }
	public void commitTransaction() {
		tx.commit();
	}
	
  

	public void closeSessionFactory() {
		session.close();
		sf.close();
	}

	@Override
	public Integer save(Employee e) {
		Integer empId = (Integer) session.save(e);

		return empId;
	}

	@Override
	public void update(Employee e) {
		session.update(e);

	}

	@Override
	public void delete(Integer empId) {
		
		Employee e = session.find(Employee.class, empId);
		session.delete(e);

	}

	//@Override
	//public void delete(Employee e) {
	
		//session.delete(e);}

		

	

	@Override
	public Employee findById(Integer id) {

		return session.find(Employee.class, id);

	}

	@Override
	public List<Employee> findAll() {		

		return session.createQuery("from Employee e").getResultList();
	}

}
