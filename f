<!DOCTYPE html>
<html>
<head>
<title>Card Validation</title>
</head>
<body>

<h2>Form Validation</h2>

Name: <input type="text" id="name"><br><br>

Card Number: <input type="text" id="card"><br><br>

CVV: <input type="text" id="cvv"><br><br>

Expiry Month: <input type="text" id="month" placeholder="MM"><br><br>

Expiry Year: <input type="text" id="year" placeholder="YYYY"><br><br>

<button onclick="validate()">Submit</button>

<script>
function validate() {

let name = document.getElementById("name").value;
let card = document.getElementById("card").value;
let cvv = document.getElementById("cvv").value;
let month = document.getElementById("month").value;
let year = document.getElementById("year").value;

// Name
if (name == "" || !/^[A-Za-z ]+$/.test(name)) {
alert("Name must contain only alphabets");
return;
}

// Card Number
if (!/^[456][0-9]{15}$/.test(card)) {
alert("Card must start with 4,5,6 and be 16 digits");
return;
}

// CVV
if (!/^[0-9]{3}$/.test(cvv)) {
alert("CVV must be 3 digits");
return;
}

// Month check
if (!/^(0?[1-9]|1[0-2])$/.test(month)) {
alert("Enter valid month (1-12)");
return;
}

// Year check
if (!/^[0-9]{4}$/.test(year)) {
alert("Enter valid year (4 digits)");
return;
}

// SIMPLE Expiry Check
let currentYear = new Date().getFullYear();
let currentMonth = new Date().getMonth() + 1;

if (year < currentYear || (year == currentYear && month < currentMonth)) {
alert("Expiry date must be in future");
return;
}

// Success
alert("Form Submitted Successfully");

}
</script>

</body>
</html>
