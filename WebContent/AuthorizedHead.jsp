<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<script type="text/javascript">
	function objj() {
		var httpss;
		if (window.XMLHttpRequest) {
			httpss = new XMLHttpRequest();
		} else if (window.ActiveXObject) {
			httpss = new ActiveXObject("Microsoft.XMLHTTP")
		}

		return httpss;
	}
	function responeses() {
		if (http.readyState == 4) {
			var response = http.responseText;
			document.getElementById("coderainsMRX").innerHTML = response;
		}
	}
	var http = objj();
	function CheckAnonyComaplaint() {
		http.open('get', "CheckAnonyComaplaint.jsp");
		http.onreadystatechange = responeses;
		http.send(null);

	}
	function CheckCyberComaplaint() {
		http.open('get', 'CheckCyberComaplaint.jsp');
		http.onreadystatechange = responeses;
		http.send(null);
	}
	function OpenAuthorized() {
		http.open('get', 'OpenAuthorized.jsp');
		http.onreadystatechange = responeses;
		http.send(null);
	}
	function SearchComplaintId() {
		http.open('get', 'CheckCyberComaplaint.jsp');
		http.onreadystatechange = responeses;
		http.send(null);
	}
</script>
</head>
<body>

	<div class="navbar">
		<a href="WelcomeAuthorized.jsp" class="active">Home</a>

		<a onclick="javascript:CheckAnonyComaplaint()">Check Anonymous Complaints</a>
		<a onclick="javascript:CheckCyberComaplaint()">Check CyberCrime Complaints</a>
		<a onclick="javascript:OpenAuthorized()">New Authorization</a>
		<a onclick="">Search Complaint Id</a>
		<a href="Logout.jsp">Logout Admin</a>

	</div>


</body>
</html>
