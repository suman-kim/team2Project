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

</style>

    <div id="page-contents">
    	<div class="container">
    		<div class="row">

    			<!-- Newsfeed Common Side Bar Left
          ================================================= -->
    			<div class="col-md-3 static">
             <div class="profile-card">
            	<img src="/displayGroupCoverFile?fileName=${member.memimg}" alt="user" class="profile-photo" />
            	<h5><a href="${pageContext.request.contextPath}/timeline/timeline.do" class="text-white">${member.id}</a></h5>
            	<a href="#" class="text-white"><i class="ion ion-android-person-add"></i><%-- ${authUser.followers} --%>명이 팔로잉 중 </a>
            </div><!--profile card ends-->
	            <div class="floatMenu">
		          	<ul class="edit-menu">
		            	<li class="active"><a href="/group/groupIndex">그룹 메인</a></li>
		            	<li><a href="" id="my-group">내 그룹</a>
		            	<li><a href="/group/groupRegister">그룹 생성</a></li>
		            	<li><a href="" id="up-atag">위로가기</a></li>
		            </ul>
	            </div>
          	</div>
		  <input type="hidden" id="typeInput" value="${type}">
          
    			<div class="col-md-7">

            <!-- Post Create Box
            ================================================= -->
            <div class="create-post">
            	<div class="row">
					
             		<div class="col-md-7 col-sm-7">
                  		<div class="form-group">
                    <!-- <img src="http://placehold.it/300x300" alt="" class="profile-photo-md" />
                    <textarea name="texts" id="exampleTextarea" cols="30" rows="1" class="form-control" placeholder="Write what you wish"></textarea> -->
	                		<input type="text" name = "keyword" id="keywordInput" value="${keyword}"
	                		class="form-control" size="40" style="margin-left:30%" placeholder="관심있는 그룹의 분야를 검색해 보세요.">
	                		<button id='searchBtn'>검색</button>
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
<%--             <c:if test="${pageMaker.hasNoGroup()}">
            	<p>현재 생성된 그룹이 없습니다.</p>
            </c:if> --%>
            <div class="friend-list">
            	<div class="row">
	            	<div class="group-List">
	
	                </div>
                </div>
            </div>
						
            </div>
          </div>
          </div>
    	</div> 	
<!-- 	지우지마세요!				<input type="hidden" class="inputGroupNo" name="grno" value="{{grno}}"> -->
						<!-- {{#eqMyGroup memno}}
                        <p class="pull-right text-green">내 그룹</p>
						{{/eqMyGroup}} -->
<script id="template" type="text/x-handlebars-template">
	{{#each .}}
				<div class="col-md-6 col-sm-6">
                  <div class="friend-card">
                  	<img src="/displayGroupCoverFile?fileName={{fullname}}" style="width:460px; height:130px; alt="profile-cover" class="img-responsive cover" />
                  	<div class="card-info">
                      <div class="friend-info">

                      	<h5><a href="confirmGroup?grno={{grno}}" class="profile-link">{{grname}}</a></h5>
                      	<p>분류  :  {{grci}}</p>
                      </div>
                    </div>
                  </div>
                </div>
	{{/each}}
</script>
   
   <!-- 헬퍼 지우지마세요!-->
<!-- <script>

Handlebars.registerHelper("eqMyGroup", function(memno, option) {
	console.log("eqMyGroup 실행됨!");
	var accum = '';
	if (memno == '${member.memno}') {
	   accum += option.fn();
	}
	return accum;
});
</script> -->

<!-- FloatMenu -->
<script type="text/javascript">

//맨 위로 버튼
$("#up-atag").click( function() {
	$( 'html, body' ).animate( { scrollTop : 0 }, 400 );
	return false;
} );

//따라다니는 메뉴
//기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
var floatPosition = parseInt($(".floatMenu").css('top'))-100;
// 250px 이런식으로 가져오므로 여기서 숫자만 가져온다. parseInt( 값 );

$(window).scroll(function() {
	// 현재 스크롤 위치를 가져온다.
	var scrollTop = $(window).scrollTop();
	// 플로팅배너가 위치하고 있을 좌표를 가리킨다.
	var newPosition = scrollTop + floatPosition + "px";

	$(".floatMenu").stop().animate({
		"top" : newPosition
	}, 500);

}).scroll();
</script>

<script type="text/javascript">
$( document ).ready(function() {
	var page = 0;
	var keyword = $("#keywordInput").val();
	var type = $("#typeInput").val();
	
	console.log("type"+type);
	console.log("firstKeyword??"+keyword);
	
	$("#my-group").on("click",
		function(event) {
		event.preventDefault();
		type = 'my';
		keyword = '';
		self.location = "/group/groupIndex?keyword=" + keyword + "&type=" + type;
	});

	$('#searchBtn').on("click",
		function(event) {
		keyword = $("#keywordInput").val();	
		self.location = "/group/groupIndex?keyword=" + keyword + "&type=" + type;
	});
	
	if(type == "my"){
		$(".floatMenu li").first().removeClass("active");
		$(".floatMenu li:eq(1)").addClass("active");
		
		$(window).scroll(function() {
			if ($(window).scrollTop() == $(document).height() - $(window).height()) {
				page++;
				getPage("/group/groupMyIndex/" + page);
			}
		});
	}else if(keyword != ""){
		$(window).scroll(function() {
			if ($(window).scrollTop() == $(document).height() - $(window).height()) {
				page++;
				getPage("/group/groupIndex/" + page);
			}
		});
	}else {
		$(window).scroll(function() {
			if ($(window).scrollTop() == $(document).height() - $(window).height()) {
				page++;
				getPage("/group/groupIndex/" + page);
			}
		});
	}
	
	function getPage(pageInfo) {
		$.getJSON(pageInfo, function(data) {
			printData(data.list, data.pageMaker, $(".group-List"), $('#template'));
			});
	}
	
	var printData = function(groupArr, page, target, templateObject) {
	
		var template = Handlebars.compile(templateObject.html());
	
		var html = template(groupArr,page);
		console.log(html);
		console.log(page);
		target.append(html);
	}
	
/* 	var source   = "<li><a href="{{uri}}">{{label}}</a></li>";
	var template = Handlebars.compile(source);
	var context = {"uri":"http://example.com", "label":"my label"};
	$("ul").append( template(context) );

	// add your JQuery event listeners
	$("li").click(function(){ alert("success"); }); */
	
	$(".group-List").on("click , a", function(){
		var grNo = $('.profile-link').attr("data-grNo");	
		console.log("111 : "+grNo);
	});
	
});
</script>
<!-- 
/* 		var grno = $(".inputGroupNo").val();

		$.ajax({
			type : 'get',
			url : '/confirmGroup',
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "GET"
			},
			data : {"grno" : grno},
			dataType : 'text', 
			success : function(result) {
				console.log("result: " + result);
			}
		}); */ -->
<%@ include file="../include/footer.jspf" %> 