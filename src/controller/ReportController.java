package controller;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.Employee;
import service.EmployeeService;
import util.GeneratePdf;


@WebServlet(urlPatterns= {"/report"})
public class ReportController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReportController() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
		String firstname="venkatesh";
		String lastname="ragavi";
		String age="33";
		Employee emp=new Employee(firstname,lastname,age);
		List<Employee> employees = EmployeeService.getEmployee(emp);
	
		request.setAttribute("employees", employees);
		RequestDispatcher rd=this.getServletContext().getRequestDispatcher("/WEB-INF/views/report.jsp");
		rd.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String firstname="venkatesh";
		String lastname="ragavi";
		String age="33";
		
		Employee employee=new Employee(firstname,lastname,age);
		employee.setFirstName(firstname);
		employee.setLastName(lastname);
		employee.setAge(age);
		
		List<Employee> employees = EmployeeService.getEmployee(employee);
		OutputStream bout=GeneratePdf.getPdfFile(employees);
		
		if(bout!=null) {
			System.out.println("file generated");
			request.setAttribute("employees", employees);
			request.setAttribute("message", "File generated at the location specified");
		RequestDispatcher rd=this.getServletContext().getRequestDispatcher("/WEB-INF/views/excelreport.jsp");
		rd.forward(request, response);
		out.close();
		}
	}

}
