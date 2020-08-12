<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:out value="${'Welcome to javaTpoint'}"/> 
<br>
	<c:import var="data" url="test.html"/>  
	<c:out value="${data}"/>
<br>
	<c:set var="income" scope="session" value="${4000*4}"/>  
	<p>Before Remove Value is: <c:out value="${income}"/></p>  
	<c:remove var="income"/>  
	<p>After Remove Value is: <c:out value="${income}"/></p>  
<br>
	<c:catch var ="catchtheException">  
	   <% int x = 2/0;%>  
	</c:catch>  
	  
	<c:if test = "${catchtheException != null}">  
	   <p>The type of exception is : ${catchtheException} <br />  
	   There is an exception: ${catchtheException.message}</p>  
	</c:if>  
<br>
	<c:set var="income" scope="session" value="${4000*4}"/>  
	<c:if test="${income > 8000}">  
	   <p>My income is: <c:out value="${income}"/><p>  
	</c:if> 
<br>
	<c:set var="income" scope="session" value="${4000*4}"/>  
	<p>Your income is : <c:out value="${income}"/></p>  
	<c:choose>  
	    <c:when test="${income <= 1000}">  
	       Income is not good.  
	    </c:when>  
	    <c:when test="${income > 10000}">  
	        Income is very good.  
	    </c:when>  
	    <c:otherwise>  
	       Income is undetermined...  
	    </c:otherwise>  
	</c:choose>  
<br>
	<c:forEach var="j" begin="1" end="3">  
	   Item <c:out value="${j}"/><p>  
	</c:forEach>  
<br>
	<c:forTokens items="Rahul-Nakul-Rajesh" delims="-" var="name">  
	   <c:out value="${name}"/><p>  
	</c:forTokens> 
<br>
	<c:url value="/RegisterDao.jsp"/>  
<br>

</body>
</html>