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
                  <h3>Sarah Cruiz[사용자 이름]</h3>
                  <p class="text-muted">Creative Director[사용자 직업]</p>
                </div>
              </div>
              <div class="col-md-9">
                <ul class="list-inline profile-menu">
                  <li><a href="${pageContext.request.contextPath}/sns/view/timeline/timeline.jsp">타임라인</a></li>
                  <!-- <li><a href="timeline-about.html">About</a></li> -->
                  <li><a href="${pageContext.request.contextPath}/sns/view/timeline/timeline-album.jsp" class="active">앨범</a></li>
                  <li><a href="${pageContext.request.contextPath}/sns/view/timeline/timeline-friends.jsp">친구</a></li>
                </ul>
                <ul class="follow-me list-inline">
                  <li>1,299 people following her</li>
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
                <li><a href="timeline-about.html">About</a></li>
                <li><a href="timeline-album.html" class="active">Album</a></li>
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

              <!-- Photo Album
              ================================================= -->
              <ul class="album-photos">
                <li>
                  <div class="img-wrapper" data-toggle="modal" data-target=".photo-1">
                    <img src="http://placehold.it/1000x1000" alt="photo" />
                  </div>
                  <div class="modal fade photo-1" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <img src="http://placehold.it/1000x1000" alt="photo" />
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="img-wrapper" data-toggle="modal" data-target=".photo-2">
                    <img src="http://placehold.it/1000x1000" alt="photo" />
                  </div>
                  <div class="modal fade photo-2" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <img src="http://placehold.it/1000x1000" alt="photo" />
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="img-wrapper" data-toggle="modal" data-target=".photo-3">
                    <img src="http://placehold.it/1000x1000" alt="photo" />
                  </div>
                  <div class="modal fade photo-3" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <img src="http://placehold.it/1000x1000" alt="photo" />
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="img-wrapper" data-toggle="modal" data-target=".photo-4">
                    <img src="http://placehold.it/1000x1000" alt="photo" />
                  </div>
                  <div class="modal fade photo-4" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <img src="http://placehold.it/1000x1000" alt="photo" />
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="img-wrapper" data-toggle="modal" data-target=".photo-5">
                    <img src="http://placehold.it/1000x1000" alt="photo" />
                  </div>
                  <div class="modal fade photo-5" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <img src="http://placehold.it/1000x1000" alt="" />
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="img-wrapper" data-toggle="modal" data-target=".photo-6">
                    <img src="http://placehold.it/1000x1000" alt="photo" />
                  </div>
                  <div class="modal fade photo-6" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <img src="http://placehold.it/1000x1000" alt="" />
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="img-wrapper" data-toggle="modal" data-target=".photo-7">
                    <img src="http://placehold.it/1000x1000" alt="photo" />
                  </div>
                  <div class="modal fade photo-7" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <img src="http://placehold.it/1000x1000" alt="" />
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="img-wrapper" data-toggle="modal" data-target=".photo-8">
                    <img src="http://placehold.it/1000x1000" alt="photo" />
                  </div>
                  <div class="modal fade photo-8" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <img src="http://placehold.it/1000x1000" alt="" />
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="img-wrapper" data-toggle="modal" data-target=".photo-9">
                    <img src="http://placehold.it/1000x1000" alt="photo" />
                  </div>
                  <div class="modal fade photo-9" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <img src="http://placehold.it/1000x1000" alt="" />
                      </div>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
  <!--           <div class="col-md-2 static">
              <div id="sticky-sidebar">
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
              </div>
            </div> -->
          </div>
        </div>
      </div>
    </div>
<%@ include file="../include/footer.jspf" %>