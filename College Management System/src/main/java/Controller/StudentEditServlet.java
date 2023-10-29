package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class StudentEditServlet
 */
public class StudentEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	Connection conn=null;
    public StudentEditServlet() throws ClassNotFoundException, SQLException {
        super();
        Class.forName("oracle.jdbc.driver.OracleDriver");
	     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session=request.getSession();
			String email=session.getAttribute("email").toString();
			
		response.setContentType("text/html");
		String s=request.getParameter("name");
		
		String p1=request.getParameter("password");
		String d=request.getParameter("date");
		String g=request.getParameter("gender");
		String c1=request.getParameter("course");
		String a=request.getParameter("address");
//		java.util.Date date = new java.util.Date();
//		long d1=date.getTime();
//		java.sql.Date m=new java.sql.Date(d1);
		PreparedStatement p=conn.prepareStatement("update student set name=?,password=?,dateofbirth=?,gender=?,course=?,address=? where email=?");
		p.setString(1, s);
		p.setString(2, p1);
		p.setString(3, d);
		p.setString(4, g);
		p.setString(5, c1);
		p.setString(6, a);
		p.setString(7, email);
		p.executeUpdate();
		response.sendRedirect("StudentDetails.jsp");
		}catch (SQLException e) {
			// TODO: handle exception
		}
	}

}
