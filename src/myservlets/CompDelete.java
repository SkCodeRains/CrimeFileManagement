package myservlets;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybeans.DbConnection;

@WebServlet("/CompDelete")
public class CompDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		Connection cn = DbConnection.getConnection();
		try {
			CallableStatement st = cn.prepareCall("{call DeleteAnonymous(?) }");
			st.setString(1, id);
			st.execute();
		} catch (Exception e) {
			System.out.println(e);
		}

	}

}
