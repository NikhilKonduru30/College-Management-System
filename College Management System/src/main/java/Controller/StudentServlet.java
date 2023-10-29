package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class StudentServlet
 */
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	Connection c=null;
    public StudentServlet() throws ClassNotFoundException, SQLException {
    	super();
    	Class.forName("oracle.jdbc.driver.OracleDriver");
	     c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession session=request.getSession();
		String s=request.getParameter("name");
		String e=request.getParameter("email");
		String p1=request.getParameter("password");
		String d=request.getParameter("date");
		String g=request.getParameter("gender");
		String c1=request.getParameter("course");
		String a=request.getParameter("address");
		session.setAttribute("email",e);
		
			try {
			PreparedStatement p=c.prepareStatement("insert into student values(?,?,?,?,?,?,?)");
//			java.util.Date date = new java.util.Date();
//			long d1=date.getTime();
//			java.sql.Date m=new java.sql.Date(d1);
			
	          
			p.setString(1, s);
			p.setString(2, e);
			p.setString(3, p1);
			p.setString(4, d);
			p.setString(5, g);
			p.setString(6, c1);
			p.setString(7, a);
			PreparedStatement p2=c.prepareStatement("select email from student");
			ResultSet r=p2.executeQuery();
			while(r.next()) {
				String mail=r.getString(1);
				if(e.equals(mail)) {
					//print.println("Already registered");
					response.sendRedirect("Studentlogin.jsp");
					return;
				}
				
			}
			
			int k=p.executeUpdate();
			//response.sendRedirect("StudentDashboardServlet");
			RequestDispatcher rd=request.getRequestDispatcher("Details.jsp");
			rd.forward(request, response);
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
	}
}
