<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>



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
							<h3>${authUser.id}</h3>
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
							<li><button class="btn-primary">친구 추가</button></li>
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

					<!-- Post Create Box
              ================================================= -->
					<div class="create-post">
						<div class="row">
							<div class="col-md-7 col-sm-7">
								<form
									action="${pageContext.request.contextPath}/timeline/timelinewrite.do"
									method="post">
									<div>
										<div>
											<div class="form-group">
												<img src="http://placehold.it/300x300" alt=""
													class="profile-photo-md" />
												<textarea name="postCon" id="exampleTextarea" cols="100"
													rows="1" class="form-control-add"
													placeholder="타임라인 글을 작성해 주세요."></textarea>
												<input type="hidden" value="첨부파일" name="addFile"> <input
													type="hidden" value="타임라인" name="postCi">
												<button class="btn btn-primary-post" type="submit">글쓰기</button>
											</div>
										</div>
										<div class="col-md-5 col-sm-5">
											<div class="tools">
												<!-- <ul class="publishing-tools list-inline">
										<li><a href="#"><i class="ion-compose"></i></a></li>
										<li><a href="#"><i class="ion-images"></i></a></li>
										<li><a href="#"><i class="ion-ios-videocam"></i></a></li>
										<li><a href="#"><i class="ion-map"></i></a></li>
									</ul> -->
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
						<!-- Post Create Box End-->

						<!-- Post Content
              ================================================= -->
						<div class="scrollView">

							<c:if test="${timeLinePage.hasNoArticles()}">
								<tr>
									<td colspan="4">타임라인 게시글이 없습니다.</td>
								</tr>
							</c:if>

							<c:forEach var="tc" items="${timeLinePage.timeLineList}">
								<div class="post-content">
									<!--Post Date-->
									<div class="post-date hidden-xs hidden-sm">
										<h5>
											<!--  Sarah  -->
										</h5>
										<p class="text-grey">
											<!--  10/21/2016  -->
										</p>
									</div>
									<!--Post Date End-->

									<div class="post-container">
										<img src="http://placehold.it/300x300" alt="user"
											class="profile-photo-md pull-left" />
										<div class="post-detail">
											<div class="user-info">
												<h5>
													<a href="timeline.html" class="profile-link">
														${authUser.id}</a> <span class="following">following</span>
												</h5>
												<p class="text-muted">${tc.postDate}</p>
											</div>
											<div class="reaction">
												<a class="btn text-green"><i class="icon ion-thumbsup"></i>
													49</a> <a class="btn text-red"><i class="fa fa-thumbs-down"></i>
													0</a>
											</div>
											<div class="line-divider"></div>
											<div class="post-text">
												<p>${tc.postCon}<i class="em em-anguished"></i> <i
														class="em em-anguished"></i> <i class="em em-anguished"></i>
												</p>
											</div>
											<form
												action="${pageContext.request.contextPath}/comments/commentsView.do"
												method="post">
												<input type="hidden" value="${tc.postNo}" name="postNo" />
												<input type="hidden" value="${tc.memNo}" name="memNo" />
												<input type="hidden" value="${tc.postCon}" name="postCon" />
												<input type="hidden" value="${tc.addFile}" name="addFile" />
												<input type="hidden" value="${tc.postCi}" name="postCi" />
												<input type="hidden" value="${tc.postDate}" name="postDate" />
												
												<button class="btn-primary-comments" type="submit">댓글보기</button>
											</form>
											<div class="line-divider"></div>
										</div>
									</div>
								</div>

							</c:forEach>
						</div>

						<c:if test="${timeLinePage.hasArticles()}">
							<div class="wrap-button">
								<input type="hidden" value="${pageNo}" name="pageNo" />
								<nav>
									<%-- 								<c:if test="${timeLinePage.pageNo>=1}">
									<a
										href="${pageContext.request.contextPath}/timeline/timeline.do?pageNo=${pageNo-1}"
										class="button-page">이전</a>
								</c:if>
 --%>
									<c:forEach var="pNo" begin="${timeLinePage.startPage}"
										end="${timeLinePage.endPage}">
										<a
											href="${pageContext.request.contextPath}/timeline/timeline.do?pageNo=${pNo}"
											class="button-page">${pNo}</a>
									</c:forEach>

									<%-- 								<c:if test="${timeLinePage.endPage < timeLinePage.totalPages}">
									<a
										href="${pageContext.request.contextPath}/timeline/timeline.do?pageNo=${timeLinePage.startPage + 1}"
										class="button-page">다음</a>
								</c:if> --%>
								</nav>
							</div>
						</c:if>


					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jspf"%>