<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- <meta charset="utf-8">
<meta name="viewport" content="width=device-width"> -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
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
                  <h3>Sarah Cruiz</h3>
                  <p class="text-muted">Creative Director</p>
                </div>
              </div>
              <div class="col-md-9">
                <ul class="list-inline profile-menu">
                  <li><a href="${pageContext.request.contextPath}/sns/view/timeline/timeline.jsp" class="active">타임라인</a></li>
                  <li><a href="${pageContext.request.contextPath}/sns/view/timeline/timeline-album.jsp">앨범</a></li>
                  <li><a href="${pageContext.request.contextPath}/sns/view/timeline/timeline-friends.jsp">친구</a></li>
                </ul>
                <ul class="follow-me list-inline">
                  <li>1,299 people following her 팔로워 수</li>
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
                <li><a href="timline.html" class="active"></a></li>
                <li><a href="timeline-about.html"></a></li>
                <li><a href="timeline-album.html">Album</a></li>
                <li><a href="timeline-friends.html">Friends</a></li>
              </ul>
              <button class="btn-primary">Add Friend</button>
            </div>
          </div><!--Timeline Menu for Small Screens End-->

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
                    <div class="form-group">
                      <img src="http://placehold.it/300x300" alt="" class="profile-photo-md" />
                      <textarea name="texts" id="exampleTextarea" cols="30" rows="1" class="form-control" placeholder="Write what you wish"></textarea>
                    </div>
                  </div>
                  <div class="col-md-5 col-sm-5">
                    <div class="tools">
                      <ul class="publishing-tools list-inline">
                        <li><a href="#"><i class="ion-compose"></i></a></li>
                        <li><a href="#"><i class="ion-images"></i></a></li>
                        <li><a href="#"><i class="ion-ios-videocam"></i></a></li>
                        <li><a href="#"><i class="ion-map"></i></a></li>
                      </ul>
                      <button class="btn btn-primary pull-right">Publish</button>
                    </div>
                  </div>
                </div>
              </div><!-- Post Create Box End-->


              <!-- Post Content
              ================================================= -->
             <div class="scrollView">
             <!--  <div class="post-content">

                Post Date
                <div class="post-date hidden-xs hidden-sm">
                  <h5> Sarah </h5>
                  <p class="text-grey">10/21/2016</p>
                </div>Post Date End

                <div class="post-container">
                  <img src="http://placehold.it/300x300" alt="user" class="profile-photo-md pull-left" />
                  <div class="post-detail">
                    <div class="user-info">
                      <h5><a href="timeline.html" class="profile-link">Sarah Cruiz</a> <span class="following">following</span></h5>
                      <p class="text-muted">2 days ago</p>
                    </div>
                    <div class="reaction">
                      <a class="btn text-green"><i class="icon ion-thumbsup"></i> 49</a>
                      <a class="btn text-red"><i class="fa fa-thumbs-down"></i> 0</a>
                    </div>
                    <div class="line-divider"></div>
                    <div class="post-text">
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. <i class="em em-anguished"></i> <i class="em em-anguished"></i> <i class="em em-anguished"></i></p>
                    </div>
                    <div class="line-divider"></div>
                    <div class="post-comment">
                      <img src="http://placehold.it/300x300" alt="" class="profile-photo-sm" />
                      <p><a href="timeline.html" class="profile-link">Diana </a><i class="em em-laughing"></i> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud </p>
                    </div>
                    <div class="post-comment">
                      <img src="http://placehold.it/300x300" alt="" class="profile-photo-sm" />
                      <p><a href="timeline.html" class="profile-link">John</a> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud </p>
                    </div>
                    <div class="post-comment">
                      <img src="http://placehold.it/300x300" alt="" class="profile-photo-sm" />
                      <input type="text" class="form-control" placeholder="Post a comment">
                    </div>
                  </div>
                </div>
              </div> -->
              
             </div>


  
            </div>
          </div>
        </div>
      </div>
    </div>
<script>
    $(window).scroll(function() {
        if ($(window).scrollTop() == $(document).height() - $(window).height()) {
          $(".scrollView").append(
        		 '<c:forEach var="tc" items="${timeLine}">'
        		  '<div class="post-content">' +
        		  '<div class="post-date hidden-xs hidden-sm">' +
        		  	'<h5><!-- Sarah --></h5>' +
        		  	'<p class="text-grey"><!-- 10/21/2016 --></p>' +
        		  '</div><!--Post Date End-->' +
        		  '<div class="post-container">' +
        		  	'<img src="http://placehold.it/300x300" alt="user" class="profile-photo-md pull-left" />' +
        		  '<div class="post-detail">' +
        		  '<div class="user-info">' +
        		  	'<h5><a href="timeline.html" class="profile-link">Sarah Cruiz</a> <span class="following">following</span></h5>' +
        		  	'<p class="text-muted">2 days ago</p>' +
        		  '</div>' +
        		  '<div class="reaction">' +
        		  	'<a class="btn text-green"><i class="icon ion-thumbsup"></i> 49</a>' +
        		  	'<a class="btn text-red"><i class="fa fa-thumbs-down"></i> 0</a>' +
        		  '</div>' +
        		  '<div class="line-divider"></div>' +
        		  '<div class="post-text">' +
        		  	'<p>내용 <i class="em em-anguished"></i> <i class="em em-anguished"></i> <i class="em em-anguished"></i></p>' +
        		  '</div>' +
        		  '<div class="line-divider"></div>' +
        		  '<div class="post-comment">' +
        		  	'<img src="http://placehold.it/300x300" alt="" class="profile-photo-sm" />' +
        		  	'<p><a href="timeline.html" class="profile-link">Diana </a><i class="em em-laughing"></i>post</p>' +
        		  '</div>' +
        		  '<div class="post-comment">' +
        		  	'<img src="http://placehold.it/300x300" alt="" class="profile-photo-sm" />' +
        		  	'<input type="text" class="form-control" placeholder="Post a comment">' +
        		  '</div>' +
        		 '</div>' +
        		'</div>' +
        	'</div>'
        '</c:forEach>');
	}
});
</script>
  <%@ include file="../include/footer.jspf" %> 