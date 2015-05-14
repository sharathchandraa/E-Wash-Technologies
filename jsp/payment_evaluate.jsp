<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html><head>
<meta charset="utf-8">
<title>registration_evaluation</title>

</head>
<body>

<% 
String creditcardname=request.getParameter("creditcardname"); 
session.setAttribute("creditcardname",creditcardname); 
String creditcardnumber=request.getParameter("creditcardnumber"); 
session.setAttribute("creditcardnumber",creditcardnumber); 
String creditcardsecuritycode=request.getParameter("creditcardsecuritycode"); 
session.setAttribute("creditcardsecuritycode",creditcardsecuritycode); 
String creditcardrecharge=request.getParameter("creditcardrecharge"); 
session.setAttribute("creditcardrecharge",creditcardrecharge); 
%> 

<c:choose>
        <c:when test="${param.creditcardname == 'Enter your name as on card' || param.creditcardnumber == '16-digit credit card number' || param.creditcardsecuritycode == '3-digit cvv number' || param.creditcardrecharge == '$xxx'}">
		
		<jsp:forward page="index.jsp" />
		
		</c:when>
		
		<c:otherwise>
		
		<jsp:forward page="registration_confirmation.jsp" />
		
		</c:otherwise>
		
		
		
</c:choose>





</body>
</html>