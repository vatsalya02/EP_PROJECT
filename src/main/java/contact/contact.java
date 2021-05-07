package contact;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class contact
 */
public class contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public contact() {
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
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String q=request.getParameter("query");
		Contact_Pojo c=new Contact_Pojo();
		c.setName(name);
		c.setEmailid(email);
		c.setQuery(q);
		DAO dao=new DAO();
		int i=dao.insert(c);
		PrintWriter pw=response.getWriter();
		if(i>0) {
			pw.print("<p>Query Submitted To admin !!!</p>");
			request.getRequestDispatcher("contact.html").include(request,response);
		}
		else {
			pw.print("<p>Query Not Submitted!!!</p>");
		}
	}

}
