<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="hobby" class="com.user.Hobby"></jsp:useBean>
	<jsp:setProperty property="*" name="hobby"/>
	<jsp:forward page="form_out.jsp"/>
</body>
</html>