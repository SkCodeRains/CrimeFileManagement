<%@page import="java.io.OutputStream"%>
<%@page import="mybeans.DbConnection"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = (request.getParameter("id"));
	Blob file = null;
	byte[] fileData = null;
	try {
		Connection conn = DbConnection.getConnection();

		PreparedStatement pt = conn.prepareStatement("SELECT Evidence,EvidenceType FROM complaints where Complaint_Id=?");
		pt.setString(1, request.getParameter("id"));
		ResultSet rs = pt.executeQuery();

		while (rs.next()) {
			file = rs.getBlob(1);
			fileData = file.getBytes(1, (int) file.length());
			response.setContentType(rs.getString(2));
			OutputStream output = response.getOutputStream();
	%>
	<div>
		<%
			output.write(fileData);
		response.getOutputStream().flush();
		%>
	</div>



	<%
		}

	} catch (Exception ex) {
	System.out.println(ex);
	}
	%>

</body>
</html>