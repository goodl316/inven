<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon" href="/res/img/favicon.ico">
<title>게임, 그 이상의 유토피아 - 인벤</title>
<!-- jquery -->
<script type="text/javascript" src="/res/home/js/jquery.min.js"></script>
<!-- html5shiv -->
<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <![endif]-->
<!-- vender-prefix -->
<script type="text/javascript" src="/res/js/home/prefixfree.min.js"></script>
<script type="text/javascript" src="/res/js/home/home.js"></script>
<!-- swiper -->
<link rel="stylesheet" href="/res/swiper/swiper.min.css">
<script src="/res/swiper/swiper.min.js"></script>
<!-- normalize.css -->
<link rel="stylesheet" type="text/css"
	href="/res/css/home/normalize.css">
<link rel="stylesheet" type="text/css" href="/res/css/home/home.css">
</head>

<body>
	<div class="wrap">
		<!-- 상단 영역 -->
		<div class="header">
			<div class="top-header">
				<ul class="top-link clearfix">
					<li><a href="#" class="link">웹진</a></li>
					<li><a href="#" class="link">콘솔</a></li>
					<li><a href="#" class="link">IT인벤</a></li>
					<li><a href="#" class="link">인디</a></li>
					<li><a href="#" class="link">e스포츠</a></li>
					<li><a href="#" class="link">VR인벤</a></li>
					<li><a href="#" class="link">사전예약</a></li>
					<li><a href="#" class="link">인벤방송국</a></li>
					<li><a href="#" class="link">아이마트</a></li>
					<li><a href="#" class="link">마켓인벤</a></li>
				</ul>
				<c:choose>
					<c:when test="${loginUser.i_user == null }">
						<div class="top-header-right clearfix">
							<div>
								<button class="join-bt" onclick="join()">회원가입</button>
							</div>
							<div>
								<button class="login-bt" onclick="login()">로그인</button>
							</div>
							<div>
								<button class="quicklink-bt">퀵링크</button>
							</div>
						</div>
					</c:when>
					<c:when test="${loginUser.i_user !=null }">
						<div class="top-header-right clearfix">
							<div>
								<div class="userinfo">${loginUser.nick_nm}'s 인벤</div>
							</div>
							<div>
								<a class="login-bt" href="/logout">로그아웃</a>
							</div>
							<div>
								<button class="quicklink-bt">퀵링크</button>
							</div>
						</div>
					</c:when>
				</c:choose>
			</div>
			<div class="main-header">
				<div class="container">
					<div class="logo">
						<a href="/home"></a>
					</div>
					<div class="gnb">
						<ul class="depth1">
							<li><a href="#" class="main-menu">뉴스</a></li>
							<li><a href="#" class="main-menu">플랫폼</a></li>
							<li><a href="#" class="main-menu">게임DB</a></li>
							<li><a href="#" class="main-menu">특별취재</a></li>
							<li><a href="#" class="main-menu">게이머존</a></li>
							<li><a href="#" class="main-menu">IGC</a></li>
						</ul>
					</div>
					<div class="user-link">
						<ul class="user-link-list">
							<li><a href="#" class="schedule"></a></li>
							<li><a href="#" class="youtube""></a></li>
							<li><a href="#" class="facebook"></a></li>
							<li><a href="#" class="twitter"></a></li>
							<li><a href="#" class="opencritic"></a></li>
							<li><a href="#" class="search"></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- // 상단 영역 -->
	</div>
</body>

</html>