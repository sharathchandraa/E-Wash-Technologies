<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html><head>
<meta charset="utf-8">
<title>Welcome User!!</title>
<script type="text/javascript" src="jquery-1.11.1.min.js"></script>
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

<body background="Grey background abstract (2).jpg">
<script type="text/javascript">
function washtt()
	{   
	
	$('#washtoday').submit();
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
	</header></div>


<div id="menu" align="center">
<ul align="center"style="font-weight: light; font-size: 16px;">

<li><a  href="myaccount_page.jsp">Book Appointment</a></li>
<li><a href="index.jsp">Recharge</a></li>
<li><a href="cancelappointment.jsp">Cancel Appointment</a></li>
<li><a href="homepage.jsp">Log out</a></li>
</ul>
</div>

    <div id="registration">
      <h2 align="center" >Welcome User!</h2>
	  
    </div>
    
	
     
<div class="notice" id="notice">
      <h4>
        <p style="font-weight: 400; text-align: center; padding-left: 70px; padding-right: 70px; padding-top: 6px;">Book your Appointment today!!!

Please select following slots!!</p>
      </h4>
    </div>
   
      



<table align="center">

<form id="washtoday" method="post" action = "myaccount_todayevaluate.jsp">

<tbody>

<tr align="right">
<td align="right">

<input type="radio" name="amorpm1" value="am">AM &nbsp <input type="radio" name="amorpm1" value="pm">PM<br>


 </td>
</tr> 
<tr></tr>
<tr></tr>
<tr></tr>
        <tr>
<td>
<input type="radio" name="timeslots1" value="12:15:00">12:15 - 1:00<br>
</td>

<td>
<input type="radio" name="timeslots1" value="01:15:00">1:15 -  2:00<br> </td>
</tr>
<tr>
<td>
<input type="radio" name="timeslots1" value="02:15:00">2:15 -  3:00<br>
</td>
<td>
<input type="radio" name="timeslots1" value="03:15:00">3:15 -  4:00<br>
</td>
</tr>
<tr>
<td>
<input type="radio" name="timeslots1" value="04:15:00">4:15 -  5:00<br>
</td>
<td>
<input type="radio" name="timeslots1" value="05:15:00">5:15 -  6:00<br>
</td>
</tr>
<tr>
<td>
<input type="radio" name="timeslots1" value="06:15:00">6:15 -  7:00<br>
</td>
<td>
<input type="radio" name="timeslots1" value="07:15:00">7:15 -  8:00<br>
</td>
</tr>
<tr>
<td>
<input type="radio" name="timeslots1" value="08:15:00">8:15 -  9:00<br>
</td>
<td>
<input type="radio" name="timeslots1" value="09:15:00">9:15 - 10:00<br>
</td>
</tr>
<tr>
<td>
<input type="radio" name="timeslots1" value="10:15:00">10:15 - 11:00<br>
</td>
<td>
<input type="radio" name="timeslots1" value="11:15:00">11:15 - 12:00<br>
</td>
</tr>



<tr>
<td>
<input type=button onclick="washtt()" id="wash" value="submit"/></td>
</td>
</tr>

</form>
</tbody>
</table>

</body>
</html>

	
	