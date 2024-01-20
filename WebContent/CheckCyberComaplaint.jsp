<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="mybeans.DbConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%-- 
<%
    String id=String.valueOf(session.getAttribute("aid"));

	if(id.equals(null) || id.equals("null")) //check condition
	{
		response.sendRedirect("AuthorizedLogin.jsp"); 
	}
%>

 --%>
	<table>
		<tr>

			<td>ID</td>
			<td>Category</td>
			<td>Sub-Category</td>
			<td>OPen</td>
		</tr>

		<%
			try {
			Connection cn = DbConnection.getConnection();
			CallableStatement st = cn.prepareCall("{call ShowG()}");
			ResultSet rs = st.executeQuery();
			while (rs.next()) {
		%><tr>

			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>

			<td>
				<a href="genralReport.jsp?id=<%=rs.getString(1)%>" target="_blank">Click here </a>
			</td>
		</tr>
		<%
			}
		} catch (Exception e) {

		}
		%>
	</table>



</body>
</html>