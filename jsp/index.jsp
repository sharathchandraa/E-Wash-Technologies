<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta content="charset=utf-8">
<title>E-Wash Payment Methods</title>
<link rel="stylesheet" href="jQueryTab.css" type="text/css" media="screen" />
<link rel="stylesheet" href="animation.css" type="text/css" media="screen" />

<style folder="roundcorners">
.roundcorners {
    border: 1px solid #848484;
    -webkit-border-radius: 30px; 
    -moz-border-radius: 30px; 
    border-radius: 30px; 
    outline:0; 
    height:20px; 
    width: 275px; 
    padding-left:10px; 
    padding-right:10px; 
	border-radius: 7px;
}

.roundcorners:focus { 
    outline: none;
    border-color: #9ecaed;
    box-shadow: 0 0 10px #9ecaed;
}

</style>

<style type="text/css">

#menu {
    
    font-size: 16px;
    font-family: "Times New Roman", Georgia, Serif;
    font-weight: light;
    text-align: center;
      
    background-image: url("w.jpg") ;
        background-size: 1400px 45px;
		background-position: top;
		background-width: 1400px;
		background-repeat:no-repeat;
}

#menu ul {
    height: auto;
    padding: 8px 0px;
    margin: 0px;
}
#menu li { 
display: inline; 
padding: 20px; 
}
#menu a {
    text-decoration: none;
    color: white;
    padding: 8px 8px 8px 8px;
}



</style>

<style folder="roundcorners2">
.roundcorners2 {
    border: 1px solid #848484;
    -webkit-border-radius: 30px; 
    -moz-border-radius: 30px; 
    border-radius: 30px; 
    outline:0; 
    height:20px; 
    width: 130px; 
    padding-left:10px; 
    padding-right:10px; 
	border-radius: 7px;
}

.roundcorners2:focus { 
    outline: none;
    border-color: #9ecaed;
    box-shadow: 0 0 10px #9ecaed;
}

</style>

<style type="text/css">
   	input.watermark { color: #999; }	
</style>

<style type="text/css">
.blue{background:url(blue2.png) no-repeat; width:71px; height:25px; border: 1px solid #848484;
    -webkit-border-radius: 30px; 
    -moz-border-radius: 30px; 
    border-radius: 30px;
	color:white;
}
</style>

</head>
<body background="Grey background abstract (2).jpg">

<div id="topper">
  <header id="company_logo">
    <table bgcolor="white" width="1100" border="0" cellspacing="1" cellpadding="2">
      <tbody>
        <tr>
          <td>&nbsp;</td>
          <td style="">&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<img src="company_final_logo_bg.jpg" width="400" height="158" alt=""/></td>
        </tr>
      </tbody>
    </table>
    
   
  </header>
  
</div>


<div id="menu" align="center">
<ul align="center"style="font-weight: light; font-size: 16px;">

<li><a  href="index.html">Home</a></li>
<li><a href="aboutus.html">Login</a></li>
<li><a href="services.html">Registration</a></li>
<li><a input type="text">Contact Us</a></li>
</ul>
</div>

<div>




<div id="container" style="margin-top:50px;">

<div class="tabs-7">
	<ul class="tabs">
        <li><a href="#tab25">Credit Card</a></li>
        <li><a href="#tab26">Debit Card</a></li>
        <li><a href="#tab27">Paypal</a></li>
        
    </ul>
	<section class="tab_content_wrapper">
	
        <article class="tab_content" id="tab25">
            
			
			 <table width="900" border="0" align="center" cellpadding="1" cellspacing="3">
    
      <tbody>
	  <form id="creditform" method="post" action = "payment_evaluate.jsp">
        <tr>
          <td>Name on card: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" id="creditcardname" name="creditcardname" class="roundcorners" value="${param.creditcardname}"/></td>
          <td align="left">Card Number: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" id="creditcardnumber" name="creditcardnumber" MAXLENGTH=16 class="roundcorners" onKeyPress="return numbersonly(this, event)" value="${param.creditcardnumber}"/></td>
        </tr>
		<tr>
		<td>
		<c:if test="${param.creditcardname == 'Enter your name as on credit card'}">
		<FONT COLOR="red">Please enter your name as on credit card</FONT>
		</c:if>
		</td>
		<td>
		<c:if test="${param.creditcardnumber == '16-digit credit card number'}">
		<FONT COLOR="red">16-digit credit card number</FONT>
		</c:if>
		</td>
		</tr>
		
        <tr>
          <td>Security Code:&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" MAXLENGTH=3 id="creditcardsecuritycode" name="creditcardsecuritycode" class="roundcorners2" onKeyPress="return numbersonly(this, event)" value="${param.creditcardsecuritycode}"/>
          <td>Expiration &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <select class="roundcorners2">
  <option value="month">Month</option>
  <option value="1">Jan</option>
  <option value="2">Feb</option>
  <option value="3">Mar</option>
  <option value="4">Apr</option>
  <option value="5">May</option>
  <option value="6">June</option>
  <option value="7">July</option>
  <option value="8">Aug</option>
  <option value="9">Sep</option>
  <option value="10">Oct</option>
  <option value="11">Nov</option>
  <option value="12">Dec</option>
  
</select>
<select class="roundcorners2">
  <option value="year">Year</option>
  <option value="15">2015</option>
  <option value="16">2016</option>
  <option value="17">2017</option>
  <option value="18">2018</option>
  <option value="19">2019</option>
  <option value="20">2020</option>
  <option value="21">2021</option>
  <option value="22">2022</option>
  <option value="23">2023</option>
  <option value="24">2024</option>
  <option value="25">2025</option>
  <option value="26">2026</option>
</select>
</td>
        </tr>
		
		<tr>
		<td>
		<c:if test="${param.creditcardsecuritycode == '3-digit cvv number'}">
		<FONT COLOR="red">Please enter your 3-digit cvv number</FONT>
		</c:if>
		</td>
		<td>
		<c:if test="${param.creditcardnumber == '16-digit credit card number'}">
		<FONT COLOR="red">Please enter your first name</FONT>
		</c:if>
		</td>
		</tr>
		
		
        <tr>
          <td>Recharge Amount: &nbsp;&nbsp;
            <input type="text" MAXLENGTH=3 id="creditcardrecharge" name="creditcardrecharge" class="roundcorners2" onKeyPress="return numbersonly(this, event)" value="${param.creditcardrecharge}"/></td>
        </tr>
		
		<tr>
		<td>
		<c:if test="${param.creditcardrecharge == '$xxx'}">
		<FONT COLOR="red">Please enter your recharge amount</FONT>
		</c:if>
		</td>
		
		</tr>
		
        
        <tr>
          <td></td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
          <td></td>
        </tr>
		<tr>
          <td></td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
		<td align="right">
          
		  <input type= button value="submit" class="blue" onclick="creditsubmit()"></td>
          <td><input type= button value="reset" onclick="oncall()" class="blue"></td>
		  
		  
		  
        </tr>
		
      </tbody>
            
</form>	
  </table>
		
        </article>
        <article class="tab_content" id="tab26">
            
			 <table width="900" border="0" align="center" cellpadding="1" cellspacing="3">
    
      <tbody>
	  <form>
        <tr>
          <td>Name on card: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" id="debitcardname" name="debitcardname" class="roundcorners"/></td>
          <td align="left">Card Number: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" id="debitcardnumber" name="debitcardnumber" MAXLENGTH=16 class="roundcorners" onKeyPress="return numbersonly(this, event)"/></td>
        </tr>
        <tr>
          <td>Security Code:&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" MAXLENGTH=3 id="debitcardsecuritycode" name="debitcardsecuritycode" class="roundcorners2" onKeyPress="return numbersonly(this, event)"/>
          <td>Expiration &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <select class="roundcorners2">
  <option value="month">Month</option>
  <option value="1">Jan</option>
  <option value="2">Feb</option>
  <option value="3">Mar</option>
  <option value="4">Apr</option>
  <option value="5">May</option>
  <option value="6">June</option>
  <option value="7">July</option>
  <option value="8">Aug</option>
  <option value="9">Sep</option>
  <option value="10">Oct</option>
  <option value="11">Nov</option>
  <option value="12">Dec</option>
  
</select>
<select class="roundcorners2">
  <option value="year">Year</option>
  <option value="15">2015</option>
  <option value="16">2016</option>
  <option value="17">2017</option>
  <option value="18">2018</option>
  <option value="19">2019</option>
  <option value="20">2020</option>
  <option value="21">2021</option>
  <option value="22">2022</option>
  <option value="23">2023</option>
  <option value="24">2024</option>
  <option value="25">2025</option>
  <option value="26">2026</option>
</select>
</td>
        </tr>
        <tr>
          <td>Recharge Amount: &nbsp;&nbsp;
            <input type="text" MAXLENGTH=3 id="debitcardrecharge" name="debitcardrecharge" class="roundcorners2" onKeyPress="return numbersonly(this, event)"/></td>
        </tr>
        
        <tr>
          <td></td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
          <td></td>
        </tr>
		<tr>
          <td></td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
		<td align="right">
          
		  <input type= button value="submit" class="blue"></td>
          <td><input type= button value="reset" onclick="oncall()" class="blue"></td>
		  
        </tr>
		
      </tbody>
            
</form>	
  </table>
			
        </article>
        <article class="tab_content" id="tab27">
            <table width="900" border="0" align="center" cellpadding="1" cellspacing="3">
			<form>
			<tbody align="center">
			<tr align="center">
          <td align="center">   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Profile Name &nbsp;
            <input type="text" id="profilename" name="profilename" class="roundcorners"/></td>
        
  
        </tr>
           
        <tr>
          <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <input type="password" id="profilepassword" name="profilepassword"  class="roundcorners"/></td>
          
        </tr>
		<tr>
          <td></td>
        </tr>
		<tr>
          <td></td>
        </tr>
		<tr>
          <td></td>
        </tr>
		<tr>
          <td></td>
        </tr>
		<tr>
          <td></td>
        </tr>
		<tr>
          <td></td>
        </tr>
		
		<tr>
		<td>
          
		  <input type= button value="continue" class="blue">
          <input type= button value="reset" class="blue"></td>
		  
        </tr>
		
		</tbody>
		</form>
		</table>
        </article>
        
    </section>
</div>


</div>



<script src="jquery-1.11.1.min.js"></script>

<script src="jQueryTab.js"></script> 
<script type="text/javascript">




$('.tabs-7').jQueryTab({
    initialTab: 2,
    tabInTransition: 'fadeIn',
    tabOutTransition: 'fadeOut',
    cookieName: 'active-tab-7'
    
});


</script>

<SCRIPT TYPE="text/javascript">
<!--
function numbersonly(myfield, e, dec)
{
var key;
var keychar;

if (window.event)
   key = window.event.keyCode;
else if (e)
   key = e.which;
else
   return true;
keychar = String.fromCharCode(key);

// control keys
if ((key==null) || (key==0) || (key==8) || 
    (key==9) || (key==13) || (key==27) )
   return true;
// numbers
else if ((("0123456789").indexOf(keychar) > -1))
   return true;
// decimal point jump
else if (dec && (keychar == "."))
   {
   myfield.form.elements[dec].focus();
   return false;
   }
else
   return false;
}
//-->
</SCRIPT>

<script type="text/javascript">

$(document).ready(function() {
    
	var watermark0 = 'Enter your name as on credit card';
	
    
    
	$('#creditcardname').val(watermark0).addClass('watermark');
	
	$('#creditcardname').blur(function(){
  		if ($(this).val().length == 0){
    		$(this).val(watermark0).addClass('watermark');
		}
 	});
	$('#creditcardname').focus(function(){
  		if ($(this).val() == watermark0){
    		$(this).val('').removeClass('watermark');
		}
 	});
	});
	
$(document).ready(function() {
    
	var watermark0 = '16-digit credit card number';
	
    
    
	$('#creditcardnumber').val(watermark0).addClass('watermark');
	
	$('#creditcardnumber').blur(function(){
  		if ($(this).val().length == 0){
    		$(this).val(watermark0).addClass('watermark');
		}
 	});
	$('#creditcardnumber').focus(function(){
  		if ($(this).val() == watermark0){
    		$(this).val('').removeClass('watermark');
		}
 	});
	});	

$(document).ready(function() {
    
	var watermark0 = '3-digit cvv number';
	
    
    
	$('#creditcardsecuritycode').val(watermark0).addClass('watermark');
	
	$('#creditcardsecuritycode').blur(function(){
  		if ($(this).val().length == 0){
    		$(this).val(watermark0).addClass('watermark');
		}
 	});
	$('#creditcardsecuritycode').focus(function(){
  		if ($(this).val() == watermark0){
    		$(this).val('').removeClass('watermark');
		}
 	});
	});	

$(document).ready(function() {
    
	var watermark0 = '$xxx';
	
    
    
	$('#creditcardrecharge').val(watermark0).addClass('watermark');
	
	$('#creditcardrecharge').blur(function(){
  		if ($(this).val().length == 0){
    		$(this).val(watermark0).addClass('watermark');
		}
 	});
	$('#creditcardrecharge').focus(function(){
  		if ($(this).val() == watermark0){
    		$(this).val('').removeClass('watermark');
		}
 	});
	});
	
	$(document).ready(function() {
    
	var watermark0 = 'Enter your name as on debit card';
	
    
	$('#debitcardname').val(watermark0).addClass('watermark');
	
	$('#debitcardname').blur(function(){
  		if ($(this).val().length == 0){
    		$(this).val(watermark0).addClass('watermark');
		}
 	});
	$('#debitcardname').focus(function(){
  		if ($(this).val() == watermark0){
    		$(this).val('').removeClass('watermark');
		}
 	});
	});
	
$(document).ready(function() {
    
	var watermark0 = '16-digit debit card number';
	
    
    
	$('#debitcardnumber').val(watermark0).addClass('watermark');
	
	$('#debitcardnumber').blur(function(){
  		if ($(this).val().length == 0){
    		$(this).val(watermark0).addClass('watermark');
		}
 	});
	$('#debitcardnumber').focus(function(){
  		if ($(this).val() == watermark0){
    		$(this).val('').removeClass('watermark');
		}
 	});
	});	

$(document).ready(function() {
    
	var watermark0 = '3-digit cvv number';
	
    
    
	$('#debitcardsecuritycode').val(watermark0).addClass('watermark');
	
	$('#debitcardsecuritycode').blur(function(){
  		if ($(this).val().length == 0){
    		$(this).val(watermark0).addClass('watermark');
		}
 	});
	$('#debitcardsecuritycode').focus(function(){
  		if ($(this).val() == watermark0){
    		$(this).val('').removeClass('watermark');
		}
 	});
	});	
	
	
	$(document).ready(function() {
    
	var watermark0 = 'Enter your user name';
	
    
    
	$('#profilename').val(watermark0).addClass('watermark');
	
	$('#profilename').blur(function(){
  		if ($(this).val().length == 0){
    		$(this).val(watermark0).addClass('watermark');
		}
 	});
	$('#profilename').focus(function(){
  		if ($(this).val() == watermark0){
    		$(this).val('').removeClass('watermark');
		}
 	});
	});
	
	$(document).ready(function() {
    
	var watermark0 = '12345678';
	
    
    
	$('#profilepassword').val(watermark0).addClass('watermark');
	
	$('#profilepassword').blur(function(){
  		if ($(this).val().length == 0){
    		$(this).val(watermark0).addClass('watermark');
		}
 	});
	$('#profilepassword').focus(function(){
  		if ($(this).val() == watermark0){
    		$(this).val('').removeClass('watermark');
		}
 	});
	});
	
	

$(document).ready(function() {
    
	var watermark0 = '$xxx';
	
    
    
	$('#debitcardrecharge').val(watermark0).addClass('watermark');
	
	$('#debitcardrecharge').blur(function(){
  		if ($(this).val().length == 0){
    		$(this).val(watermark0).addClass('watermark');
		}
 	});
	$('#debitcardrecharge').focus(function(){
  		if ($(this).val() == watermark0){
    		$(this).val('').removeClass('watermark');
		}
 	});
	
	});		
	
function oncall()
{
     
    var somu1 = "Enter your name as on credit card";
	$('#creditcardname').val(somu1).addClass('watermark');
	var somu2 = "$xxx";
	$('#creditcardrecharge').val(somu2).addClass('watermark');
	var somu3 = "3-digit cvv number";
	$('#creditcardsecuritycode').val(somu3).addClass('watermark');
	var somu4 = "16-digit credit card number";
	$('#creditcardnumber').val(somu4).addClass('watermark');
	var somu5 = "enter your choice of user name";
	$('#profile').val(somu5).addClass('watermark');
	var somu6 = "xxxx";
	$('#promo').val(somu6).addClass('watermark');
	var somu7 = "12345678";
	$('#password1').val(somu7).addClass('watermark');
	var somu8 = "12345678";
	$('#password2').val(somu8).addClass('watermark');
	
	}

function creditsubmit()
	{   

	$('#creditform').submit();
	}
	


</SCRIPT>


 
	            
	
</body>
</html>