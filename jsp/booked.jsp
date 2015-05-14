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

    


<div class="notice" id="notice">
      <h4>
        <p style="font-weight: 400; text-align: center; padding-left: 70px; padding-right: 70px; padding-top: 6px;">Slot booking successful!</p>
      </h4>
    </div>
   
 

</body>
</html>

	
	