<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>this is index page</h2>  
	<jsp:forward page="printdate.jsp" />  
<br><br>
	<jsp:useBean id="obj" class="com.user.Calculator"/>
	<%  
	int m=obj.cube(5);  
	out.print("cube of 5 is "+m); 
	%>  
<br><br>
	<jsp:useBean id="u" class="com.user.User2"></jsp:useBean>  
	<jsp:setProperty property="*" name="u"/>  
	  
	Record:<br>  
	<jsp:getProperty property="name" name="u"/><br>  
	<jsp:getProperty property="password" name="u"/><br>  
	<jsp:getProperty property="email" name="u" /><br>  

</body>
</html>