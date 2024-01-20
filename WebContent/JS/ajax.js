// <-- http request object for IE and others creation-
function createRequestObject() {
	var tmpXmlHttpObject;
	if (window.XMLHttpRequest) {
		tmpXmlHttpObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		tmpXmlHttpObject = new ActiveXObject("Microsoft.XMLHTTP");
	}
	return tmpXmlHttpObject;
}
var http = createRequestObject();
var id = 'sk';
/* creation done--->  
*/


function ajaxLoadForm() {
	http.open('get', "AnonyComplaintForm.jsp");
	http.onreadystatechange = processResponse;
	http.send(null);
	setTimeout(function() {
		document.getElementById('termacc').style.left = '1000px';
		surfur();
	}, 2000)

}

function ajaxLoadForm2() {
	http.open('get', "Loader.html");
	http.onreadystatechange = processResponse;
	http.send(null);
}


// default processResponse single tag value
function processResponse() {
	if (http.readyState == 4) {
		var response = http.responseText;
		document.getElementById("termacc").innerHTML = response;
	}
}
//End ---------->


function checking() {
	var checkbox = document.getElementById("checkbox")
	var btn = document.getElementById("submitbt")
	var x = $('#myField')[0].checkValidity();



	if (checkbox.checked && x) {
		btn.disabled = false;
		btn.style.opacity = "1";
		btn.style.cursor = "pointer";
	}
	else {
		btn.style.cursor  = "no-drop";
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
	document.getElementById("submitbt").style.display = "block";
	document.getElementById("first").style.display = "none";
	document.getElementById("nextbt").style.display = "none";
	checking();
}

function validatType() {
	var x = document.getElementById("types").value;
	if (x != "none")
		document.getElementById("evidence").style.display = "block";
	else
		document.getElementById("evidence").style.display = "none";

	switch (x) {
		case "audio":
			document.getElementById("evidence").accept = "audio/*";
			break;
		case "photo":
			document.getElementById("evidence").accept = "image/*";
			break;
		case "PDF":
			document.getElementById("evidence").accept = "application/pdf";
			break;
	}
}