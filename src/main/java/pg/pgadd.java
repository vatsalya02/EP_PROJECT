package pg;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class pgadd
 */
public class pgadd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public pgadd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int regno=Integer.parseInt(request.getParameter("regno"));
		String name=request.getParameter("name");
		int year=Integer.parseInt(request.getParameter("year"));
		String email=request.getParameter("email");
		String dep=request.getParameter("dep");
		String add=request.getParameter("add");
		String gender=request.getParameter("gender");
		String tboard=request.getParameter("tboard");
		String tper=request.getParameter("tper");
		String tyear=request.getParameter("tyear");
		String iboard=request.getParameter("iboard");
		String iper=request.getParameter("iper");
		String iyear=request.getParameter("iyear");
		long phno=Long.parseLong(request.getParameter("phno"));
		int byear=Integer.parseInt(request.getParameter("pass"));
		int bper=Integer.parseInt(request.getParameter("per"));
		PG_Pojo p=new PG_Pojo();
		p.setRegno(regno);
		p.setName(name);
		p.setEmail(email);
		p.setYear(year);
		p.setDepartment(dep);
		p.setAddress(add);
		p.setGender(gender);
		p.setTboard(tboard);
		p.setTper(tper);
		p.setTyear(tyear);
		p.setIboard(iboard);
		p.setIper(iper);
		p.setIyear(iyear);
		p.setPhone_no(phno);
		p.setBper(bper);
		p.setByear(byear);
		PG_DAO dao=new PG_DAO();
		int i=dao.pg_insert(p);
		PrintWriter pw=response.getWriter();
		if(i>0) {
			pw.print("<p>Inserted Sucessful!!</p>");
			request.getRequestDispatcher("pgindex.html").include(request,response);
		}
		else {
			pw.print("<p>Failes</p>");
			request.getRequestDispatcher("pgadd.html").include(request,response);
		}
		
		
	}

}
