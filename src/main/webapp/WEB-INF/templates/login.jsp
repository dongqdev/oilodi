<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="layoutTag" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<layoutTag:layout>
<!DOCTYPE html>
<html>
<head>
<title>OIL ODI</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/main.css">
</head>

<body class="text-center">
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
<jsp:include page="header.jsp"></jsp:include>
	<main role="main" class="inner cover">
	<c:url value="/login" var="loginUrl" />
	<form class="form-signin" action="${loginUrl}" method="post" style="border:3px solid white;padding:50px;">
		<img class="mb-4" src="https://image.flaticon.com/icons/svg/1476/1476715.svg" alt="" width="72" height="72">
		<h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
		<label for="inputEmail" class="sr-only">Email address</label>
		<input type="email" id="inputEmail" class="form-control" placeholder="Email address" autofocus="autofocus" name="username" >
		<label for="inputPassword" class="sr-only">Password</label>
		<input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password" >
		<sec:csrfInput />
		<div class="checkbox mb-3">
			<label>
				<input type="checkbox" value="remember-me"> Remember me
			</label>
		</div>
		<input class="blueButton" type="submit" value="로그인"/>
		<input class="redButton" type="button" onclick="location.href='/'" value="취소"/><br>
		<a href="/registerForm">회원가입</a>
		<p class="mt-5 mb-3 text-muted">©2019</p>
	</form>
	</main>
</div>
</body>
</html>
</layoutTag:layout>