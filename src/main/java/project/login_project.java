package project;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class login_project
 */
public class login_project extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login_project() {
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
		
		DAO dao=new DAO();
		PrintWriter pw =response.getWriter(); 
		if(user.equals("system@klu") && psd.equals("admin@klu")) {
			request.getRequestDispatcher("student.html").include(request,response);
		}
		
		else {			
			if(dao.login(user,psd)) {
				System.out.println("1");
				HttpSession hs = request.getSession();
				System.out.println(hs==null);
				System.out.println("2");
				hs.setAttribute("Username", user);
				System.out.println("3"+hs.getAttribute("Username"));
				request.getRequestDispatcher("studentindex.html").include(request,response);
			}
			else {
				pw.print("<p style=\"text-align:center\"><font size=\"7\" color=\"red\">Invalid credentials!!</font></p>");
				request.getRequestDispatcher("login_project.html").include(request,response);
				
			}
		}
			}	
}
