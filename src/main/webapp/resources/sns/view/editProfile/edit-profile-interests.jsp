<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jspf" %> 

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
                  <img src="http://placehold.it/300x300" alt="" class="img-responsive profile-photo" />
                  <h3>Sarah Cruiz 사용자이름</h3>
                  <p class="text-muted">Creative Director</p>
                </div>
              </div>
              <div class="col-md-9">
                <ul class="list-inline profile-menu">
				  <li><a href="${pageContext.request.contextPath}/sns/view/timeline/timeline.jsp">타임라인</a></li>
                  <li><a href="${pageContext.request.contextPath}/sns/view/timeline/timeline-album.jsp">앨범</a></li>
                  <li><a href="${pageContext.request.contextPath}/sns/view/timeline/timeline-friends.jsp">친구</a></li>
                </ul>
                <ul class="follow-me list-inline">
                  <li>1,299 people following her 그녀는 인기쟁이</li>
                  <li><button class="btn-primary">친구 추가</button></li>
                </ul>
              </div>
            </div>
          </div><!--Timeline Menu for Large Screens End-->

          <!--Timeline Menu for Small Screens-->
          <div class="navbar-mobile hidden-lg hidden-md">
            <div class="profile-info">
              <img src="http://placehold.it/300x300" alt="" class="img-responsive profile-photo" />
              <h4>Sarah Cruiz</h4>
              <p class="text-muted">Creative Director</p>
            </div>
            <div class="mobile-menu">
              <ul class="list-inline">
                <li><a href="timline.html">Timeline</a></li>
                <li><a href="timeline-about.html" class="active">About</a></li>
                <li><a href="timeline-album.html">Album</a></li>
                <li><a href="timeline-friends.html">Friends</a></li>
              </ul>
              <button class="btn-primary">Add Friend</button>
            </div>
          </div><!--Timeline Menu for Small Screens End-->

        </div>
        <div id="page-contents">
          <div class="row">
            <div class="col-md-3">
              
              <!--Edit Profile Menu-->
              <ul class="edit-menu">
               	<li><i class="icon ion-ios-information-outline"></i><a href="${pageContext.request.contextPath}/sns/view/editProfile/edit-profile-basic.jsp">개인정보</a></li>
              	<li><i class="icon ion-ios-briefcase-outline"></i><a href="${pageContext.request.contextPath}/sns/view/editProfile/edit-profile-work-edu.jsp">학력 및 직장</a></li>
              	<li class="active"><i class="icon ion-ios-heart-outline"></i><a href="${pageContext.request.contextPath}/sns/view/editProfile/edit-profile-interests.jsp">내 관심사</a></li>
                <li><i class="icon ion-ios-settings"></i><a href="${pageContext.request.contextPath}/sns/view/editProfile/edit-profile-settings.jsp">계정설정</a></li>
              	<li><i class="icon ion-ios-locked-outline"></i><a href="${pageContext.request.contextPath}/sns/view/editProfile/edit-profile-password.jsp">비밀번호 변경</a></li>
              </ul>
            </div>
            <div class="col-md-7">

              <!-- Edit Interests
              ================================================= -->
              <div class="edit-profile-container">
                <div class="block-title">
                  <h4 class="grey"><i class="icon ion-ios-heart-outline"></i>내 관심사</h4>
                  <div class="line"></div>
                  <p>내 관심사 내용 At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate</p>
                  <div class="line"></div>
                </div>
                <div class="edit-block">
                  <ul class="list-inline interests">
                  	<li><a href=""><i class="icon ion-android-bicycle"></i> Bycicle 취미선택</a></li>
                  	<li><a href=""><i class="icon ion-ios-camera"></i> Photgraphy취미선택</a></li>
                  	<li><a href=""><i class="icon ion-android-cart"></i> Shopping취미선택</a></li>
                  	<li><a href=""><i class="icon ion-android-plane"></i> Traveling취미선택</a></li>
                  	<li><a href=""><i class="icon ion-android-restaurant"></i> Eating취미선택</a></li>
                  </ul>
                  <div class="line"></div>
                  <div class="row">
                    <p class="custom-label"><strong>Add interests</strong></p>
                    <div class="form-group col-sm-8">
                      <input id="add-interest" class="form-control input-group-lg" type="text" name="interest" title="Choose Interest" placeholder="Interests. For example, photography"/>
                    </div>
                    <div class="form-group col-sm-4">
                      <button class="btn btn-primary">관심사 추가</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-2 static">
              
              <!--Sticky Timeline Activity Sidebar-->
<!--               <div id="sticky-sidebar">
                <h4 class="grey">Sarah's activity</h4>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> Commended on a Photo</p>
                    <p class="text-muted">5 mins ago</p>
                  </div>
                </div>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> Has posted a photo</p>
                    <p class="text-muted">an hour ago</p>
                  </div>
                </div>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> Liked her friend's post</p>
                    <p class="text-muted">4 hours ago</p>
                  </div>
                </div>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> has shared an album</p>
                    <p class="text-muted">a day ago</p>
                  </div>
                </div>
              </div> -->
            </div>
          </div>
        </div>
      </div>
    </div>



<%@ include file="../include/footer.jspf" %>

