<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="This is social network html5 template available in themeforest......" />
		<meta name="keywords" content="Social Network, Social Media, Make Friends, Newsfeed, Profile Page" />
		<meta name="robots" content="index, follow" />
		<title>team2프로젝트 | 소셜네트워크 사이트</title>

    <!-- Stylesheets
    ================================================= -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/sns/HTML/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/sns/HTML/css/style.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/sns/HTML/css/ionicons.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/sns/HTML/css/font-awesome.min.css" />
    
    <!--Google Font-->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,400i,700,700i" rel="stylesheet">
    
    <!--Favicon-->
    <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/sns/HTML/images/fav.png"/>
	</head>
  <body>
<!-- Landing Page Contents
    ================================================= -->
<div id="lp-register">
	<div class="container wrapper">
		<div class="row">
			<div class="col-sm-5">
				<div class="intro-texts">
					<h1 class="text-white">멋진 친구 만들기</h1>
					<p>
						Friend Finder는 사람들을 연결하는 데 사용할 수있는 소셜 네트워크입니다. 이 템플릿은 랜딩 페이지, 뉴스
						피드, 이미지 / 비디오 피드, 채팅 상자, 타임 라인 등을 제공합니다.<br /> <br />당신은 왜 기다리고
						있습니까? 지금 회원가입하세요.
					</p>
					<button
						onclick="location.href='${pageContext.request.contextPath}/sns/view/contact/faq.jsp'"
						class="btn btn-primary">더 알아보기</button>
				</div>
			</div>
			<div class="col-sm-6 col-sm-offset-1">
				<div class="reg-form-container">

					<!-- Register/Login Tabs-->
					<div class="reg-options">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#login">인증 이메일 입력</a></li>
						</ul>
						<!--Tabs End-->
					</div>

					<!--Registration Form Contents-->
					<div class="tab-content">
<!-- 
						Login
						<div class="tab-pane active" id="login">
							<h3>아이디 찾기</h3>
							<p class="text-muted">이메일인증으로 아이디찾기</p>

							Login Form
							<form name="Login_form" id='Login_form'>
								<div class="row">
									<div class="form-group col-xs-12">
										<label for="" class="sr-only">이름</label> <input id=""
											class="form-control input-group-lg" type="text" name=""
											title="Enter Email" placeholder="이름" />
									</div>
								</div>
								<div class="row">
									<div class="form-group col-xs-12">
										<label for="" class="sr-only">이메일</label> <input
											id="my-password" class="form-control input-group-lg" type=""
											name="" title="Enter password" placeholder="e-mail" />
									</div>
								</div>
							</form>
							Login Form Ends
							<p>
								<a href="#">이메일을 잊어버렸습니까?</a>
							</p>
							<button class="btn btn-primary">인증하기</button>
						</div> -->

						<div class="tab-pane" id="register">
							<h3>비밀번호 찾기</h3>
							<p class="text-muted">이메일인증으로 비밀번호 찾기</p>

							<!--Register Form-->
							<form action="changePwd.do" method="post"
								name="registration_form" id='registration_form'
								class="form-inline">
								<div class="row">
									<div class="form-group col-xs-6">
										<label for="lastname" class="sr-only">인증번호</label> <input
											id="lastname" class="form-control input-group-lg" type="text"
											name="AuthenticationUser" title="AuthenticationUser" placeholder="인증번호" />
									</div>
								</div>
								<div class="row">
									<div class="form-group col-xs-12">
										<label for="pwd1" class="sr-only">새 비밀번호</label> <input
											id="pwd1" class="form-control input-group-lg" type="password"
											name="pwd1" title="Enter password" placeholder="새 비밀번호" />
									</div>
								</div>
								<div class="row">
									<div class="form-group col-xs-12">
										<label for="pwd2" class="sr-only">비밀번호 확인</label> <input 
										id="pwd2" class="form-control input-group-lg" type="password" 
										name="pwd2" title="Enter re password" placeholder="비밀번호 확인" />
									</div>
								</div>
								<p>
									<a href="#">이메일을 잊어버렸습니까?</a>
								</p>
								<button class="btn btn-primary">인증하기</button>
							</form>
						</div>
						<!--Register Now Form Ends-->

						<!--Registration Form Contents Ends-->
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6 col-sm-offset-6">

				<!--Social Icons-->
				<ul class="list-inline social-icons">
					<li><a href="#"><i class="icon ion-social-facebook"></i></a></li>
					<li><a href="#"><i class="icon ion-social-twitter"></i></a></li>
					<li><a href="#"><i class="icon ion-social-googleplus"></i></a></li>
					<li><a href="#"><i class="icon ion-social-pinterest"></i></a></li>
					<li><a href="#"><i class="icon ion-social-linkedin"></i></a></li>
				</ul>
			</div>
		</div>
	</div>
</div>

<!--preloader-->
<div id="spinner-wrapper">
	<div class="spinner"></div>
</div>

<!-- Scripts
    ================================================= -->
<script
	src="${pageContext.request.contextPath}/sns/HTML/js/jquery-3.1.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/sns/HTML/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/sns/HTML/js/jquery.appear.min.js"></script>
<script
	src="${pageContext.request.contextPath}/sns/HTML/js/jquery.incremental-counter.js"></script>
<script src="${pageContext.request.contextPath}/sns/HTML/js/script.js"></script>