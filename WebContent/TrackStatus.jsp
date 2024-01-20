<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/Forms.css">
<title>OnlineCrimeFileManagement</title>
<link rel="shortcut icon" href="Images/Satyamev.png" type="images/png" />
</head>
<body>
	<jsp:include page="HeadSection.html"></jsp:include><br>
	<div class="containerbox">
		<h3>Track Your Complaint Status</h3>


		<table>
			<tr>
				<td>
					Complaint No/Id
					<input type="text" name="cno" id="id" placeholder="Enter Complent Id " required="required">
					<input type="button" value="Show" onclick="track()">
			</tr>
		</table>


		<div id="status"></div>







		<script type="text/javascript">
			var tmpXmlHttpObject;
			function createRequestObject() {
				if (window.XMLHttpRequest) {
					tmpXmlHttpObject = new XMLHttpRequest();
				} else if (window.ActiveXObject) {
					tmpXmlHttpObject = new ActiveXObject("Microsoft.XMLHTTP");
				}
				return tmpXmlHttpObject;
			}
			var http = createRequestObject();

			function track() {
				id = document.getElementById("id").value;
				var type1 = "ANOtrack";
				var type2 = "COtrack";
				if ("ANO" == id.substring(0, 3)) {
					http.open('get', "Tracker.jsp?type=" + type1 + "&id=" + id);
				} else {
					http.open('get', "Tracker.jsp?type=" + type2 + "&id=" + id);
				}

				http.onreadystatechange = processResponse;
				http.send(null);

			}

			function processResponse() {
				if (http.readyState == 4) {
					var response = http.responseText;
					document.getElementById("status").innerHTML = response;
				}
			}
		</script>
	</div>
</body>
</html>
