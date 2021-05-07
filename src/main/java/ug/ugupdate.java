package ug;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ugupdate
 */
public class ugupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ugupdate() {
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
		int backlogs=Integer.parseInt(request.getParameter("back"));
		float cgpa=Float.parseFloat(request.getParameter("cgpa"));
		String course =request.getParameter("course");
		String placed=request.getParameter("place");
		UG_Pojo p=new UG_Pojo();
		p.setRegno(regno);
		p.setName(name);
		p.setYear(year);
		p.setEmail(email);
		p.setDepartment(dep);
		p.setAddress(add);
		p.setTboard(tboard);
		p.setTper(tper);
		p.setTyear(tyear);
		p.setIboard(iboard);
		p.setIper(iper);
		p.setIyear(iyear);
		p.setGender(gender);
		p.setPhone_no(phno);
		p.setBacklogs(backlogs);
		p.setCgpa(cgpa);
		p.setCourse(course);
		p.setPlaced(placed);
		DAO dao=new DAO();
		int i=dao.update(p);
		PrintWriter pw=response.getWriter();
		if(i>0) {
			pw.print("<p>Updated Sucessful!!</p>");
			request.getRequestDispatcher("ugindex_project.html").include(request,response);
		}
		else {
			pw.print("<p>Failes to update</p>");
			request.getRequestDispatcher("ugupdate.jsp").include(request,response);
		}
		
	}

}
