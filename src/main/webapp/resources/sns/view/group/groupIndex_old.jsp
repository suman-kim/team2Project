<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<%@ include file="../include/header.jspf" %> 


<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

    <div id="page-contents">
    	<div class="container">
    		<div class="row">

    			<!-- Newsfeed Common Side Bar Left
          ================================================= -->
    			<div class="col-md-3 static">
             <div class="profile-card">
            	<img src="${member.memImg}" alt="user" class="profile-photo" />
            	<h5><a href="${pageContext.request.contextPath}/timeline/timeline.do" class="text-white">${member.id}</a></h5>
            	<a href="#" class="text-white"><i class="ion ion-android-person-add"></i><%-- ${authUser.followers} --%>명이 팔로잉 중 </a>
            </div><!--profile card ends-->
            
          	<ul class="edit-menu">
            	<li class="active"><a href="${pageContext.request.contextPath}/group/groupIndex.do">그룹 메인</a></li>
            	<li><a href="${pageContext.request.contextPath}/group/groupMy.do">내 그룹</a></li>
            	<li><a href="/group/groupRegister">그룹 생성</a></li>
            </ul>
          	</div>
          
    			<div class="col-md-7">

            <!-- Post Create Box
            ================================================= -->
            <div class="create-post">
            	<div class="row">
            		<div class="col-md-7 col-sm-7">
                  <div class="form-group">
                    <!-- <img src="http://placehold.it/300x300" alt="" class="profile-photo-md" />
                    <textarea name="texts" id="exampleTextarea" cols="30" rows="1" class="form-control" placeholder="Write what you wish"></textarea> -->
                    <form action="${pageContext.request.contextPath}/group/search.do" method="post" class="navbar-form navbar-right hidden-sm">
                		<input type="text" name = "searchCi" class="form-control" size="40" style="margin-left:30%" placeholder="관심있는 그룹의 분야를 검색해 보세요.">
            		</form>
                  </div>
                </div>
            		<!-- <div class="col-md-5 col-sm-5">
                  <div class="tools">
                    <ul class="publishing-tools list-inline">
                      <li><a href="#"><i class="ion-compose"></i></a></li>
                      <li><a href="#"><i class="ion-images"></i></a></li>
                      <li><a href="#"><i class="ion-ios-videocam"></i></a></li>
                      <li><a href="#"><i class="ion-map"></i></a></li>
                    </ul>
                    <button class="btn btn-primary pull-right">Publish</button>
                  </div>
                </div> -->
            	</div>
            </div><!-- Post Create Box End -->

            <!-- Friend List
            ================================================= -->
            <%-- <c:if test="${groupPage.hasNoGroup()}">
            	<p>현재 생성된 그룹이 없습니다.</p>
            </c:if> --%>
            <div class="friend-list">
            	<div class="row">
		            <c:forEach var="gl" items="${list}">
            		<div class="col-md-6 col-sm-6">
            		
            		<form method="post" class="sex">
            			<input type="hidden" class="groupNo" value="${gl.grno}">
            		</form>
            		
                  <div class="friend-card">
                  	<img src="/displayGroupCoverFile?fileName=${gl.fullname}" style="width:460px; height:150px;" alt="profile-cover" class="img-responsive cover" />
                      <div class="friend-info">
                      	<h5><a href="${pageContext.request.contextPath}/group/groupNewsFeed.do?groupNo=${gl.grno}&&groupName=${gl.grname}" 
                      	class="profile-link"> ${gl.grname}</a></h5>
                      		<%-- <c:choose>
								<c:when test="${groupcheck=true}">
									<div>
                        				<a href="${pageContext.request.contextPath}/group/groupMemberJoin.do?groupNo=${sg.groupNo}" 
                        				type="submit" onclick="return confirm('그룹에 가입하시겠습니까?')">가입하기</a>
									</div>
								</c:when>
								<c:when test="${groupcheck=false}">
									<div>
                        				<a href="#" class="pull-right text-green">가입된 그룹</a>
									</div>
								</c:when>
							</c:choose> --%>
                      	<p>분류 : ${gl.grci}</p>
                      </div>
                    </div>
                  </div>
                  
                </c:forEach>
                </div>
            	</div>
            	
            	<%-- <c:if test="${groupPage.hasGroup()}">
							<div class="wrap-button">
								<input type="hidden" value="${pageNo}" name="pageNo" />
								<nav>
									<c:forEach var="pNo" begin="${groupPage.startPage}"
										end="${groupPage.endPage}">
										<a
											href="${pageContext.request.contextPath}/group/groupIndex.do?pageNo=${pNo}"
											class="button-page">${pNo}</a>
									</c:forEach>
								</nav>
							</div>
						</c:if> --%>
						
            </div>
          </div>

          </div>
    	</div>
<%@ include file="../include/footer.jspf" %> 