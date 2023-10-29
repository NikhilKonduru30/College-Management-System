package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.db.DBConnect;

/**
 * Servlet implementation class Deletestudent
 */
public class Deletestudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Deletestudent() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       response.setContentType("text/html");
		String email=request.getParameter("id");
		
		StudentDao dao = new StudentDao(DBConnect.getConn());
		if (dao.deleteStudent(email)) {
			//session.setAttribute("succMsg", "Doctor Delete Sucessfully..");
			response.sendRedirect("StudentDetails.jsp");
		} 
	}

}
