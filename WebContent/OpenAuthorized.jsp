<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body {
	font-family: sans-serif;
}

input[type=text], input[type=password], input[type=number], input[type=email],
	select, textarea {
	width: 100%;
	padding: 6px;
	border: 1px solid #ccc;
	margin-top: 3px;
	margin-bottom: 8px;
	resize: horizontal;
	background-color: none;
}

input[type=date], input[type=time] {
	width: 43%;
	padding: 6px;
	border: 1px solid #ccc;
	margin-top: 3px;
	margin-bottom: 8px;
	resize: vertical;
	background-color: none;
}

input[type=submit] {
	background-color: #000080;
	color: white;
	padding: 12px 20px;
	border: none;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: rgb(247, 95, 95);
}
</style>

<title>Insert title here</title>
<jsp:include page="AuthorizedHead.jsp"></jsp:include>
</head>
<body>
	<%
		String id = String.valueOf(session.getAttribute("aid"));

	if (id.equals(null) || id.equals("null")) //check condition
	{
		response.sendRedirect("AuthorizedLogin.jsp");
	}
	%>

	<br>

	<h2>Create New Authorized Details</h2>
	<form name="frm" method="post" action="###">
		<table>
			<tr>
				<td>Full Name
				<td>
					<input type="text" name="anm" placeholder="">
			</tr>
			<tr>
				<td>Userid
				<td>
					<input type="text" name="aid" placeholder="">
			</tr>
			<tr>
				<td>Password
				<td>
					<input type="password" name="pswd" placeholder="">
			</tr>
			<tr>
				<td>Mobile Number
				<td>
					<input type="number" name="mno" placeholder="">
			</tr>
			<tr>
				<td>Email Id
				<td>
					<input type="email" name="eml" placeholder="">
			</tr>
			<tr>
				<td>
				<td>
					<input type="submit" value="Create Submit">
			</tr>
		</table>
	</form>


</body>
</html>