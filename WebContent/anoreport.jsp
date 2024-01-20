<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.CallableStatement"%>
<%@page import="mybeans.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

	http = objj();
	function responeses() {
		if (http.readyState == 4) {
			var response = http.responseText;
			document.getElementById("coderainsMRX").innerHTML = response;
		}
	}

	function deleting(id) {
		var r = confirm("Are You Sure You Want To Delete This Complaint");
		if (r == true) {
			http.open("POST", "CompDelete", true);
			http.setRequestHeader("Content-type",
					"application/x-www-form-urlencoded");
			http.send("id=" + id);
			setTimeout(function() {
				window.location.replace("WelcomeAuthorized.jsp");
			}, 500);

		}
	}
	function statusChange(id) {
		var state = document.getElementById("stateChanger").value;
		http.open("POST", "statechange", true);
		http.setRequestHeader("Content-type",
				"application/x-www-form-urlencoded");
		http.send("id=" + id + "&state=" + state);
		setTimeout(function() {
			location.reload();
		}, 500);

	}
</script>
</head>
<body>

	<table>
		<%
			try {
			String option2 = "waiting";
			Connection cn = DbConnection.getConnection();
			CallableStatement st = cn.prepareCall("{call getAnoComplaints(?)}");
			PreparedStatement pst = cn.prepareStatement("select * from suspectdetails where Complaint_Id=?");
			pst.setString(1, request.getParameter("id"));
			st.setString(1, request.getParameter("id"));
			ResultSet rs = st.executeQuery();
			ResultSet rs2 = pst.executeQuery();
			if (rs.next() && rs2.next()) {
				if (rs.getString(12).equalsIgnoreCase("waiting")) {
			option2 = "Working";
				}
		%>
		<tr>
			<td>Complaint_Id</td>
			<td><%=rs.getString(1)%></td>
		</tr>
		<tr>
			<td>Category</td>
			<td><%=rs.getString(2)%></td>
		</tr>
		<tr>
			<td>AppDate</td>
			<td><%=rs.getString(3)%></td>
		</tr>
		<tr>
			<td>AppTime</td>
			<td><%=rs.getString(4)%></td>
		</tr>
		<tr>
			<td>Delay_Reason</td>
			<td><%=rs.getString(5)%></td>
		</tr>
		<tr>
			<td>Incident_Occur</td>
			<td><%=rs.getString(6)%></td>
		</tr>
		<tr>
			<td>Evidence</td>
			<td><%=rs.getString(7)%></td>
		</tr>
		<tr>
			<td>State</td>
			<td><%=rs.getString(8)%></td>
		</tr>

		<tr>
			<td>Open</td>
			<td>
				<a href="fileread.jsp?id=<%=rs.getString(1)%>" target="_blank">Open</a>
			</td>
		</tr>




		<tr>
			<td>District</td>
			<td><%=rs.getString(9)%></td>
		</tr>
		<tr>
			<td>Police_Station</td>
			<td><%=rs.getString(10)%></td>
		</tr>
		<tr>
			<td>Additinal_Info</td>
			<td><%=rs.getString(11)%></td>
		</tr>
		<tr>
			<td>Status</td>
			<td>
				<select id="stateChanger">
					<option><%=rs.getString(12)%>
					</option>
					<option><%=option2%>
					</option>
				</select>
				<button onclick="javascript:statusChange('<%=rs.getString(1)%>')">Submit</button>
			</td>
		</tr>

		<tr>
			<td>DOC</td>
			<td><%=rs.getString(13)%></td>
		</tr>

		<tr>
			<td>DELETE</td>
			<td>
				<a href="javascript:deleting('<%=rs.getString(1)%>')">Click Here</a>
				<%=rs.getString(13)%></td>
		</tr>

		<tr>
			<td>Suspect_Name</td>
			<td><%=rs2.getString(2)%></td>
		</tr>
		<tr>
			<td>Suspect_Id</td>
			<td><%=rs2.getString(3)%></td>
		</tr>
		<tr>
			<td>Id_Number</td>
			<td><%=rs2.getString(4)%></td>
		</tr>
		<tr>
			<td>Address</td>
			<td><%=rs2.getString(5)%></td>
		</tr>
		<tr>
			<td>Additional_Info</td>
			<td><%=rs2.getString(6)%></td>
		</tr>


		<%
			}

		} catch (Exception e) {

		}
		%>


	</table>
</body>
</html>