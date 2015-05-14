<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html><head>
<meta charset="utf-8">
<title>evaluation</title>

</head>
<body>

<% String slots1 = (String) request.getParameter("timeslots1"); %>

<c:choose>
        <c:when test="${param.amorpm1=='pm'}">
		<c:if test="${param.timeslots1 == '2:15:00'}">
		<% 
		 session.setAttribute("timeslots1","14:15:00"); %>
		</c:if>
		<c:if test="${param.timeslots1 == '1:15:00'}">
		<% session.setAttribute("timeslots1","13:15:00"); %>
		</c:if>
		<c:if test="${param.timeslots1 == '3:15:00'}">
		<% session.setAttribute("timeslots1","15:15:00"); %>
		</c:if>
		<c:if test="${param.timeslots1 == '4:15:00'}">
		<% String s = "16:15:00";
		 session.setAttribute("timeslots1",s); %>
		</c:if>
		<c:if test="${param.timeslots1 == '5:15:00'}">
		<% session.setAttribute("timeslots1","17:15:00"); %>
		</c:if>
		<c:if test="${param.timeslots1 == '6:15:00'}">
		<% session.setAttribute("timeslots1","18:15:00"); %>
		</c:if>
		<c:if test="${param.timeslots1 == '7:15:00'}">
		<% session.setAttribute("timeslots1","19:15:00"); %>
		</c:if>
		<c:if test="${param.timeslots1 == '8:15:00'}">
		<% session.setAttribute("timeslots1","20:15:00"); %>
		</c:if>
		<c:if test="${param.timeslots1 == '9:15:00'}">
		<% session.setAttribute("timeslots1","21:15:00"); %>
		</c:if>
		<c:if test="${param.timeslots1 == '10:15:00'}">
		<% session.setAttribute("timeslots1","22:15:00"); %>
		</c:if>
		<c:if test="${param.timeslots1 == '11:15:00'}">
		<% session.setAttribute("timeslots1","23:15:00"); %>
		</c:if>
		
		
		
		
		
		</c:when >
		
		<c:otherwise>
		
		<% session.setAttribute("timeslots1",slots1); %>
		
		
		
		</c:otherwise>
		
		
		
</c:choose>

<jsp:forward page="washtoday" />

</body>
</html>