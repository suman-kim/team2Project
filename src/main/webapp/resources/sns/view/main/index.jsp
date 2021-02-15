<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jspf" %> 


    <!-- Top Banner
    ================================================= -->
		<section id="banner">
			<div class="container">

        <!-- Sign Up Form
        ================================================= -->
        <div class="sign-up-form">
					<a href="index.jsp" class="logo"><img src="${pageContext.request.contextPath}/sns/HTML/images/logo.png" alt="Friend Finder"/></a>
					<h2 class="text-white">로그인</h2>
					<div class="line-divider"></div>
					<div class="form-wrapper">
						<p class="signup-text">	</p>
						<form action="#">
							<fieldset class="form-group">
								<input type="text" class="form-control" id="example-name" placeholder="이름">
							</fieldset>
							<fieldset class="form-group">
								<input type="password" class="form-control" id="example-password" placeholder="암호">
							</fieldset>
						</form>
						<p></p>
						<button onClick="location.href='${pageContext.request.contextPath}/sns/view/newsfeed/newsfeed.jsp'"  class="btn-secondary">로그인</button>
					</div>
					<a href="#">비밀번호 찾기</a><br>
					<a href="index-register.jsp">회원가입 하기</a>
					<img class="form-shadow" src="${pageContext.request.contextPath}/sns/HTML/images/bottom-shadow.png" alt="" />
				</div><!-- Sign Up Form End -->

        <svg class="arrows hidden-xs hidden-sm">
          <path class="a1" d="M0 0 L30 32 L60 0"></path>
          <path class="a2" d="M0 20 L30 52 L60 20"></path>
          <path class="a3" d="M0 40 L30 72 L60 40"></path>
        </svg>
			</div>
		</section>

    <!-- Features Section
    ================================================= -->
		<section id="features">
			<div class="container wrapper">
				<h1 class="section-title slideDown">social herd</h1>
				<div class="row slideUp">
					<div class="feature-item col-md-2 col-sm-6 col-xs-6 col-md-offset-2">
						<div class="feature-icon"><i class="icon ion-person-add"></i></div>
						<h3>Make Friends</h3>
					</div>
					<div class="feature-item col-md-2 col-sm-6 col-xs-6">
						<div class="feature-icon"><i class="icon ion-images"></i></div>
						<h3>Publish Posts</h3>
					</div>
					<div class="feature-item col-md-2 col-sm-6 col-xs-6">
						<div class="feature-icon"><i class="icon ion-chatbox-working"></i></div>
						<h3>Private Chats</h3>
					</div>
					<div class="feature-item col-md-2 col-sm-6 col-xs-6">
						<div class="feature-icon"><i class="icon ion-compose"></i></div>
						<h3>Create Polls</h3>
					</div>
				</div>
				<h2 class="sub-title">당신 같은 멋진 사람 찾기</h2>
				<div id="incremental-counter" data-value="101242"></div>
				<p>가입한 사람들</p>
				<img src="${pageContext.request.contextPath}/sns/HTML/images/face-map.png" alt="" class="img-responsive face-map slideUp hidden-sm hidden-xs" />
			</div>

		</section>

    <!-- Download Section
    ================================================= -->
		<section id="app-download">
			<div class="container wrapper">
				<h1 class="section-title slideDown">download</h1>
				<ul class="app-btn list-inline slideUp">
					<li><button class="btn-secondary"><img src="${pageContext.request.contextPath}/sns/HTML/images/app-store.png" alt="App Store" /></button></li>
					<li><button class="btn-secondary"><img src="${pageContext.request.contextPath}/sns/HTML/images/google-play.png" alt="Google Play" /></button></li>
				</ul>
				<h2 class="sub-title">언제 어디서나 연결 유지</h2>
				<img src="http://placehold.it/800x190" alt="iPhone" class="img-responsive" />
			</div>
		</section>

    <!-- Image Divider
    ================================================= -->
    <div class="img-divider hidden-sm hidden-xs"></div>

    <!-- Facts Section
    ================================================= -->
		<section id="site-facts">
			<div class="container wrapper">
				<div class="circle">
					<ul class="facts-list">
						<li>
							<div class="fact-icon"><i class="icon ion-ios-people-outline"></i></div>
							<h3 class="text-white">1,01,242[회원수]</h3>
							<p>가입한 회원수</p>
						</li>
						<li>
							<div class="fact-icon"><i class="icon ion-images"></i></div>
							<h3 class="text-white">21,01,242[게시글]</h3>
							<p>게시된 게시글</p>
						</li>
						<li>
							<div class="fact-icon"><i class="icon ion-checkmark-round"></i></div>
							<h3 class="text-white">41,242[접속사용자]</h3>
							<p>온라인 회원수</p>
						</li>
					</ul>
				</div>
			</div>
		</section>

    <!-- Live Feed Section
    ================================================= -->
		<section id="live-feed">
			<div class="container wrapper">
				<h1 class="section-title slideDown">live feed</h1>
				<ul class="online-users list-inline slideUp">
					<li><a href="#" title="Alexis Clark"><img src="http://placehold.it/300x300" alt="" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
          <li><a href="#" title="James Carter"><img src="http://placehold.it/300x300" alt="" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
          <li><a href="#" title="Robert Cook"><img src="http://placehold.it/300x300" alt="" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
          <li><a href="#" title="Richard Bell"><img src="http://placehold.it/300x300" alt="" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
          <li><a href="#" title="Anna Young"><img src="http://placehold.it/300x300" alt="" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
          <li><a href="#" title="Julia Cox"><img src="http://placehold.it/300x300" alt="" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
				</ul>
				<h2 class="sub-title">지금 일어나는 일들</h2>
				<div class="row">
					<div class="col-md-4 col-sm-6 col-md-offset-2">
						<div class="feed-item">
							<img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo-sm" />
							<div class="live-activity">
								<p><a href="#" class="profile-link">Sarah</a> just posted a photo from Moscow</p>
								<p class="text-muted">20 Secs ago</p>
							</div>
						</div>
						<div class="feed-item">
							<img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo-sm" />
							<div class="live-activity">
								<p><a href="#" class="profile-link">John</a> Published a post from Sydney</p>
								<p class="text-muted">1 min ago</p>
							</div>
						</div>
						<div class="feed-item">
							<img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo-sm" />
							<div class="live-activity">
								<p><a href="#" class="profile-link">Julia</a> Updated her status from London</p>
								<p class="text-muted">5 mins ago</p>
							</div>
						</div>
						<div class="feed-item">
							<img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo-sm" />
							<div class="live-activity">
								<p><a href="#" class="profile-link">Sophia</a> Share a photo from Virginia</p>
								<p class="text-muted">10 mins ago</p>
							</div>
						</div>
						<div class="feed-item">
							<img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo-sm" />
							<div class="live-activity">
								<p><a href="#" class="profile-link">Linda</a> just posted a photo from Toronto</p>
								<p class="text-muted">20 mins ago</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="feed-item">
							<img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo-sm" />
							<div class="live-activity">
								<p><a href="#" class="profile-link">Nora</a> Shared an article from Ohio</p>
								<p class="text-muted">22 mins ago</p>
							</div>
						</div>
						<div class="feed-item">
							<img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo-sm" />
							<div class="live-activity">
								<p><a href="#" class="profile-link">Addison</a> Created a poll from Barcelona</p>
								<p class="text-muted">23 mins ago</p>
							</div>
						</div>
						<div class="feed-item">
							<img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo-sm" />
							<div class="live-activity">
								<p><a href="#" class="profile-link">Diana</a> Posted a video from Captown</p>
								<p class="text-muted">27 mins ago</p>
							</div>
						</div>
						<div class="feed-item">
							<img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo-sm" />
							<div class="live-activity">
								<p><a href="#" class="profile-link">Sarah</a> Shared friend's post from Moscow</p>
								<p class="text-muted">30 mins ago</p>
							</div>
						</div>
						<div class="feed-item">
							<img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo-sm" />
							<div class="live-activity">
								<p><a href="#" class="profile-link">Emma</a> Started a new job at Torronto</p>
								<p class="text-muted">33 mins ago</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

<%@ include file="../include/footer.jspf" %> 