<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/corevalues.css">
<title>OnlineCrimeFileManagement</title>
<link rel="shortcut icon" href="Images/Satyamev.png" type="images/png"/>
<jsp:include page="HeadSection.html"></jsp:include>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

img{
Border-radius:%;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 20%;
  margin-bottom: 16px;
  padding: 0 8px;
  background-color: #f1f1f1f1;
}
p{
 color:black;
}
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0);
  margin: 8px;
  text-align: center;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: black;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}



@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}

.fa {
  padding: 10px;
  font-size: 16px;
  width: 20px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
  Border-radius: 0%;
  
}

</style>
</head>
<body>
 <h2 style="text-align:center;color:#000080;">Our Core Values</h2>
 <p style="text-align:center;color:gray;font-size:18px;">The Core Values We Live By</p>
<div class="flex-container">
  <div><button class="button button5"><b>K</b>nowledge</button></div>
  <div><button class="button button5"><b>A</b>utonomy</button></div>
  <div><button class="button button5"><b>S</b>ecurity</button></div>  
  <div><button class="button button5"><b>H</b>ope</button></div>
  <div><button class="button button5"><b>I</b>ntegrity</button></div>
  <div><button class="button button5"><b>F</b>airness</button></div>
</div>
<br>
     
     <div class="mission" style="background-color: #f1f1f1f1;">
     
     <h2 style="text-align:center;color:#000080;">Our Mission &amp; Vision</h2>
    
     <p style="color:black;margin-left:15%;margin-right:15%;">
     Crime File Management System is about filling an online complaint against any crime or cyber crime in case of victim or witnessed by the user.
     The System provides easiest and fastest way to register a complaint and a crime or registering for a missing complaint.
     The system helps the user to check the status of the complaint which makes the user to use it effectively and efficiently.
     <br><br>
    
    <img alt="map" src="Images/map.png">
    
     </p>
     
     
     
     </div>
     
     
     <div class="team">
      <h2 style="text-align:center;color:#000080;"> Project Developers Team</h2>
      
      
  <div class="row">
  
  <div class="column"></div>
  
  <div class="column">
    <div class="card">
  
      <img src="Images/Teams/kashhh.png" alt="Jane" style="width:50%;height:20%;">
      <div class="container">
        <h3>Kashif Husain</h3>
        <p class="title">Designer &amp; Coder</p>
        <a href="https://www.linkedin.com/in/kashif-husain/" target="_blank" class="fa fa-linkedin"></a>
        <a href="https://www.twitter.com/kashifians"         target="_blank" class="fa fa-skype"></a>
        <a href="https://www.instagram.com/k.a.s.h_i.f"      target="_blank" class="fa fa-instagram"></a>
        <!-- <p><button class="button">Contact</button></p> -->
    
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="Images/Teams/harsha.png" alt="Mike" style="width:60%;height:20%" >
      <div class="container">
        <h3>Harshada Dewalkar</h3>
        <p class="title">Research Analyst</p>
        
        <a href="https://www.linkedin.com/in/kashif-husain/" target="_blank" class="fa fa-linkedin"></a>
        <a href="https://www.twitter.com/kashifians"         target="_blank" class="fa fa-skype"></a>
        <a href="https://www.instagram.com/k.a.s.h_i.f"      target="_blank" class="fa fa-instagram"></a>
        <!-- <p><button class="button">Contact</button></p> -->
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="Images/Teams/sanket.png" alt="John" style="width:60%;height:30%">
      <div class="container">
        <h3>Sanket Pempakwar</h3>
        <p class="title">Database Administrator</p>

        <a href="https://www.linkedin.com/in/kashif-husain/" target="_blank" class="fa fa-linkedin"></a>
        <a href="https://www.twitter.com/kashifians"         target="_blank" class="fa fa-skype"></a>
        <a href="https://www.instagram.com/k.a.s.h_i.f"      target="_blank" class="fa fa-instagram"></a>
       <!-- <p><button class="button">Contact</button></p> -->
      </div>
    </div>
  </div>


  <div class="column"></div>
      
  </div>
  </div>

<!-- footerSection -->
<jsp:include page="FooterSection.jsp"></jsp:include>

</body>
</html>
