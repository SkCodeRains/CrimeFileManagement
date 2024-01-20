
<%@page import="mybeans.DbConnection"%>
<%@page import="java.sql.*"%>
<table>
	<tr>

		<td>ID</td>
		<td>Category</td>
		<td>OPen</td>
	</tr>

	<%
		try {
		Connection cn = DbConnection.getConnection();
		CallableStatement st = cn.prepareCall("{call ShowAnonymous()}");
		ResultSet rs = st.executeQuery();
		while (rs.next()) {
	%><tr>

		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>

		<td>
			<a href="anoreport.jsp?id=<%=rs.getString(1)%>" target="_blank">Click here </a>
		</td>
	</tr>
	<%
		}
	} catch (Exception e) {

	}
	%>
</table>