<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OnlineCrimeFileManagement</title>
<link rel="shortcut icon" href="Images/Satyamev.png" type="images/png"/>
<link rel="stylesheet" type="text/css" href="css/About.css">
<jsp:include page="HeadSection.html"></jsp:include>

<style></style>

</head>
<body>
<div class="heading" style="color:#000080;background-color:#f1f1f1;font-size: 27px;font-weight: Bold;margin:20px;">
LEARN ABOUT CYBERCRIME
</div>

<div class="collapsContainer">

<span class="">
Below is a list for some of the cybercrimes along with their indicative explanation. <br>
This is to facitilate better reporting of complaints. To show <b style="color:#000080;"> Click &amp; Unclick</b> it.
<br>
<br>
</span>

<button type="button" class="collapsible">CYBER BULLYING</button>
<div class="content">
  A form of harassment or bullying inflicted through the use of electronic or communication devices such as computer, mobile phone, laptop, etc.
</div>
<br>
<br>

<button type="button" class="collapsible">CYBER GROOMING</button>
<div class="content">
  Cyber Grooming is when a person builds an online relationship with a young person and tricks or pressures him/ her into doing sexual act.
</div>
<br>
<br>

<button type="button" class="collapsible">CYBER STALKING</button>
<div class="content">
   Cyber stalking is the use of electronic communication by a person to follow a person, or attempts to contact a person to foster personal interaction repeatedly despite a clear indication of disinterest by such person; or monitors the internet, email or any other form of electronic communication commits the offence of stalking.
</div>
<br>
<br>

<button type="button" class="collapsible">ONLINE JOB FRAUD</button>
<div class="content">
   Online Job Fraud is an attempt to defraud people who are in need of employment by giving them a false hope/ promise of better employment with higher wages.
</div>
<br>
<br>

<button type="button" class="collapsible">ONLINE DRUG TRAFFICKING</button>
<div class="content">
   Online Drug Trafficking is a crime of selling, transporting, or illegally importing unlawful controlled substances, such as heroin, cocaine, marijuana, or other illegal drugs using electronic means.
</div>
<br>
<br>

<button type="button" class="collapsible">PHARMING</button>
<div class="content">
  Pharming is cyber-attack aiming to redirect a website's traffic to another, bogus website.
</div>
<br>
<br>

<button type="button" class="collapsible">RANSOMWHERE</button>
<div class="content">
   Ransomware is a type of computer malware that encrypts the files, storage media on communication devices like desktops, Laptops, Mobile phones etc., holding data/information as a hostage. The victim is asked to pay the demanded ransom to get his device decrypts.
</div>
<br>
<br>

<button type="button" class="collapsible">SPAMMING</button>
<div class="content">
  Spamming occurs when someone receives an unsolicited commercial messages sent via email, SMS, MMS and any other similar electronic messaging media. They may try to persuade recepient to buy a product or service, or visit a website where he can make purchases; or they may attempt to trick him/ her into divulging bank account or credit card details.
</div>
<br>
<br>

<button type="button" class="collapsible">DEBIT/CREDIT CARD FRAUD</button>
<div class="content">
  Credit card (or debit card) fraud involves an unauthorized use of another's credit or debit card information for the purpose of purchases or withdrawing funds from it.
</div>
<br>
<br>


<button type="button" class="collapsible">SEXTING</button>
<div class="content">
   Sexting is an act of sending sexually explicit digital images, videos, text messages, or emails, usually by cell phone.
</div>
<br>
<br>

<button type="button" class="collapsible">VISHING</button>
<div class="content">
  Vishing is an attempt where fraudsters try to seek personal information like Customer ID, Net Banking password, ATM PIN, OTP, Card expiry date, CVV etc. through a phone call
</div>
<br>
<br>

<button type="button" class="collapsible">Upcoming</button>
<div class="content">
   Online Job Fraud is an attempt to defraud people who are in need of employment by giving them a false hope/ promise of better employment with higher wages.
</div>
<br>
<br>

<a href="https://en.wikipedia.org/wiki/Cybercrime" target="_blank">
<button type="button" class="collapsible" >Click here for More Info about CyberCrime
</button>
</a>
<br>
<br>


</div>
<script>


var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("aactive");
    var content = this.nextElementSibling;
    if (content.style.display === "block") {
      content.style.display = "none";
    } else {
      content.style.display = "block";
    }
  });
}
</script>




<br>
<!-- footer -->
<jsp:include page="FooterSection.jsp"></jsp:include>
</body>
</html>