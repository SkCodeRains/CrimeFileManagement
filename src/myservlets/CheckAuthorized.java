package myservlets;
import mybeans.*;
import java.sql.*;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CheckAuthorized
 */
@WebServlet("/CheckAuthorized")
public class CheckAuthorized extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckAuthorized() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		
		String aid=request.getParameter("aid");
		String psw=request.getParameter("psw");
		
		Connection conn;
		PreparedStatement pst;
		ResultSet rs;
		
		try
		{
			conn=DbConnection.getConnection();
			
			pst=conn.prepareStatement("select * from admin where aid=? and pswd=?;");
			pst.setString(1, aid);
			pst.setString(2, psw);
			rs=pst.executeQuery();
			if(rs.next())
			{
				response.sendRedirect("WelcomeAuthorized.jsp");
			}
			else
			{
				response.sendRedirect("Error.jsp");
			}

		}
		catch(Exception e)
		{
			out.println(e);
		}
	}

}
