
 var i = 0;
  var txt = 'Any Crimes that involves a Computer and Network.';
  var speed = 40;
  
function typeWriter()
{ 
  if (i < txt.length)
  {
    document.getElementById("typewriter").innerHTML += txt.charAt(i);
    i++;
    setTimeout(typeWriter, speed);
  }
}