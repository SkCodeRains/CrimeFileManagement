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

  .container {
  padding: 64px;
}

.row:after {
  content: "";
  display: table;
  clear: both
}

.column-66 {
  float: left;
  width: 66.66666%;
  padding: 20px;
}

.column-33 {
  float: left;
  width: 33.33333%;
  padding: 20px;
}

.typewriter-font {
  font-size: 30px;
}

.xlarge-font {
  font-size: 64px;
  color: #000080;
}

/*__Button__*/
.button {
  
  color: #4682B4;
  padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
  background-color: white;
  border: 1px solid #4682B4;
}

.button:hover{
  background-color: #4682B4;
  border: 1px solid #4682B4;
  color: white;
  font-weight: ;
}
/*__ColorButton__*/
.colorbutton{
  color: white;
  padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
  background-color: #4682B4;
  border: 1px solid #4682B4;
}
.colorbutton:hover{
  background-color: white;
  border: 1px solid #4682B4;
  color: #4682B4;
  font-weight: ;
}

@media screen and (max-width: 1000px) {
  .column-66,
  .column-33 {
    width: 100%;
    text-align: center;
  }
}
</style>

</head>
<body onload="typeWriter()">


<!-- The HeadingSection -->
<div class="container">
  <div class="row">
  
    <div class="column-66">
      <span class="xlarge-font"><b>CyberCrime</b></span>
      <div class="typewriter-font" id="typewriter"></div>
      
      <div class="" style="background-color: #f1f1f1f1;">
      <p style="color:black;">
      <span style="font-size:30px;color:#4682B4 ;"><b></b></span>
      This portal caters to complaints pertaining to cyber crimes only with special focus on cyber crimes against women and children.
      It is imperative to provide correct and accurate details while filing complaint for prompt action.
      <br>
      <br>
      <b>Please contact local police in case of an emergency or for reporting crimes other than cyber crimes.<br>
      National police helpline number is 100. National women helpline number is 181.</b>
      <br>
      <br>
      </p>
      </div>
     
      <a href="AboutCyberComplaint.jsp">
      <button class="colorbutton">
      Read about CyberCrime
      </button></a>
      
      <a href="AboutAnonyComplaint.jsp">
      <button class="button">
      Read Report Anonymously
      </button></a>
      
    </div>
    
    <div class="column-33">
        <img src="Images/Satyamev.png" width="335" height="471">
    </div>
    
  </div>
</div>

    
<!-- thoughtslides -->
<jsp:include page="ThoughtSlide.html"></jsp:include>


<!-- footerSection -->
<jsp:include page="FooterSection.jsp"></jsp:include>

</body>
</html>