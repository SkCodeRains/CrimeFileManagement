<%@page import="java.sql.ResultSet"%>
<%@page import="mybeans.DbConnection"%>
<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%
	try {
	Connection con = DbConnection.getConnection();
	String id = request.getParameter("id"), type = request.getParameter("type");
	CallableStatement cst = con.prepareCall("{call " + type + "(?) }");
	cst.setString(1, id);
	ResultSet sr = cst.executeQuery();
	if (sr.next()) {
%>
<table>
	<tr>
		<td>Status</td>
		<td><%=sr.getString(1)%></td>

	</tr>
	<tr>
		<td>Date Of Complaint</td>
		<td><%=sr.getString(2)%></td>

	</tr>
	<tr>
		<td>police Station</td>
		<td><%=sr.getString(3)%></td>

	</tr>
	<tr>
		<td>District</td>
		<td><%=sr.getString(4)%></td>

	</tr>


</table>
<%
	} else {
%>
data not find please add right id
<%
	}
} catch (Exception e) {
System.out.print(e);
}
%>
