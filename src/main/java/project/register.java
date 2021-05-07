package project;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class register
 */
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
        super();
        // TODO Auto-generated constructor stub
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
		String name=request.getParameter("user");
		String email=request.getParameter("email");
		String pwd=request.getParameter("pswd");
		String cpwd=request.getParameter("cp");
		Student_pojo sp=new Student_pojo();
		PrintWriter pw=response.getWriter();
		sp.setName(name);
		sp.setEmail(email);
		sp.setPassword(pwd);
		sp.setCon_password(cpwd);		
		if(DAO.displayall(email))
		{
			pw.print("<p style=\"text-align:left\"><font size=\"5\" color=\"red\">Already have an account with this email</font></p>");
			request.getRequestDispatcher("register_project.html").include(request,response);
		}
		else {
			int i=DAO.insert(sp);
			if(i>0) {
			pw.print("<p>Registered Sucessful!!!!</p>");
			request.getRequestDispatcher("login_project.html").include(request,response);
			}
		else {
			pw.print("<p>Problem in registering !!!</p>");
		}
		}
	
	}

}
