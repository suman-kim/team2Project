<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
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
              	<li><a href="${pageContext.request.contextPath}/group/groupIndex.do">그룹 메인</a></li>
               	<li class="active"><a href="${pageContext.request.contextPath}/group/groupMy.do">내 그룹</a></li>
              	<li><a href="${pageContext.request.contextPath}/group/groupMake.do">그룹 생성</a></li>
              </ul>
            </div>
            <div class="col-md-7">

              <!-- Edit Work and Education
              ================================================= -->
              <div class="edit-profile-container">
                <div class="block-title">
                  <h4 class="grey">게시물 작성</h4>
                  <div class="line"></div>
                </div>
                
                <div class="block-title">
                  <h4 class="grey">${groupInfo.grname}</h4>
                  <div class="line"></div>
                </div>
                
                <div class="edit-block">
                
                <form action="${pageContext.request.contextPath}/group/groupNewsfeedWrite" method="post" id="postwrite">
                <input type="hidden" value="${write.grno}" name="grno">
				<input type="hidden" value="${write.memno}" name="memno">
                    <div class="row">
                      <div class="form-group col-xs-12">
                        <label for="school">게시물 내용</label>
                        <!-- <input style ="width:200px; height:100px;"
                        id="groupPostCon" class="form-control input-group-lg" type="text" name="groupPostCon" title="Enter groupPostCon" 
                        placeholder="게시물 내용 입력" /> -->
                        
						<textarea name="grpocon" id="grpocon" cols="100"rows="3" class="form-control-add" placeholder="글을 작성해 주세요."></textarea>
                      </div>
                    </div>
                    
                    <button type="submit" class="btn btn-primary">게시물 작성</button>
                  </form>
                </div>
              </div>
            </div>
            
            <script>
             $("#postwrite").submit( function(e){
                if (($.trim($("#grpocon").val()) == "")) {
                   alert("게시글 내용을 입력해주세요.");
                   return false;
                }
             });
       		</script>
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
