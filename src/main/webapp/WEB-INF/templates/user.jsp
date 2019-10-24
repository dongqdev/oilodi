<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>OIL ODI</title>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
user 
<a href="/admin">어드민 페이지로 이동</a><br>
<a href="/user">유저 페이지로 이동</a><br>


<sec:authentication property="principal.username"/>님 안녕하세요 !<br>
<sec:authentication property="principal.nick"/>님 안녕하세요 !<br>
<form action="/logout" method="post">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	<input type="submit" value="로그아웃">
</form>
</body>
</html>