<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<%@ include file="../include/header.jspf" %> 

<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<style>
.floatMenu {
	position: absolute;
}
.button-wrapper a{
	margin-left: 2em;
}
</style>

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
	            
	            <div class="floatMenu">
		          	<ul class="edit-menu">
		            	<li><a href="/group/groupIndex">그룹 메인</a></li>
		            	<li><a href="/group/groupNewsfeed" id="my-group">내 그룹</a>
		            	<li><a href="/group/groupRegister">그룹 생성</a></li>
		            	<li class="active"><a href="${pageContext.request.contextPath}/group/groupMemberAdmin">멤버관리</a></li>
		            	<li><a href="" id="up-atag">위로가기</a></li>
		            </ul>
		        </div>
          	</div>
          
    			<div class="col-md-7">

            <!-- Post Create Box
            ================================================= -->
            <div class="create-post">
            	<div class="row">
            		<div class="col-md-7 col-sm-7">
						<div class="form-group button-wrapper">
							<a href="/group/groupAddMember" id="addMem-Btn" class="btn btn-primary">가입 멤버 관리</a>
							<a href="/group/groupMemberAdmin" id="groupMem-Btn" class="btn btn-primary">그룹 멤버 관리</a>
                			<a href="/group/removeGroup" class="btn btn-primary" onclick="return confirm('정말로 그룹을 삭제하시겠습니까?')" >그룹 삭제</a>
                 		 </div>
                	</div>
            	</div>
            </div><!-- Post Create Box End -->

            <!-- Friend List
            ================================================= -->
 <%--            <c:if test="${groupMemberPage.hasNoGroupMember()}">
            	<p>가입한 그룹 멤버가 없습니다.</p>
            </c:if> --%>
            <div class=groupHeader>
            <h4 class="grey">
				<i class="icon ion-android-checkmark-circle" style = "margin-left:5%">가입 멤버 관리</i>
			</h4>
			</div>
            <div class="friend-list">
            	<div class="row">
            		<div class="member-List">	
		            <c:forEach var="MemberAdmin" items="${list}">
								<div class="col-md-4">
									<div class="friend-card">
										<img src="/displayGroupCoverFile?fileName=${MemberAdmin.covimg}" style="width:460px; height:100px; " alt="profile-cover"
											class="img-responsive cover" />
										<div class="card-info">
											<img src="/displayGroupCoverFile?fileName=${MemberAdmin.memimg}" alt="user"
												class="profile-photo-lg" />
											<div class="friend-info" >
												<a href="#" class="pull-right text-green"><!-- 회원님을 팔로우 중 --></a>
												<h5>
													<a href="#" id="addmem-tag" class="profile-link">${MemberAdmin.id}</a>
												</h5>
												<p>${MemberAdmin.job}</p>
											</div>
										</div>
									</div>
									<input type="hidden" name="memno" value="${MemberAdmin.memno}">
								</div>
							</c:forEach>
							</div>
                		</div>
            	</div>
						
            </div>
          </div>

          </div>
    	</div>
    	

<script type="text/javascript">
$("#up-atag").click( function() {
	$( 'html, body' ).animate( { scrollTop : 0 }, 400 );
	return false;
} );

var floatPosition = parseInt($(".floatMenu").css('top'))-100;

$(window).scroll(function() {
	var scrollTop = $(window).scrollTop();
	var newPosition = scrollTop + floatPosition + "px";

	$(".floatMenu").stop().animate({
		"top" : newPosition
	}, 500);

}).scroll();
</script>

<script type="text/javascript">

$( document ).ready(function() {
 	
	$('.member-List').on("click", ".friend-card", function(event) {
		event.preventDefault();
		var memno = $(this).next().val();
		//var html = $(this).parent().html();
		console.log("click : "+memno);
		//console.log("html : " + html);

		var join = confirm('그룹 가입을 수락하시겠습니까?');
			if (join == true) {
				$.ajax({
					type : 'get',
					url : '/group/addMember/' + memno,
					headers : {
						"Content-Type" : "application/json",
						"X-HTTP-Method-Override" : "GET"
					},
					dataType : 'text',
					success : function(result) {
						console.log("result: " + result);
						if (result == 'SUCCESS') {
							//$(this).remove();
  							alert("회원을 그룹에 추가하였습니다.");
  							self.location = "/group/groupAddMember";
							/* getPage("/replies/" + bno + "/" + replyPage);  */
						}
					}
				});
			} else {
				var reject = confirm('그룹 가입을 거절하시겠습니까?');
				if (reject == true){
					$.ajax({
						type : 'get',
						url : '/group/rejectAddMember/' + memno,
						headers : {
							"Content-Type" : "application/json",
							"X-HTTP-Method-Override" : "GET"
						},
						dataType : 'text',
						success : function(result) {
							console.log("result: " + result);
							if (result == 'SUCCESS') {
	  							alert("그룹 가입을 거절하였습니다.");
	  							self.location = "/group/groupAddMember";
							}
						}
					});
				}
			}
		});
	 
});
</script>

<%@ include file="../include/footer.jspf" %> 