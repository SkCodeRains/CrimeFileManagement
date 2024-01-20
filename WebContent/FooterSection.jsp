<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
</html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>

 body{
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
 }
 
 h4{
  color: #000080;
 }
 h3{
  color: #000080;
 }
 p{
  color: white;
 }
 a{
  text-decoration: none;
  color: #F2F4F4;
 }

.grid-container {  
  display: grid;
  grid-template-columns: auto auto auto auto;
  grid-gap: 0px;
  background-color: #295fa6;
  padding: 10px;
}

.grid-container > div {
  background-color: #295fa6;
  padding: 20px 0;
  font-size: 14px;
}

.item1 {
  grid-column-end: span 2;
  margin-left: 70px;
  text-align: none;
  margin-top: 15px;
}
.item2 {
  grid-column-end: span 2;
  margin: 15px;
  text-decoration: none;
  color: white;
}
.item3 {
  grid-column-end: span 2;
  margin: 15px;
  text-align: none;
  color: white;
}
.item4 {
  grid-column-end: span 2;
  margin: 15px;
  text-align: none;
}

.linkhover:hover{
  color: #000080;
  font-weight: bold;
  font-size: 15px;
}
.social {
  color: #000080;
  text-shadow: black;
  grid-column-end: span 8;
  text-align: center;
}

input[type=text], input[type=email], input[type=file], textarea {  
  width: auto;  
  padding: 15px;  
  margin: 5px 0 22px 0;  
  display: inline-block;  
  border: 2px solid white;   
  background: #f1f1f1;  
} 
.btn {  
  background-color: #000080;  
  color: white;  
  padding: 16px 20px;  
  margin: 8px 0;  
  border: 2px solid #000080;  
  cursor: pointer;  
  width: auto;  
    
} 
.btn:hover{
  background-color: #295fa6;
  color: white;
  border: 2px solid #000080;
  transition: 0.50s;
  cursor: pointer;
}

socialbutton{
 float:;
 border-radius: 0%;
}

nametag{
 float: ;
}

.fa {
  padding: 10px;
  font-size: 16px;
  width: 35px;
  height:35px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
  Border-radius: 50%;
  
}

.fa:hover {
   color: white;
   opacity: 0.6;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-google {
  background: #dd4b39;
  color: white;
}

.fa-linkedin {
  background: white;
  color: gray;
}
.fa-instagram {
  background: white;
  color: gray;
}

.fa-skype {
  background: white;
  color: gray;
}

</style>
</head>
<body>

<div class="grid-container">

  <div class="item1">
  <h3>Contact Us</h3>
  <p> +91 866886 2013<br>
  <a href="" class="linkhover">info@onlinecrimefile.com</a><br>
  <a href="" class="linkhover">www.onlinecrimefile.com</a><br>
  </div>
    
  <div class="item2">
  <h3>Quick Links</h3>
   <div class="linksColor">
  <a href="" class="linkhover">Report CyberCrime</a><br>
  <a href="" class="linkhover">Track Your Report</a><br>
  <a href="" class="linkhover">Contact Authorized</a><br>
  <a href="" class="linkhover">Wanted Persons</a><br>
  <a href="" class="linkhover">Helpline</a><br>
  <a href="" class="linkhover">News &amp; Updates</a>
   </div>
  </div>
  
  <div class="item3">
    <h3>Helpful Links</h3>
     <div class="linksColor">
      <a href="" class="linkhover">Feedback</a><br>
      <a href="" class="linkhover">FAQ</a><br>
      <a href="" class="linkhover">Contact Us</a><br>
      <a href="" class="linkhover">Website Policies</a><br>
      <a href="" class="linkhover">Disclaimer</a>
     </div>
  </div>  
  
  <div class="item4">
       <h3>Subscribe More Info</h3>
        <form method="post" action="subscribe">
        <input type="email" name="eml" class="txtemail" placeholder="Enter Your Email">
        <input type="submit" class="btn" value="Subscribe">
        </form>  
        
        <h4>Send us your feedback</h4>
        <a href="" class="linkhover">feedback@onlinecrimefile.com</a><br>
        
  </div>
  
  <div class="social">
    <hr>
      <div class="nametag">
       Designed &amp; Developed by Group <br>
       Kashif | Harshada | Sanket <br>
       &copy;MCA Department 2020, All right reserved.
      </div>
        <div class="socialbutton">
         <a href="https://www.facebook.com/kashifians/" target="_blank" class="fa fa-facebook"></a>
         <a href="https://www.twitter.com/kashifians" target="_blank" class="fa fa-twitter"></a>
         <a href="https://mail.google.com/"           target="_blank" class="fa fa-google"></a>
        </div>
  </div>
  
</div>
</body>
</html>
