package Company;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import contact.Contact_Pojo;
import contact.DAO;

/**
 * Servlet implementation class company
 */
public class company extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public company() {
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
		int cid=Integer.parseInt(request.getParameter("cid"));
		String cname=request.getParameter("cname");
		String req=request.getParameter("creq");
		String des=request.getParameter("text");
		Company_pojo c=new Company_pojo();
		c.setCid(cid);
		c.setName(cname);
		c.setRequirments(req);
		c.setDescription(des);		
		Company_DAO dao=new Company_DAO();
		int i=dao.company_insert(c);
		PrintWriter pw=response.getWriter();
		if(i>0) {
			pw.print("<p>Company details Inserted to Databases!!!</p>");
			request.getRequestDispatcher("company.jsp").include(request,response);
		}
		else {
			pw.print("<p>Failes to insert!!!</p>");
		}
	}

}
