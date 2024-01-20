g<%@page import="mybeans.DbConnection"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="AuthorizedHead.jsp"></jsp:include>
</head>
<body>
	<%-- 	<%
		String id = String.valueOf(session.getAttribute("aid"));

	if (id.equals(null) || id.equals("null")) //check condition
	{
		response.sendRedirect("AuthorizedLogin.jsp");
	}
	%> --%>
	<div style="color: #000080; background-color: lightgrey; margin-left: 15px;">
		Authorized id :
		<%-- 	<%=id%> --%>
	</div>
	<br>
	<br>



	<div id="coderainsMRX"></div>



	<div>
		
	</div>





	<img alt="map" src="Images/map.png">

</body>
</html>