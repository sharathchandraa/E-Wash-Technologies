<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html><head>
<meta charset="utf-8">
<title>registration_evaluation</title>

<style type="text/css">
.blue{background:url(blue2.png) no-repeat; width:100px; height:25px; border: 1px solid #848484;
    -webkit-border-radius: 30px; 
    -moz-border-radius: 30px; 
    border-radius: 30px;
	color:white;
}


table {
    border: 1px solid grey;
	width: 40%;
	
}

th {
     position: center;
     border: 1px solid grey;
     width: 100%; 
     text-align: center;
     background-color: solid grey;
     color: grey;
}
tr{

align:center;

}

</style>

<style type="text/css">
p {
    font-size: 18px;
	font-style: bold;
	font-weight: light;
	padding:7px;
    margin:1px;
}
</style>


</head>
<body background="different.jpg">
Following are the details that you entered so far.
<script type="text/javascript" src="jquery-1.11.1.min.js"></script>
<script type="text/javascript">

function push_all(){

$('#confirm_all').submit();
}

</script>
<% 
String lastname=(String)session.getAttribute("lastname"); 
String firstname=(String)session.getAttribute("firstname"); 
String email=(String)session.getAttribute("email"); 
String mobilenumber=(String)session.getAttribute("mobilenumber"); 
String profilename=(String)session.getAttribute("profilename");
String creditcardname=(String)session.getAttribute("creditcardname");
String creditcardnumber=(String)session.getAttribute("creditcardnumber");
String creditcardsecuritycode=(String)session.getAttribute("creditcardsecuritycode");
String creditcardrecharge=(String)session.getAttribute("creditcardrecharge"); 
%>

<form method="post" id="confirm_all" action = dbasepusher>
<table align="center">

<tr>
<td align="right">
<p><font color="#006699">Profile Name:</font></p>
</td>
<td align="right">
<% out.print(profilename); %>
</td>
</tr>
</table>

<br><br>
<table align="center">

<th>Basic details</th>

</table>
<table align="center">



<tr>

<td align="left">
<p><font color="#006699">Last Name:</font></p> </td>
<td align="left">
<% out.print(lastname); %>
</td>
</tr>

<tr>
<td align="left">
<p><font color="#006699">First Name:</font></p>
</td><td align="left">

<% out.print(firstname); %>
</td>



</tr>

<tr>
<td align="left">
<p><font color="#006699">E-mail Address:</font></p>
</td><td align="left">
<% out.print(email); %>
</td>



</tr>

<tr>
<td align="left">
<p><font color="#006699">Mobile Number:</font> </p></td><td align="left"><% out.print(mobilenumber); %>


</td>
</tr>

</table>
<br><br>
<table align="center">


<th>Payment Options</th>
</table>
<table align="center">

<tr>
<td align="right">
<p><font color="#006699">Name on Card:</font> </p>
</td>
<td align="left">
<% out.print(creditcardname); %>
</td>
</tr>
<tr>
<td align="right">
<p><font color="#006699">Credit Card Number:</font></p>
</td>
<td align="left">
<% out.print(creditcardnumber); %>
</td>
</tr>
<tr>
<td align="right">
<p><font color="#006699">Credit Card Security Code:</font></p>
</td>
<td align="left">
<% out.print(creditcardsecuritycode); %>
</td>
</tr>
<tr>
<td align="right">
<p><font color="#006699">Credit Card Recharge:</font></p>
</td>
<td align="left">
<% out.print(creditcardrecharge); %>
</td>
</tr>
</table>
<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
<tr>
<td align="center">
<input type=button  value="All set!" onclick="push_all()" class="blue">
</td>
<td align="left">
<input type=button onclick="window.location.href='registration_page.jsp'" value="Start Over!" class="blue">
</td>
</tr>
</form>
</body>
</html>


