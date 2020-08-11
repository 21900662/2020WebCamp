<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="user" class="com.user.User"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>

Record:<br>

<jsp:setProperty property="name" name="user"/>

</body>
</html>