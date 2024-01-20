<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Anonymous COmplaint Form</title>
<link rel="stylesheet" type="text/css" href="css/Forms.css">
<script type="text/javascript" src="JS/ajax.js"></script>
<script src="JS/jquery.min.js"></script>
</head>
<body onload="surfur()">
	<jsp:include page="HeadSection.html"></jsp:include>
	<form name="frm" id="myField" method="post" action="formrendering" enctype="multipart/form-data">
		<div class="containerbox">
			<div id="first" style="display: none;">
				<h2>Anonymously Complaint Details</h2>
				<table>
					<tr>
						<td>Category of Complaint
						<td>
							<select name="anonycategory" required="required">
								<option>Select Category of Complaint</option>
								<option value="CP/CSAM">Child Pornography(CP) Child Sexual Abuse Material (CSAM)</option>
								<option value="R/GR">Rape/Gang Rape (RGR) Sexually Abusive Content</option>
								<option value="ExplicitContent">Sexually Explicit Content</option>
								<option value="other">Other</option>
							</select>
					</tr>
					<tr>
						<td>
							Approximate Date &amp; Time
							<br>
							(incident/receiving/viewing of content)
						<td>
							<input type="date" id="lname" name="appdates" placeholder="" required="required">
							<input type="time" id="lname" name="apptimes" placeholder="" required="required">
					</tr>
					<tr>
						<td>Reason for Delay in Reporting
						<td>
							<input type="text" name="rzn" placeholder="">
					</tr>
					<tr>
						<td>Where did the incident occur ?
						<td>
							<select name="occurapps" required="required">
								<option>Select Application Source</option>
								<option value="hike">Hike</option>
								<option value="whatsapp">WhatSapp</option>
								<option value="telegram">Telegram</option>
								<option value="facebook">FaceBook</option>
								<option value="instagram">InstaGram</option>
								<option value="wechat">WeChat</option>
								<option value="email">Email</option>
								<option value="youtube">YouTube</option>
								<option value="twitter">Twitter</option>
								<option value="snapchat">SnapChat</option>
								<option value="weburl">WebSite URL</option>
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
						<td>State
						<td>
							<input type="text" name="state" placeholder="" required="required">
					</tr>
					<tr>
						<td>District
						<td>
							<input type="text" name="dist" placeholder="" required="required">
					</tr>
					<tr>
						<td>PoliceStation
						<td>
							<input type="text" name="pstation" placeholder="" required="required">
					</tr>
					<tr>
						<td>
							Please Provide Any Additional Information
							<br>
							&amp; Explanation about the Incident.
						<td>
							<textarea name="addiinfo" placeholder="Write Explanation.. Maximum of 1000 Characters" style="height: 60px"></textarea>
					</tr>
					<tr>
						<td>
						<td>
							<input id="nextbt" type="button" onclick="Next()" value=" Save &amp Next">
					</tr>
				</table>
			</div>



			<div id="second" style="display: none;">
				<h2>Suspect Details</h2>
				<table>
					<tr>
						<td>Suspect Name
						<td>
							<input type="text" name="sname" placeholder="">
					</tr>
					<tr>
						<td>Suspect Id
						<td>
							<select name="sid" id="susdrop">
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
							<input type="text" name="sidno" placeholder="Id Number">
					</tr>
					<tr>
						<td>Suspect Full Address
						<td>
							<textarea name="saddress" placeholder="" style="height: 30px"></textarea>
					</tr>
					<tr>
						<td>
							Please Provide Any Additional
							<br>
							Information &amp;about the Suspect.
						<td>
							<textarea name="saddiinfo" placeholder="Write Explanation.. Maximum of 1000 Characters" style="height: 60px"></textarea>
					</tr>
					<tr>
						<td>
							Are you sure to submit ! Accept it
							<input type="checkbox" id="checkbox" onchange="checking()">
					</tr>
					<tr>
						<td>
							<br>
							<input type="button" id="backbt" style="float: left; display: none;" onclick="surfur()" value="Back">
						<td>
							<br>
							<input type="submit" id="submitbt" value="Final Submit" onclick="ajaxLoadForm2()" disabled="disabled">
					</tr>

				</table>
			</div>

		</div>
	</form>
</body>
</html>