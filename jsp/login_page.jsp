<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html><head>
<meta charset="utf-8">
<title>E-Wash Login Page</title>



<script type="text/javascript" src="jquery-1.11.1.min.js"></script>


<style type="text/css">
   	input.watermark { color: #999; }
	
</style>

<!--for rounded text boxes & focus-->

<style folder="roundcorners">
.roundcorners {
    border: 1px solid #848484;
    -webkit-border-radius: 30px; 
    -moz-border-radius: 30px; 
    border-radius: 30px; 
    outline:0; 
    height:20px; 
    width: 200px; 
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
<!--for blue buttons-->
<style type="text/css">
.blue{background:url(blue2.png) no-repeat; width:71px; height:25px; border: 1px solid #848484;
    -webkit-border-radius: 30px; 
    -moz-border-radius: 30px; 
    border-radius: 30px;
	color:white;
}
</style>
<!--for navigation bar-->
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
</head>
<body background="login2.jpg">


<!--for textbox watermark-->

<script type="text/javascript">
$(document).ready(function() {
 
	var watermark = 'Your Profile Name';
 
	//init, set watermark text and class
	$('#profilename').val(watermark).addClass('watermark');
 
	//if blur and no value inside, set watermark text and class again.
 	$('#profilename').blur(function(){
  		if ($(this).val().length == 0){
    		$(this).val(watermark).addClass('watermark');
		}
 	});
 
	//if focus and text is watermrk, set it to empty and remove the watermark class
	$('#profilename').focus(function(){
  		if ($(this).val() == watermark){
    		$(this).val('').removeClass('watermark');
		}
 	});
});
 
 function washtt(){
 
 
 $('#washtoday').submit();
 
 
 }
 
 
 
 
</script>

<!--for textbox watermark-->

<script type="text/javascript">
$(document).ready(function() {
 
	var watermark = '12345678';
 
	//init, set watermark text and class
	$('#password1').val(watermark).addClass('watermark');
 
	//if blur and no value inside, set watermark text and class again.
 	$('#password1').blur(function(){
  		if ($(this).val().length == 0){
    		$(this).val(watermark).addClass('watermark');
		}
 	});
 
	//if focus and text is watermrk, set it to empty and remove the watermark class
	$('#password1').focus(function(){
  		if ($(this).val() == watermark){
    		$(this).val('').removeClass('watermark');
		}
 	});
});
 
</script>



<div id="topper">
  <header id="company_logo">
    <table  width="1350"  border="0" cellspacing="1" cellpadding="2">
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
  <table width="900" border="0" align="center" cellpadding="1" cellspacing="3">
    
	<form id="washtoday" method="post" action = "logintester">
      <tbody align="center">
	   <tr>
		<td>
		
		</td>
		</tr>
		 <tr>
		<td>
		
		</td>
		</tr>
		 <tr>
		<td>
		
		</td>
		</tr>
		 <tr>
		<td>
		
		</td>
		</tr>
	 
	  <tr>
		<td>
		
		</td>
		</tr>
			  <tr>
		<td>
		
		</td>
		</tr>
	  <tr>
		<td>
		
		</td>
		</tr>
	  <tr>
		<td>
		
		</td>
		</tr>
	  <tr>
		<td>
		
		</td>
		</tr>
	  <tr>
		<td>
		
		</td>
		</tr>
	  <tr>
		<td>
		
		</td>
		</tr>
	  <tr>
		<td>
		
		</td>
		</tr>
		<tr>
		<td>
		
		</td>
		</tr>
		

		
		<tr>
		<td>
		
		</td>
		</tr>
		<tr>
		<td>
		
		</td>
		</tr>
		<tr>
		<td>
		
		</td>
		</tr>
		 <tr>
		<td>
		
		</td>
		</tr>
	  <tr>
		<td>
		
		</td>
		</tr>

		<tr>
		<td>
		
		</td>
		</tr>
		
		<tr>
		<td><h2 align="center" ><img src=""</h2>
	
		<font size = "4" face="hybrid Outline Regular" color="#97A4A8">Please key in your credentials</font>
		<br>
		</td>
		</tr> 
		
        <tr align="center">
          <td align="center">   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Profile Name &nbsp;
            <input type="text" id="username" name="username" class="roundcorners"/></td>
        
  
        </tr>
           
        <tr>
          <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <input type="password" id="password" name="password" class="roundcorners"/></td>
          
        </tr>
        <tr>
		<td>
		</td>
		</tr>
		<tr>
		<td>
		</td>
		</tr>
        <tr>
          <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=button onclick="washtt()" id="wash" value="submit"/>
          <input type="reset"></td>
        </tr>
      </tbody>
    </form>
  </table>
</div>

</body>
</html>
