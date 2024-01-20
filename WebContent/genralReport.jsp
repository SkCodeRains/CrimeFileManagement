<%@page import="mybeans.DbConnection"%>
<%@page import="java.sql.*"%>
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
			http.open("POST", "CompDelete2", true);
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
		http.open("POST", "statechange2", true);
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
			CallableStatement st = cn.prepareCall("{call getComplaintsG(?)}");
			st.setString(1, request.getParameter("id"));
			boolean ff = st.execute();
			ResultSet rs = st.getResultSet();

			if (rs.next()) {
				if (rs.getString(10).equalsIgnoreCase("waiting")) {
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
			<td>Sub_Category</td>
			<td><%=rs.getString(3)%></td>
		</tr>
		<tr>
			<td>AppDate</td>
			<td><%=rs.getString(4)%></td>
		</tr>
		<tr>
			<td>AppTime</td>
			<td><%=rs.getString(5)%></td>
		</tr>
		<tr>
			<td>Delay_Reason</td>
			<td><%=rs.getString(6)%></td>
		</tr>
		<tr>
			<td>Incident_Occur</td>
			<td><%=rs.getString(7)%></td>
		</tr>
		<tr>
			<td>Evidence</td>
			<td><%=rs.getString(8)%></td>
		</tr>
		<tr>
			<td>Open</td>
			<td>
				<a href="fileRead2.jsp?id=<%=rs.getString(1)%>" target="_blank">Open</a>
			</td>
		</tr>
		<tr>
			<td>Additional_Info</td>
			<td><%=rs.getString(9)%></td>
		</tr>


		<tr>
			<td>Status</td>
			<td>
				<select id="stateChanger">
					<option><%=rs.getString(10)%>
					</option>
					<option><%=option2%>
					</option>
				</select>
				<button onclick="javascript:statusChange('<%=rs.getString(1)%>')">Submit</button>
			</td>
		</tr>






		<tr>
			<td>DOC</td>
			<td><%=rs.getString(11)%></td>
		</tr>

		<tr>
			<%
				try {
				rs.close();
				System.out.println(st.getMoreResults());
				rs = st.getResultSet();
				rs.next();
			} catch (Exception e) {
				System.out.println(e);
			}
			%>
			<td>DELETE</td>
			<td>
				<a href="javascript:deleting('<%=rs.getString(1)%>')">Click Here</a>
			</td>
		</tr>

		<tr>
			<td>Complainant_Name</td>
			<td><%=rs.getString(2)%></td>
		</tr>
		<tr>
			<td>Gender</td>
			<td><%=rs.getString(3)%></td>
		</tr>
		<tr>
			<td>DOB</td>
			<td><%=rs.getString(4)%></td>
		</tr>
		<tr>
			<td>Mobile</td>
			<td><%=rs.getString(5)%></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><%=rs.getString(6)%></td>
		</tr>
		<tr>
			<td>Address</td>
			<td><%=rs.getString(7)%></td>
		</tr>
		<tr>
			<td>Relation_Victim</td>
			<td><%=rs.getString(8)%></td>
		</tr>
		<tr>
			<td>Any_Id_of_Victim</td>
			<td><%=rs.getString(9)%></td>
		</tr>
		<tr>
			<td>Any_Id_of_Victim</td>
			<td><%=rs.getString(10)%></td>
		</tr>
		<%
			try {
			rs.close();
			System.out.println(st.getMoreResults());
			rs = st.getResultSet();
			rs.next();
		} catch (Exception e) {
			System.out.println(e);
		}
		%>
		<tr>
			<td>Suspect_Name</td>
			<td><%=rs.getString(2)%></td>
		</tr>
		<tr>
			<td>Suspect_Id</td>
			<td><%=rs.getString(3)%></td>
		</tr>
		<tr>
			<td>Id_Number</td>
			<td><%=rs.getString(4)%></td>
		</tr>
		<tr>
			<td>Address</td>
			<td><%=rs.getString(5)%></td>
		</tr>
		<tr>
			<td>Additional_Info</td>
			<td><%=rs.getString(6)%></td>
		</tr>



		<%
			}

		} catch (Exception e) {

		}
		%>


	</table>
</body>
</html>