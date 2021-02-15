<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header.jspf"%>


<div class="container">

	<!-- Timeline
      ================================================= -->
	<div class="timeline">
		<div class="timeline-cover">

			<!--Timeline Menu for Large Screens-->
			<div class="timeline-nav-bar hidden-sm hidden-xs">
				<div class="row">
					<div class="col-md-3">
						<div class="profile-info">
							<img src="http://placehold.it/300x300" alt=""
								class="img-responsive profile-photo" />
							<h3>Sarah Cruiz</h3>
							<p class="text-muted">Creative Director</p>
						</div>
					</div>
					<div class="col-md-9">
						<ul class="list-inline profile-menu">
							<li><a
								href="${pageContext.request.contextPath}/sns/view/timeline/timeline.jsp"
								class="active">타임라인</a></li>
							<li><a
								href="${pageContext.request.contextPath}/sns/view/timeline/timeline-album.jsp">앨범</a></li>
							<li><a
								href="${pageContext.request.contextPath}/sns/view/timeline/timeline-friends.jsp">친구</a></li>
						</ul>
						<ul class="follow-me list-inline">
							<li>1,299 people following her 팔로워 수</li>
							<li><a
								href="${pageContext.request.contextPath}/sns/view/timeline/timeline-write.jsp"><button
										class="btn-primary">글쓰기</button></a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--Timeline Menu for Large Screens End-->

			<!--Timeline Menu for Small Screens-->
			<div class="navbar-mobile hidden-lg hidden-md">
				<div class="profile-info">
					<img src="http://placehold.it/300x300" alt=""
						class="img-responsive profile-photo" />
					<h4>Sarah Cruiz</h4>
					<p class="text-muted">Creative Director</p>
				</div>
				<div class="mobile-menu">
					<ul class="list-inline">
						<li><a href="timline.html" class="active"></a></li>
						<li><a href="timeline-about.html"></a></li>
						<li><a href="timeline-album.html">Album</a></li>
						<li><a href="timeline-friends.html">Friends</a></li>
					</ul>
					<button class="btn-primary">Add Friend</button>
				</div>
			</div>
			<!--Timeline Menu for Small Screens End-->

		</div>
		<div id="page-contents">
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-7">


					<form
						action="${pageContext.request.contextPath}/timeline/timelinewrite.do"
						method="post">
						<p>
							<textarea name="postCon" rows="5" cols="30"
								placeholder="글 내용을 입력해주세요."></textarea>
							<input type="hidden" value="첨부파일" name="addFile"> <input
								type="hidden" value="타임라인" name="postCi">

							<c:if test="${errors.postCon}">타임라인 내용을 입력하세요.</c:if>

							<input type="submit" value="새 글 등록">
					</form>

				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="../include/footer.jspf"%>
