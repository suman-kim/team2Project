<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jspf" %> 

    <div class="container">

      <!-- Timeline
      ================================================= -->
      <div class="timeline">
<!--         <div class="timeline-cover">
 -->
          <!--Timeline Menu for Large Screens-->
          <div class="timeline-nav-bar hidden-sm hidden-xs">
            <div class="row">
              <div class="col-md-3">
              </div>
            </div>
          </div><!--Timeline Menu for Large Screens End-->

        </div>
        <div id="page-contents">
          <div class="row">
            <div class="col-md-3">
              
              <!--Edit Profile Menu-->
              <ul class="edit-menu">
              	<li class="active"><a href="${pageContext.request.contextPath}/group/groupIndex.do">그룹 메인</a></li>
               	<li><a href="${pageContext.request.contextPath}/group/groupMy.do">내 그룹</a></li>
              	<li><a href="${pageContext.request.contextPath}/group/groupMake.do">그룹 생성</a></li>
              </ul>
            </div>
            <div class="col-md-7">

              <!-- Edit Work and Education
              ================================================= -->
              <div class="edit-profile-container">
              	<div class="timeline">
					<div class="timeline-cover">
					<img src="/displayGroupCoverFile?fileName=${Intro.fullname}" style="width: 100%; height: 100%;"/>
              	</div>
              	<div class="line"></div>
              	<div class="line"></div>
                
                <div class="block-title">
                  <h4 class="grey"><i class="icon ion-android-checkmark-circle" style = "margin-left:5%"></i>그룹 가입 신청</h4>
                  <div class="line"></div>
                </div>
              <div class="edit-block">
                <div class="line"></div>
                  <label for="school">그룹 이름 : ${Intro.grname}</label>
                <div class="line"></div>
                
                <div class="line"></div>
                  <label for="school">그룹 분류 : ${Intro.grci}</label>
                <div class="line"></div>
                
                <div class="line"></div>
                  <label for="school">그룹 소개</label>
                <div class="line"></div>
                
                <div class="line"></div>
                  <label for="school">${Intro.grintro}</label>
                <div class="line"></div>
                   
                <div class="line"></div>
                  <label for="school">그룹 생성일 : ${Intro.grintro}</label>
                <div class="line"></div>   
                  <form action="/group/groupJoin" method="post">
                  <input type="hidden" name="grno" value="${Intro.grno}">
                  <input type="hidden" name="grmemno" value="${Intro.memno}">
                <div class="row">
					<div class="form-group col-xs-12">
					<label for="school">가입 신청 내용</label>
					<input id="subscrip" class="form-control input-group-lg" type="text" name="subscrip" title="Enter subsCrip" 
                        placeholder="가입 신청 내용을 작성해주세요." />
					</div>
				</div>
                    
                    <button type="submit" class="btn btn-primary">가입 신청</button>
                  </form>
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
<!--     </div> -->



<%@ include file="../include/footer.jspf" %>
