<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script defer type="text/javascript" src="/res/js/user/join.js"></script>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h1>회원가입</h1>
	
	아이디 :
	<input class="id" type="text" placeholder="아이디">
	<br> 비밀번호 :
	<input class="pw" type="password" placeholder="비밀번호">
	<br> 비밀번호 확인 :
	<input class="chkpw" type="password" placeholder="비밀번호 확인">
	<br> 이름:
	<input class="nm" type="text" placeholder="이름">
	<br> 별명:
	<input class="nick" type="text" placeholder="별명">
	<br>

	<button onclick="join()">회원가입</button>

</body>
</html>