package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */

public class Loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	Connection c=null;
    public Loginservlet() throws ClassNotFoundException, SQLException {
        super();
        Class.forName("oracle.jdbc.driver.OracleDriver");
	     c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter print=response.getWriter();
		String s=request.getParameter("name");
		String e=request.getParameter("email");
		HttpSession session=request.getSession();
		session.setAttribute("email",e);
		String p1=request.getParameter("password");
		PreparedStatement p2;
		try {
			p2 = c.prepareStatement("select email from student");
			ResultSet r=p2.executeQuery();
			while(r.next()) {
				String mail=r.getString(1);
				if(e.equals(mail)) {
					//print.println("Already registered");
				
					RequestDispatcher rd=request.getRequestDispatcher("Details.jsp");
					rd.forward(request, response);
				}
				
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
	}

}
