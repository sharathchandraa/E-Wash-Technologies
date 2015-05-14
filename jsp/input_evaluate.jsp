<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html><head>
<meta charset="utf-8">
<title>registration_evaluation</title>

</head>
<body>


<c:choose>
        <c:when test="${param.lastname == 'Your Last Name' || param.firstname == 'Your First Name' || param.profilename == 'enter your choice of user name' || param.email == 'e.g. abc@gmail.com' || param.mobilenumber == '10-digit cellphone number' || param.profilepassword1!=param.profilepassword2 || param.profilepassword1 == '12345678' || param.profilepassword2 == '12345678'}">
		
		<jsp:forward page="registration_page.jsp" />
		
		</c:when>
		
		<c:otherwise>
		
		<jsp:forward page="index.jsp" />
		
		</c:otherwise>
		
		
		
</c:choose>


</body>
</html>
