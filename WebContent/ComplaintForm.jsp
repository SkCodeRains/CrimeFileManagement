<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/Forms.css">
<script src="JS/jquery.min.js"></script>
<script src="JS/ajax.js"></script>
<title>Online Crime File Management</title>
<jsp:include page="HeadSection.html"></jsp:include>

<style></style>

<script type="text/javascript">
	function checking() {
		var checkbox = document.getElementById("checkbox")
		var btn = document.getElementById("submitbt")
		var x = $('#myField')[0].checkValidity();

		if (checkbox.checked && x) {
			btn.disabled = false;
			btn.style.opacity = "1";
			btn.style.cursor = "pointer";
		} else {
			btn.style.cursor = "no-drop";
			btn.disabled = true;
			btn.style.opacity = "0.2";
		}
	}

	function surfur() {
		document.getElementById("first").style.display = "block";
		document.getElementById("nextbt").style.display = "block";
		document.getElementById("submitbt").style.display = "none";
		document.getElementById("backbt").style.display = "none";
		document.getElementById("second").style.display = "none";

	}

	function Next() {
		document.getElementById("second").style.display = "block";
		document.getElementById("backbt").style.display = "block";
		document.getElementById("submitbt").style.display = "none";
		document.getElementById("first").style.display = "none";
		document.getElementById("nextbt").style.display = "block";
	}
	function Next1() {
		checking();
		document.getElementById("third").style.display = "block";
		document.getElementById("backbtn").style.display = "block";
		document.getElementById("submitbt").style.display = "block";
		document.getElementById("second").style.display = "none";
		document.getElementById("nextbt").style.display = "none";
	}

	function backedup() {
		document.getElementById("third").style.display = "none";
		document.getElementById("backbtn").style.display = "none";
		document.getElementById("submitbt").style.display = "none";
		Next();
	}
</script>

</head>
<body onload="surfur()">

	<form name="ccfrm" method="post" id="myField" action="ccnaUpload" enctype="multipart/form-data">

		<div class="containerbox">

			<div id="first" style="display: none;">

				<h2>Complaint Details</h2>
				<table>
					<tr>
						<td>Category of Complaint
						<td>
							<select name="Category">
								<option>Select Category of Complaint</option>
								<option value="aus">Social Media Crime</option>
								<option value="can">Online Financial Frauds</option>
								<option value="usa">Hacking</option>
								<option value="usa">Ransomware</option>
								<option value="ind">Mobile Crimes</option>
								<option value="ind">Cyber Trafficking</option>
								<option value="pak">Cryptocurrency Crime</option>
							</select>
					</tr>
					<tr>
						<td>Sub-Category of Complaint
						<td>
							<select name="sCategory">
								<option>Select Category of Complaint</option>
								<option value="aus">Australia</option>
								<option value="can">Canada</option>
								<option value="usa">USA</option>
								<option value="ind">India</option>
								<option value="pak">Pakistan</option>
							</select>
					</tr>
					<tr>
						<td>
							Aproximate Date &amp; Time
							<br>
							(incident/receiving/viewing of content)
						<td>
							<input type="date" id="lname" name="date" placeholder="">
							<input type="time" id="lname" name="time" placeholder="">
					</tr>
					<tr>
						<td>Reason for Delay in Reporting
						<td>
							<input type="text" name="RFDIR" placeholder="">
					</tr>
					<tr>
						<td>Where did the incident occur ?
						<td>
							<select name="occurapps">
								<option>Select Application Source</option>
								<option value="hike">Hike</option>
								<option value="whatsapp">Whatsapp</option>
								<option value="telegram">Telegram</option>
								<option value="facebook">Facebook</option>
								<option value="instagram">Instagram</option>
								<option value="wechat">WeChat</option>
								<option value="email">Email</option>
								<option value="youtube">Youtube</option>
								<option value="twitter">Twitter</option>
								<option value="snapchat">Snapchat</option>
								<option value="weburl">Website URL</option>
								<option value="takatak">TaKaTak</option>
								<option value="linkedin">LinkedIn</option>
								<option value="other">Other</option>
							</select>
					</tr>
					<tr>
						<td>
							Supporting Evidence
							<br>
							(upload Media/Image/PDF/etc..)
						<td>
							Select Type First
							<select name="Type" id="types" onchange="validatType()" required="required">
								<option value="none">None</option>
								<option value="photo">photo</option>
								<option value="PDF">PDF</option>
								<option value="audio">audio</option>
							</select>
							<input type="file" name="evidence" id="evidence" placeholder="" style="display: none;" required="required">
					</tr>
					<tr>
						<td>
							Please Provide Any Additional Information
							<br>
							&amp; Explanation about the Incident.
						<td>
							<textarea name="PPAAI" placeholder="Write Explanation.. Maximum of 1000 Characters" style="height: 60px"></textarea>
					</tr>
					<tr>
						<td>
						<td>
							<input id="nextbt" type="button" onclick="Next()" value="Save &amp Next" style="float: right;">
					</tr>
				</table>
			</div>


			<div id="second" style="display: none;">
				<h2>Suspect Details</h2>
				<table>
					<tr>
						<td>Suspect Name
						<td>
							<input type="text" name="Sname" placeholder="">
					</tr>
					<tr>
						<td>Suspect Id
						<td>
							<select name="SuspectId" id="susdrop">
								<option value="aus">Aadhar Card</option>
								<option value="can">Driving License</option>
								<option value="usa">Voter Id</option>
								<option value="ind">Pan Card</option>
								<option value="pak">Passport</option>
								<option value="pak">Number</option>
								<option value="pak">Number</option>
								<option value="pak">Other</option>
							</select>
						<td>
							<input type="text" name="numbr" placeholder="Id Number">
					</tr>
					<tr>
						<td>Suspect Full Address
						<td>
							<textarea name="SADDRESS" placeholder="" style="height: 30px"></textarea>
					</tr>
					<tr>
						<td>
							Please Provide Any Additional
							<br>
							Information &amp;about the Suspect.
						<td>
							<textarea name="SPPAA" placeholder="Write Explanation.. Maximum of 1000 Characters" style="height: 60px"></textarea>
					</tr>
					<tr>
						<td>
							<br>
							<input type="button" id="backbt" style="float: left; display: none;" onclick="surfur()" value="Back">
						<td>
							<br>
							<input id="nextbt" type="button" style="float: right;" onclick="Next1()" value=" Save &amp Next">
					</tr>
				</table>
			</div>


			<div id="third" style="display: none;">
				<h2>Complainant Details</h2>
				<table>
					<tr>
						<td>Complainant Name
						<td>
							<input type="text" name="unm" placeholder="YourName..">
					</tr>
					<tr>
						<td>Gender
						<td>
							<input type="radio" name="rzn" Value="male">
							Male
							<input type="radio" name="rzn" placeholder="female">
							Female
					</tr>
					<tr>
						<td>Date of Birth
						<td>
							<input type="Date" name="dob" placeholder="DD/MM/YYYYY">
					</tr>
					<tr>
						<td>Your Mobile
						<td>
							<input type="number" name="wi" placeholder="1234567890">
					</tr>
					<tr>
						<td>Your Email
						<td>
							<input type="email" name="Email" placeholder="@">
					</tr>
					<tr>
						<td>Permanent Address
						<td>
							<textarea name="uaddress" style="height: 30px" placeholder="Include Pincode"></textarea>
					</tr>
					<tr>
						<td>
							<h3>Victim's Details :</h3>
						<td>
					</tr>
					<tr>
						<td>Relation with Victim
						<td>
							<select name="rela">
								<option value="aus">Self</option>
								<option value="can">Father</option>
								<option value="usa">Mother</option>
								<option value="ind">Sister</option>
								<option value="pak">Brother</option>
								<option value="pak">Other</option>
								<option value="pak">other</option>
								<option value="pak">Other</option>
							</select>
					</tr>
					<tr>
						<td>any National Id of Victim
						<td>
							<input type="text" name="wiv" placeholder="">
					</tr>
					<tr>
						<td>
							Please Provide Any Additional Information
							<br>
							about the Victim &amp; Complaint..
						<td>
							<textarea name="PAAIV" placeholder="Write Explanation.. Maximum of 1000 Characters" style="height: 60px"></textarea>
					</tr>
					<tr>
						<td>
						<td>
							Are you sure to submit ! Accept it
							<input type="checkbox" id="checkbox" onchange="checking()">
					</tr>
					<tr>
						<td>
							<br>
							<input type="button" id="backbtn" style="float: left;" onclick="backedup()" value="Back">
						<td>
							<br>
							<input type="submit" id="submitbt" style="float: right;" disabled="disabled" value="Final Submit">
					</tr>
				</table>


			</div>
		</div>
	</form>


</body>
</html>