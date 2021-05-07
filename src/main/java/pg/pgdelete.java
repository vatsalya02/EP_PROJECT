package pg;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ug.DAO;

/**
 * Servlet implementation class pgdelete
 */
public class pgdelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public pgdelete() {
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
		PG_DAO dao1=new PG_DAO();
		PrintWriter pw=response.getWriter();
		int i=dao1.pg_delete(id);
		if(i>0) {
			pw.print("<p>Deleted Sucessful!!</p>");
			request.getRequestDispatcher("pgindex.html").include(request,response);
		}
		else {
			pw.print("<p>Failes</p>");
			request.getRequestDispatcher("pgdelete.html").include(request,response);
		}
	}

}
