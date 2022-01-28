package fr.formation.inti.dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import fr.formation.inti.utils.HibernateUtils;

public class GenericDaoHibernate <T, I extends Serializable> implements IGenericDao <T,I>{
 
	
	private static final Log log = LogFactory.getLog(GenericDaoHibernate.class);
	private SessionFactory sf = HibernateUtils.getSessionFactory();
	private Session session = sf.getCurrentSession();
	private Transaction tx = session.getTransaction();
	
	@SuppressWarnings("unchecked")
	private Class<T> type;
	
	@SuppressWarnings("unchecked")
	public GenericDaoHibernate() {
		this.type = (Class<T>)((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
	}
	

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
	
	
	@SuppressWarnings("unchecked")
	@Override
	public I save(T t) {
		
		I empId =  (I) session.save(t);

		return empId;
		
	}
	
	@Override
	public T findById(I i) {
		
		return session.get(type, i);
	}
	

	@Override
	public void update(T t) {
	      
		session.update(t);

	}

	@Override
	public void delete(I i) {
		session.delete(i);
		
	}

	
	@SuppressWarnings("unchecked")
	@Override
	public List<T> findAll() {
		
		
	    return session.createCriteria(type).list();
	}
	
	
	

}
