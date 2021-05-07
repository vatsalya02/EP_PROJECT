package project;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Fpassword
 */
public class Fpassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Fpassword() {
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
		String user = request.getParameter("user");
		String psd = request.getParameter("pswd");
		String cp=request.getParameter("cpd");
		DAO dao=new DAO();
		PrintWriter pw=response.getWriter();
		int i=DAO.update(user,psd,cp);
		if(i>0) {
			pw.print("<p>Updated Password Sucessfully</p>");
			request.getRequestDispatcher("login_project.html").include(request,response);
		}
		else {
			pw.print("<p> Password cannot updated</p>");
			request.getRequestDispatcher("forgetpsd.html").include(request,response);
			
		}
	}

}
