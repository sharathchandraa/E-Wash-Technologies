<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html><head>
<meta charset="utf-8">
<title>E-Wash account registration</title>

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
<script type="text/javascript" src="jquery-1.11.1.min.js"></script>
<style type="text/css">
   	input.watermark { color: #999; }	
</style>
<style type="text/css">
.notice {
	font-weight: 400;
	font-family: Baskerville, "Palatino Linotype", Palatino, "Century Schoolbook L", "Times New Roman", serif;
	text-indent: 4px;
	text-shadow: 0px 0px;
	padding-left: 30px;
	padding-right: 70px;
	color: #020345;
}
</style>
</head>

<body background="Grey background abstract (2).jpg">

<script type="text/javascript">

$(document).ready(function() {
    
	var watermark0 = 'Your Last Name';
	var watermark1 = 'Your First Name';
	var watermark2 = 'e.g. abc@gmail.com';
	var watermark3 = '10-digit cellphone number';
	var watermark4 = 'enter your choice of user name';
	var watermark5 = 'xxxx';
	var watermark6 = '12345678';
	var watermark7 = '12345678';
    
	var indicator2 = localStorage.getItem("indicator");
    
    if(indicator2 == null){
	$('#lastname').val(watermark0).addClass('watermark');
	$('#profile').val(watermark4).addClass('watermark');
	$('#firstname').val(watermark1).addClass('watermark');
	$('#email').val(watermark2).addClass('watermark');
	$('#mobile').val(watermark3).addClass('watermark');
	$('#promo').val(watermark5).addClass('watermark');
	$('#password1').val(watermark6).addClass('watermark');
	$('#password2').val(watermark7).addClass('watermark');
 }
	$('#lastname').blur(function(){
  		if ($(this).val().length == 0){
    		$(this).val(watermark0).addClass('watermark');
		}
 	});
 	$('#password1').blur(function(){
  		if ($(this).val().length == 0){
    		$(this).val(watermark6).addClass('watermark');
		}
 	});
 $('#firstname').blur(function(){
  		if ($(this).val().length == 0){
    		$(this).val(watermark1).addClass('watermark');
		}
 	});
	$('#email').blur(function(){
  		if ($(this).val().length == 0){
    		$(this).val(watermark2).addClass('watermark');
		}
 	});
	$('#mobile').blur(function(){
  		if ($(this).val().length == 0){
    		$(this).val(watermark3).addClass('watermark');
		}
 	});
 	$('#profile').blur(function(){
  		if ($(this).val().length == 0){
    		$(this).val(watermark4).addClass('watermark');
		}
 	});
 	$('#promo').blur(function(){
  		if ($(this).val().length == 0){
    		$(this).val(watermark5).addClass('watermark');
		}
 	});
	$('#lastname').focus(function(){
  		if ($(this).val() == watermark0){
    		$(this).val('').removeClass('watermark');
		}
 	});	
 $('#firstname').focus(function(){
  		if ($(this).val() == watermark1){
    		$(this).val('').removeClass('watermark');
		}
 	});	
 	$('#email').focus(function(){
  		if ($(this).val() == watermark2){
    		$(this).val('').removeClass('watermark');
		}
 	});
	$('#mobile').focus(function(){
  		if ($(this).val() == watermark3){
    		$(this).val('').removeClass('watermark');
		}
 	});
	$('#profile').focus(function(){
  		if ($(this).val() == watermark4){
    		$(this).val('').removeClass('watermark');
		}
 	});
	$('#promo').focus(function(){
  		if ($(this).val() == watermark5){
    		$(this).val('').removeClass('watermark');
		}
 	});
	$('#password2').blur(function(){
  		if ($(this).val().length == 0){
    		$(this).val(watermark7).addClass('watermark');
		}
 	});
	$('#password2').focus(function(){
  		if ($(this).val() == watermark7){
    		$(this).val('').removeClass('watermark');
		}
 	});
	$('#password1').focus(function(){
  		if ($(this).val() == watermark6){
    		$(this).val('').removeClass('watermark');
		}
 	});
});
 


function onsy()
	{   
	var indicator = "filled";
localStorage.setItem("indicator", "filled"); 
	$('#myform').submit();
	}
$(document).ready(function() {
	var watermark = 'Your Last Name';
	var indicator2 = localStorage.getItem("indicator");
    if(indicator2 == null){
	//init, set watermark text and class
	$('#lastname').val(watermark).addClass('watermark');
	}		
 localStorage.removeItem("indicator");
 	$('#lastname').blur(function(){
  		if ($(this).val().length == 0 ){
    		$(this).val(watermark).addClass('watermark');
		}
 	});
	$('#lastname').focus(function(){
  		if ($(this).val() == watermark){
    		$(this).val('').removeClass('watermark');
		}
 	});		
});

function oncall()
{
     
    var somu1 = "Your Last Name";
	$('#lastname').val(somu1).addClass('watermark');
	var somu2 = "Your First Name";
	$('#firstname').val(somu2).addClass('watermark');
	var somu3 = "e.g. abc@gmail.com";
	$('#email').val(somu3).addClass('watermark');
	var somu4 = "10-digit cellphone number";
	$('#mobile').val(somu4).addClass('watermark');
	var somu5 = "enter your choice of user name";
	$('#profile').val(somu5).addClass('watermark');
	var somu6 = "xxxx";
	$('#promo').val(somu6).addClass('watermark');
	var somu7 = "12345678";
	$('#password1').val(somu7).addClass('watermark');
	var somu8 = "12345678";
	$('#password2').val(somu8).addClass('watermark');
	
	}
	
	
</script>

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
    <div id="registration">
      <h2 align="center" >Sign up now!</h2>
    </div>
    <div class="notice" id="notice">
      <h4>
        <p style="font-weight: 400; text-align: justify; padding-left: 70px; padding-right: 70px; padding-top: 6px;">Notice: Please fill in following fields to set up your account.Note that your RFID number is registered in our databases and your details are cross verified to create an account for you. Therefore make sure you provide accurate details that you used while purchasing RFID. Happy laundry!</p>
      </h4>
    </div>
    <table width="1100" border="0" cellspacing="1" cellpadding="2">
      <tbody>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </tbody>
    </table>
  </header>
</div>
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
<div>
   
		
  <table align="center">
    <form id="myform" method="post" action = "userchecker">
	<input type="hidden" name="submitted" id="submitted" value="1">
      <tbody>
        <tr>
          <td>Last Name: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" id="lastname" class="roundcorners" name="lastname" value="${param.lastname}"/></td>
          <td align="left">First Name: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" id="firstname" class="roundcorners" name="firstname" value="${param.firstname}"/></td>
        </tr>
		<tr>
		</tr>
		<tr>
		<td>
		<c:if test="${param.lastname == 'Your Last Name'}">
		<FONT COLOR="red">Please enter your Last name</FONT>
		</c:if>
		</td>
		<td>
		<c:if test="${param.firstname == 'Your First Name'}">
		<FONT COLOR="red">Please enter your first name</FONT>
		</c:if>
		</td>
		</tr>
		<tr>
		</tr>
        <tr>
          <td>E-Mail:&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" id="email" class="roundcorners" name="email" value="${param.email}"/>
          <td>Mobile: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" id="mobile" name="mobilenumber" value="${param.mobilenumber}" class="roundcorners" MAXLENGTH=10 onKeyPress="return numbersonly(this, event)"/></td>
        </tr>
		
		<tr>
		<td>
		<c:if test="${param.email == 'e.g. abc@gmail.com'}">
		<FONT COLOR="red">Please enter your E-mail ID</FONT>
		</c:if>
		</td>
		
	
		<td>
		<c:if test="${param.mobilenumber == '10-digit cellphone number'}">
		<FONT COLOR="red">Please enter your mobile number</FONT>
		</c:if>
		</td>
		</tr>
        <tr>
          <td>Profile Name: &nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" id="profile" class="roundcorners" name="profilename" value="${param.profilename}"/></td>
          <td>Promo Code: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" id="promo" name="promo" class="roundcorners" value="${param.promo}"/></td>
        </tr>
		<tr>
		<td>
		
		<c:if test="${param.profilename == 'enter your choice of user name'}">
		<FONT COLOR="red">Please enter your Profile Name</FONT>
		</c:if>
		</td>
		</tr>
        <tr>
          <td>Create Password:
            <input type="password" id="password1" name="profilepassword1" class="roundcorners" value="${param.profilepassword1}"/></td>
          <td>Retype Password:
            <input type="password" id="password2" name="profilepassword2" class="roundcorners" value="${param.profilepassword2}"/></td>
        </tr>
		<tr>
		<td>
		
		<c:if test="${param.profilepassword1!=param.profilepassword2}">
		<FONT COLOR="red" ALIGN="center">Your password entries do not match!</FONT>
		</c:if>
		
		<c:if test="${param.profilepassword1 == '12345678'}">
		<FONT COLOR="red">Please enter your 8 digit password</FONT>
		</c:if>
		</td>
		<td>
		<c:if test="${param.profilepassword2 == '12345678'}">
		<FONT COLOR="red">Please confirm your password</FONT>
		</c:if>
		</td>
		
  
		
		</tr>
		
		
		
		
		
        <tr>
          <td align="right"><input type=button onclick="onsy()" value="submit"></td>
          <td align="left"><input type=button  id="sample_button"  onclick="oncall()" value = "reset"></td>
        </tr>
      </tbody>
	 
		
    </form>
  </table>
  
</div>
<div id="hom
<table width="400" border="0" align="center" cellpadding="2" cellspacing="2">
  <tbody>
    <tr>
      <td align="center">  <img src="homebutton.png" width="120" height="120" alt="" align="center"/></td>
    </tr>
  </tbody>
</table>
</div>

		 
</body>
</html>
