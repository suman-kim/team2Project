<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<%@ include file="../include/header.jspf" %> 

    <div id="page-contents">
    	<div class="container">
    		<div class="row">

          <!-- Newsfeed Common Side Bar Left
          ================================================= -->
    			<div class="col-md-3 static">
            <div class="profile-card">
            	<img src="/displayGroupCoverFile?fileName=${member.memimg}" alt="user" class="profile-photo" />
            	<h5><a href="${pageContext.request.contextPath}/timeline/timeline" class="text-white">${member.id}</a></h5>
            	<a href="#" class="text-white"><i class="ion ion-android-person-add"></i>명이 팔로잉 중 </a>
            </div><!--profile card ends-->
            <ul class="edit-menu">
            	<li><a href="/group/groupIndex">그룹 메인</a></li>
            	<li class="active"><a href="/group/groupNewsfeed">내 그룹</a></li>
            	<li><a href="/group/groupRegister">그룹 생성</a></li>
            	<c:choose> 
            	<c:when test="${auth eq '관리자'}">
              		<li><a href="${pageContext.request.contextPath}/group/groupAddMember">멤버관리</a></li>
              	</c:when>
              	<c:when test="${auth eq '일반회원'}">
              		<li><a href="${pageContext.request.contextPath}/group/groupMemberQuit" 
              		onclick="return confirm('정말로 그룹을 탈퇴하시겠습니까?')">그룹탈퇴</a></li>
              	</c:when>
              	</c:choose>
              	<li><a href="" id="up-atag">위로가기</a></li>
            </ul>
          </div>
    			<div class="col-md-7">

            <!-- Post Content
            ================================================= -->
            <div class="scrollView">
            
			<div class="block-title">
				<form action="${pageContext.request.contextPath}/group/groupNewsfeedWrite" method="get">
					<div class="form-group">
						<h4 class="grey">
						<input type="hidden" value="${Intro.grno}" name="grno">
						<input type="hidden" value="${member.memno}" name="memno">
						<i class="icon ion-android-checkmark-circle" style = "margin-left:5%"></i> ${Intro.grname}
						<button class="btn btn-primary-post" style = "margin-left:60%" type="submit">글쓰기</button>
						</h4>
					</div>
				</form>
			</div>
			
			<c:if test="${groupNewsFeedPage.hasNoNewsFeed()}">
			<div class="post-content">
				<tr>
					<td colspan="4">게시글이 없습니다.</td>
				</tr>
			</div>
			</c:if>
			
		<c:forEach var="nl" items="${newsfeedList}">
            <div class="post-content">
            <c:if test="${nl.fullname ne 'nofile'} ">
				<img src="/displayGroupCoverFile?fileName=${nl.fullname}" alt="post-image" class="img-responsive post-image" />
			</c:if>
        	<div class="post-container">
			<img src="/displayGroupCoverFile?fileName=${nl.memimg}" alt="user" class="profile-photo-md pull-left" />
                <div class="post-detail">
	                  <div class="user-info">
	                    <h5><a href="${pageContext.request.contextPath}/friend/friendtimeline?memNo=${nl.memno}" class="profile-link">${nl.id}</a> 
	                    <span class="following"><!-- following --></span></h5>  
	                    <p class="text-muted">${nl.grpodate}</p>
	                  </div>
	                  <div class="reaction">
	                    <a href="${pageContext.request.contextPath}/group/groupNewsFeedLike?postNo=${nl.grpostno}" class="btn text-green" type="submit">
	                    <i class="icon ion-thumbsup"></i>${nl.grpolike}</a>
	                  </div>
	                  <div class="line-divider"></div>
	                  <div class="post-text">
	                    <p>${nl.grpocon}<i class="em em-anguished"></i> <i class="em em-anguished"></i> <i class="em em-anguished"></i></p>
	                  </div>
	                  
	 <%--                  	<form action="${pageContext.request.contextPath}/group/groupCommentsView" method="post">
							<input type="hidden" value="${nl.postNo}" name="postNo" />
							<button class="btn-primary-comments" type="submit" style="margin-Top:1%">댓글보기</button>
						</form> --%>
	                  <div class="line-divider"></div>

                </div>
              </div>
            </div>	
		</c:forEach>
    	</div>
    		
    	<c:if test="${pageMaker.hasGroup()}">
			<div class="wrap-button">
				<nav>
					<c:forEach var="pNo" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
					<a href="${pageContext.request.contextPath}/group/groupnewsfeed?page=${page}" class="button-page">${page}</a>
					</c:forEach>
				</nav>
			</div>
		</c:if>
    		
		</div>		
    	</div>
    </div>
    </div>
<%@ include file="../include/footer.jspf" %> 