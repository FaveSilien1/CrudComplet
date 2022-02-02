package fr.formation.inti.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.formation.inti.entity.Employee;
import fr.formation.inti.service.EmployeeService;
import fr.formation.inti.service.IEmployeeService;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/update")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IEmployeeService employeeService; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
    	employeeService = new EmployeeService();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		Employee emp = employeeService.findById(id);
		request.setAttribute("emp", emp);
		
		request.getRequestDispatcher("update.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer id = Integer.parseInt(request.getParameter("empId")) ;
		Employee emp = employeeService.findById(id);  
	    String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		
		emp.setFirstName(firstName);
		emp.setLastName(lastName);
		
	
			
		employeeService.update(emp);
		
		request.getRequestDispatcher("/employee").forward(request, response);
	}

}
