<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!-- Project Developed By KASHIF  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Anonymous Terms &amp; Conditions</title>
<style type="text/css">
.termbox {
	/*border : 3px solid DarkBlue;*/
	width: 50%;
	font-size: 16px;
	background-color: lightgrey;
	margin-top: 35px;
	/*margin-bottom: 100px;*/
	margin-right: 120px;
	margin-left: 120px;
}

.btn {
	background-color: #000080;
	color: white;
	padding: 16px 20px;
	margin: 8px;
	border: none;
	cursor: pointer;
	/* width: 100%;*/
	opacity: 0.9;
	float: inherit;
	align: center;
}

.btn:hover {
	background-color: rgb(247, 95, 95);
}
</style>
<jsp:include page="HeadSection.html"></jsp:include>
</head>
<body>


	<div id="termacc">


		<div class="termbox">
			<br>
			<h3 style="color: #000080; text-align: center;">Anonymously Complaint</h3>
			<hr>
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Prior to filing a complaint with this portal, we would request you to read the below information regarding
			terms and conditions.
			<hr>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The information I've provided on this form is correct to the best of my knowledge. I acknowledge that providing
			false information could make me liable to penal actions under Indian Laws.
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;I understand that action on the complaints reported on this portal shall be taken by concerned authorities as
			per Indian Laws.
			<br>
			<h4 style="text-align: center;">We thank you for your cooperation.</h4>

			<div style="text-align: center;">
				<a href="AnonyComplaintForm.jsp">
					<input type="button" class="btn" value="I Accept">
				</a>
			</div>
		</div>

	</div>

</body>
</html>