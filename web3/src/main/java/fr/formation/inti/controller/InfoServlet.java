package fr.formation.inti.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import fr.formation.inti.dao.IUserDao;
import fr.formation.inti.entity.Employee;
import fr.formation.inti.entity.User;
import fr.formation.inti.utils.HibernateUtils;

/**
 * Servlet implementation class InfoServlet
 */
public class InfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final Log log = LogFactory.getLog(EmployeeServlet.class);
	private SessionFactory sf ;
	private Session session ;
	private Transaction tx ;
	private IUserDao dao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InfoServlet() {
        super();
        
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		sf = HibernateUtils.getSessionFactory();
		session = sf.getCurrentSession();
		tx = session.getTransaction();
		
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		

		Query query = session.createQuery(" Select u from User u where u.login =:login and u.password=: password", User.class);
		
		query.setParameter("login", login);
		query.setParameter("password", password);
		
		List <User> list = query.getResultList();
		if (list.isEmpty()) {
			request.getRequestDispatcher("pageHasError.jsp").forward(request, response);
		}else {
			
			User user = session.find(User.class, list.get(0).getEmp());
			Employee emp = user.getEmp();
			request.setAttribute("Employee", emp);
			request.getRequestDispatcher("jspE1.jsp").forward(request, response);
		}
		
		
		
	}

}
