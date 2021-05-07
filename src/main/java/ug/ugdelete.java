package ug;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ugdelete
 */
public class ugdelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ugdelete() {
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
		int id=Integer.parseInt(request.getParameter("user"));
		DAO dao=new DAO();
		PrintWriter pw=response.getWriter();
		int j=dao.delete(id);
		if(j>0) {
			pw.print("<p>Deleted Sucessful!!</p>");
			request.getRequestDispatcher("ugindex_project.html").include(request,response);
			
		}
		else {
			pw.print("<p>Failes</p>");
			request.getRequestDispatcher("ugdelete.html").include(request,response);
		}

		
	}

}
