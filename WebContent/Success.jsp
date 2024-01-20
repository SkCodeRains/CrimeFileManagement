<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Crime File Management</title>
<script src="JS/typewriter.js"></script>
<jsp:include page="HeadSection.html"></jsp:include>
<style>

body {
	text-align: center;
	padding: 40px 0;
	
}

.card {
	background: white;
	padding: 60px;
	border-radius: 4px;
	box-shadow: 0 2px 3px #C8D0D8;
	display: inline-block;
	margin: 0 auto;
}
</style>
<body>

	<div class="card">
		Your Complaint id Number is - <%=request.getParameter("id")%>
	</div>
	<br>
	<span style="color:red;">
	 Note Complaint id  for track status &amp; future reference purpose.
	</span>
	
</body>
</html>