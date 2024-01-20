<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/Forms.css">
<title>OnlineCrimeFileManagement</title>
<link rel="shortcut icon" href="Images/Satyamev.png" type="images/png"/>
<jsp:include page="HeadSection.html"></jsp:include>
</head>
<body>
<div class="containerbox" >
<h3>Authorized Login</h3>

<form name="frm" method="post" action="CheckAuthorized">
<table  style="margin-left:20px;">
<tr>
    <td>Authorized Id 
    <br><input type="text" name="aid">
</tr>
<tr>
    <td>Password
    <br><input type="password" name="psw">
</tr>
<tr>
    <td><input type="submit" value="Authorized Login">
</tr>
</table>
</form>
 
<img alt="map" src="Images/map.png">

</div>


</body>
</html>

