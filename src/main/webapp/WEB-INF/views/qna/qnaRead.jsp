<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jspf"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>






<style type="text/css">
.tg {
	border-collapse: collapse;
	border-color: #ccc;
	border-spacing: 0;
}

.tg td {
	background-color: #fff;
	border-color: #ccc;
	border-style: solid;
	border-width: 1px;
	color: #333;
	font-family: Arial, sans-serif;
	font-size: 14px;
	overflow: hidden;
	padding: 10px 5px;
	word-break: normal;
}

.tg th {
	background-color: #f0f0f0;
	border-color: #ccc;
	border-style: solid;
	border-width: 1px;
	color: #333;
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	overflow: hidden;
	padding: 10px 5px;
	word-break: normal;
}

.tg .tg-c3ow {
	border-color: inherit;
	text-align: center;
	vertical-align: top
}

.tg .tg-tjwp {
	background-color: #efefef;
	border-color: #c0c0c0;
	text-align: center;
	vertical-align: top
}

.tg .tg-3xi5 {
	background-color: #ffffff;
	border-color: inherit;
	text-align: center;
	vertical-align: top
}

.tg .tg-0pky {
	border-color: inherit;
	text-align: left;
	vertical-align: top
}
</style>






<div class="box" style="text-align: center; margin: auto;"></div>
<div class="box-header with-border"></div>
<br>
<h3 class="box-title">
	<p align="center">문의 게시판</p>
</h3>

<table class="tg" style="margin: auto; width: 60%;"
	class="table table-striped">

	<colgroup>
		<col style="width: 90px">
		<col style="width: 485px">
	</colgroup>



	<form name="readForm" role="form" method="post">
		<input type="hidden" id="answerNo" name="answerNo"
			value="${read.answerNo}"> <input type="hidden" id="page"
			name="page" value="${scri.page}"> <input type="hidden"
			id="perPageNum" name="perPageNum" value="${scri.perPageNum}">
		<input type="hidden" id="searchType" name="searchType"
			value="${scri.searchType}"> <input type="hidden" id="keyword"
			name="keyword" value="${scri.keyword}">
	</form>




	<tr>
		<th class="tg-tjwp">글 번호</th>
		<th class="tg-3xi5">${read.answerNo}</th>
	</tr>
	<tr>
		<td class="tg-tjwp">작성자</td>
		<td class="tg-c3ow">${read.id}</td>
	</tr>
	<tr>
		<td class="tg-tjwp">제목</td>
		<td style="text-align: center;">${read.answerTitle}</td>
	</tr>
	<tr>
		<td class="tg-tjwp">내용</td>
		<td style="height: 300px; vertical-align: text-top;">${read.answerCon}</td>
	</tr>



	<tr>
		<td colspan="2"><c:set var="pageNo"
				value="${empty param.pageNo ? '1' : param.pageNo}" /> <a
			style="float: left;" id="goList" class="btn-primary-comments"
			href="/qna/qnaList">목록 </a> <c:if
				test="${authUser.id == qnaanswer.id}">
				<form action="${pageContext.request.contextPath}/qna/qnaModify" method="get">
					<input type="hidden" value="${read.answerNo}" name="answerNo">
					<input type="hidden" value="${read.answerTitle}" name="answerTitle">
					<input type="hidden" value="${read.answerCon}" name="answerCon">
					<input type="submit" class="btn-primary-comments" value="글수정">
				</form>
			</c:if> <a href="/qna/delete?answerNo=${read.answerNo}">
				<button class="btn-primary-comments"
					onclick="return confirm('정말로 삭제하시겠습니까?')">글삭제</button>

		</a> <br>
			<hr size="5" noshade> <br>


			
   <!-- <div class="col-lg-12">
    <div class="box box-primary">
        <div class="box-header with-border">
							<h3><p align="center">댓글 작성</p></h3>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="form-group col-sm-2">
								<input class="form-control input-sm" id="id" type="text"
									placeholder="작성자">
							</div>
							<div class="form-group col-sm-8">
								<input class="form-control input-sm" id="content" type="text"
									placeholder="댓글 입력...">
							</div>

							<div class="form-group col-sm-2">
								<button type="button"
									class="btn btn-primary btn-sm btn-block replyAddBtn">
									<i class="fa fa-save"></i> 저장
								</button>
							</div>
						</div>
					</div>



					댓글
					<div class="box-footer">
                  <ul id="reply">

                   </ul>
                    </div>
        
        댓글 페이징
        <div class="box-footer">
            <div class="text-center">
                <ul class="pagination pagination-sm no-margin">

                </ul>
            </div>
        </div>
    </div>
  </div>
			
			<div class="modal fade" id="updateModal" role="dialog">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">댓글 수정창</h4>
						</div>
						<div class="modal-body">

							<div class="form-group">
								<label for="content">댓글 내용</label> <input
									class="form-control" id="content" name="content"
									placeholder="댓글 내용을 입력해주세요">
							</div>

						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default pull-left" data-dismiss="modal">닫기</button>
							<button type="button" class="btn btn-success modalModBtn">수정</button>
							<button type="button" class="btn btn-danger modalDelBtn">삭제</button>
						</div>
					</div>
				</div>
			</div>
		
		</td>
	</tr>

</table>
 
 
 
 <script>
// 1000번째 게시글
var answerNo = 23;

// 댓글 목록 호출
getreply();

// 댓글 목록 출력 함수
function getreply() {

    $.getJSON("/reply/read/" + answerNo, function (data) {

        console.log(data);

        var str = "";

        $(data).each(function () {
            str += "<li data-rno='" + this.rno + "' class='replyLi'>"
                +   "<p class='content'>" + this.content + "</p>"
                +   "<button type='button' class='btn btn-xs btn-success' data-toggle='modal' data-target='#updateModal'>댓글수정</button>"
                + "</li>"
                + "<hr/>";
});

        $("#reply").html(str);

    });

}

//댓글쓰기
var answerNo = 23; //댓글 목록 출력 함수 ...

//댓글 저장 버튼 클릭 이벤트 발생시
$("#replyAddBtn").on("click", function () {

 // 화면으로부터 입력 받은 변수값의 처리
 var content = $("#newcontent");
 var contentVal = content.val();
 console.log("content: " + comCon);

 
 // AJAX 통신 : POST
 $.ajax({
     type : "post",
     url : "/reply/",
     headers : {
         "Content-type" : "application/json",
         "X-HTTP-Method-Override" : "POST"},
     dataType : "text",
     data : JSON.stringify({
         answerNo : answerNo,
         content : contentVal,
       
     }),
     success : function (result) {
         // 성공적인 댓글 등록 처리 알림
         console.log("result: " + result);
         if (result == "regSuccess") {
             alert("댓글 등록 완료!");
         }
         getreply(); // 댓글 목록 출력 함수 호출
         content.val(""); // 댓글 내용 초기화
         getCommPage("/reply/" + answerNo + "/" +  pageNo);
     }
 
 });

});

//댓글 수정
$("#reply").on("click", ".replyLi button", function () {
    var reply = $(this).parent();

    var rno = reply.attr("data-rno");
    var content = reply.find(".content").text();
    

    $("#rno").val(rno);
    $("#content").val(content);
    

});

$(".modalModBtn").on("click", function () {

    // 댓글 선택자
    var reply = $(this).parent().parent();
    // 댓글번호
    var rno = reply.find("#rno").val();
    // 수정한 댓글내용
    var content = reply.find("#content").val();

    // AJAX통신 : PUT
    $.ajax({
        type : "put",
        url : "/reply/" + rno,
        headers : {
            "Content-type" : "application/json",
            "X-HTTP-Method-Override" : "PUT"
        },
        data : JSON.stringify(
            {content : content}
        ),
        dataType : "text",
        success : function (result) {
            console.log("result : " + result);
            if (result == "modSuccess") {
                alert("댓글 수정 완료!");
                $("#updateModal").modal("hide"); // Modal 닫기
                getreply(); // 댓글 목록 갱신
            }
        }
    });

});

//댓글 삭제
$(".modalDelBtn").on("click", function () {

    // 댓글 번호
    var rno = $(this).parent().parent().find("#rno").val();

    // AJAX통신 : DELETE
    $.ajax({
        type : "delete",
        url : "/reply/" + rno,
        headers : {
            "Content-type" : "application/json",
            "X-HTTP-Method-Override" : "DELETE"
        },
        dataType : "text",
        success : function (result) {
            console.log("result : " + result);
            if (result == "delSuccess") {
                alert("댓글 삭제 완료!");
                $("#updateModal").modal("hide"); // Modal 닫기
                getAllList(); // 댓글 목록 갱신
            }
        }
    });

});


function getreplyPaging(page) {

    $.getJSON("/reply/" + answerNo + "/" + page, function (data) {
        console.log(data);

        var str = "";

        $(data.reply).each(function () {
            str += "<li data-rno='" + this.rno + "' class='replyLi'>"
                +  "<p class='replyText'>" + this.replyText + "</p>"
                +  "<p class='replyWriter'>" + this.replyWriter + "</p>"
                +  "<button type='button' class='btn btn-xs btn-success' data-toggle='modal' data-target='#updateModal'>댓글 수정</button>"
                +  "</li>"
                +  "<hr/>";
        });

        $("#reply").html(str);

        // 페이지 번호 출력 호출
        printPageNumbers(data.pageMaker);

    });

}

// 댓글 목록 페이지 번호 출력 함수
function printPageNumbers(pageMaker) {

    var str = "";

    // 이전 버튼 활성화
    if (pageMaker.prev) {
        str += "<li><a href='"+(pageMaker.startPage-1)+"'>이전</a></li>";
    }

    // 페이지 번호
    for (var i = pageMaker.startPage, len = pageMaker.endPage; i <= len; i++) {
        var strCalss = pageMaker.criteria.page == i ? 'class=active' : '';
        str += "<li "+strCalss+"><a href='"+i+"'>"+i+"</a></li>";
    }

    // 다음 버튼 활성화
    if (pageMaker.next) {
        str += "<li><a href='"+(pageMaker.endPage + 1)+"'>다음</a></li>";
    }

    $(".pagination-sm").html(str);
}

//목록페이지 번호 변수 선언, 1로 초기화(첫번째 페이지)
var replyPageNum = 1;

// 목록페이지 번호 클릭 이벤트
$(".pagination").on("click", "li a", function (event) {

    event.preventDefault();
    replyPageNum = $(this).attr("href"); // 목록 페이지 번호 추출
    getReplyPaging(replyPageNum); // 목록 페이지 호출

}); 

 //템플릿 코드

<script id="replyTemplate" type="text/x-handlebars-template">
    
    <div class="post replyDiv" data-rno=>
        <div class="user-block">
            <img class="img-circle img-bordered-sm" src="/dist/img/user1-128x128.jpg" alt="user image">
            <span class="username">
                <a href="#"></a>
                <a href="#" class="pull-right btn-box-tool replyDelBtn" data-toggle="modal" data-target="#delModal">
                    <i class="fa fa-times"> 삭제</i>
                </a>
                <a href="#" class="pull-right btn-box-tool replyModBtn" data-toggle="modal" data-target="#modModal">
                    <i class="fa fa-edit"> 수정</i>
                </a>
            </span>
            <span class="description"></span>
        </div>
        <div class="oldReplyText">}</div>
        <br/>
    </div>
 
    
    //댓글 목록
    $(document).ready(function () {

        var answerNo = "${read.answerNo}";  // 현재 게시글 번호
        var replyPageNum = 1; // 댓글 페이지 번호 초기화

        // 댓글 내용 : 줄바꿈/공백처리
        Handlebars.registerHelper("escape", function (replyText) {
            var text = Handlebars.Utils.escapeExpression(replyText);
            text = text.replace(/(\r\n|\n|\r)/gm, "<br/>");
            text = text.replace(/( )/gm, "&nbsp;");
            return new Handlebars.SafeString(text);
        });

        // 댓글 등록일자 : 날짜/시간 2자리로 맞추기
        Handlebars.registerHelper("prettifyDate", function (timeValue) {
            var dateObj = new Date(timeValue);
            var year = dateObj.getFullYear();
            var month = dateObj.getMonth() + 1;
            var date = dateObj.getDate();
            var hours = dateObj.getHours();
            var minutes = dateObj.getMinutes();
            // 2자리 숫자로 변환
            month < 10 ? month = '0' + month : month;
            date < 10 ? date = '0' + date : date;
            hours < 10 ? hours = '0' + hours : hours;
            minutes < 10 ? minutes = '0' + minutes : minutes;
            return year + "-" + month + "-" + date + " " + hours + ":" + minutes;
        });

        // 댓글 목록 함수 호출
        getreply("/reply/" + answerNo + "/" + replyPageNum);

        // 댓글 목록 함수
        function getreply(replyUri) {
            $.getJSON(replyUri, function (data) {
                printReplyCount(data.pageMaker.totalCount);
                printreply(data.reply, $(".replyDiv"), $("#replyTemplate"));
                printReplyPaging(data.pageMaker, $(".pagination"));
            });
        }

        // 댓글 갯수 출력 함수
        function printReplyCount(totalCount) {

            var replyCount = $(".replyCount");
            var collapsedBox = $(".collapsed-box");

            // 댓글이 없으면
            if (totalCount === 0) {
                replyCount.html(" 댓글이 없습니다. 의견을 남겨주세요");
                collapsedBox.find(".btn-box-tool").remove();
                return;
            }

            // 댓글이 존재하면
            replyCount.html(" 댓글목록 (" + totalCount + ")");
            collapsedBox.find(".box-tools").html(
                "<button type='button' class='btn btn-box-tool' data-widget='collapse'>"
                + "<i class='fa fa-plus'></i>"
                + "</button>"
            );

        }

        // 댓글 목록 출력 함수
        function printreply(replyArr, targetArea, templateObj) {
            var replyTemplate = Handlebars.compile(templateObj.html());
            var html = replyTemplate(replyArr);
            $(".replyDiv").remove();
            targetArea.html(html);
        }

        // 댓글 페이징 출력 함수
        function printReplyPaging(pageMaker, targetArea) {
            var str = "";
            if (pageMaker.prev) {
                str += "<li><a href='" + (pageMaker.startPage - 1) + "'>이전</a></li>";
            }
            for (var i = pageMaker.startPage, len = pageMaker.endPage; i <= len; i++) {
                var strClass = pageMaker.criteria.page == i ? "class=active" : "";
                str += "<li " + strClass + "><a href='" + i + "'>" + i + "</a></li>";
            }
            if (pageMaker.next) {
                str += "<li><a href='" + (pageMaker.endPage + 1) + "'>다음</a></li>";
            }
            targetArea.html(str);
        }

        // 댓글 페이지 번호 클릭 이벤트
        $(".pagination").on("click", "li a", function (event) {
            event.preventDefault();
            replyPageNum = $(this).attr("href");
            getreply("/reply/" + answerNo + "/" + replyPageNum);
        });
    }
    
    //댓글 등록
 // 댓글 저장 버튼 클릭 이벤트
    $(".replyAddBtn").on("click", function () {

        // 입력 form 선택자
        var replyWriterObj = $("#newReplyWriter");
        var replyTextObj = $("#newReplyText");
        var replyWriter = replyWriterObj.val();
        var replyText = replyTextObj.val();

        // 댓글 입력처리 수행
        $.ajax({
            type : "post",
            url : "/reply/",
            headers : {
                "Content-Type" : "application/json",
                "X-HTTP-Method-Override" : "POST"
            },
            dataType : "text",
            data : JSON.stringify({
                answerNo : answerNo,
                replyWriter : replyWriter,
                replyText : replyText
            }),
            success: function (result) {
                console.log("result : " + result);
                if (result === "regSuccess") {
                    alert("댓글이 등록되었습니다.");
                    replyPageNum = 1;  // 페이지 1로 초기화
                    getreply("/reply/" + answerNo + "/" + replyPageNum); // 댓글 목록 호출
                    replyTextObj.val("");   // 댓글 입력창 공백처리
                    replyWriterObj.val("");   // 댓글 입력창 공백처리
                }
            }
        });
    });
    
    댓글 수정 modal 영역
    <div class="modal fade" id="modModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">댓글수정</h4>
                </div>
                <div class="modal-body" data-rno>
                    <input type="hidden" class="rno"/>
                    <input type="text" id="replytext" class="form-control"/>
                    <textarea class="form-control" id="replyText" rows="3" style="resize: none"></textarea>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">닫기</button>
                    <button type="button" class="btn btn-primary modalModBtn">수정</button>
                </div>
            </div>
        </div>
    </div>

    댓글 삭제 modal 영역
    <div class="modal fade" id="delModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">댓글 삭제</h4>
                    <input type="hidden" class="rno"/>
                </div>
                <div class="modal-body" data-rno>
                    <p>댓글을 삭제하시겠습니까?</p>
                    <input type="hidden" class="rno"/>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">아니요.</button>
                    <button type="button" class="btn btn-primary modalDelBtn">네. 삭제합니다.</button>
                </div>
            </div>
        </div>
    </div>

 // 댓글 수정을 위해 modal창에 선택한 댓글의 값들을 세팅
    $(".replyDiv").on("click", ".replyDiv", function (event) {
        var reply = $(this);
        $(".rno").val(reply.attr("data-rno"));
        $("#replyText").val(reply.find(".oldReplyText").text());
    });

    // modal 창의 댓글 수정버튼 클릭 이벤트
    $(".modalModBtn").on("click", function () {
        var rno = $(".rno").val();
        var replyText = $("#replyText").val();
        $.ajax({
            type : "put",
            url : "/reply/" + rno,
            headers : {
                "Content-Type" : "application/json",
                "X-HTTP-Method-Override" : "PUT"
            },
            dataType : "text",
            data: JSON.stringify({
                replyText : replyText
            }),
            success: function (result) {
                console.log("result : " + result);
                if (result === "modSuccess") {
                    alert("댓글이 수정되었습니다.");
                    getreply("/reply/" + answerNo + "/" + replyPageNum); // 댓글 목록 호출
                    $("#modModal").modal("hide"); // modal 창 닫기
                }
            }
        })
    });

    // modal 창의 댓글 삭제버튼 클릭 이벤트
    $(".modalDelBtn").on("click", function () {
        var rno = $(".rno").val();
        $.ajax({
            type: "delete",
            url: "/reply/" + rno,
            headers: {
                "Content-Type" : "application/json",
                "X-HTTP-Method-Override" : "DELETE"
            },
            dataType: "text",
            success: function (result) {
                console.log("result : " + result);
                if (result === "delSuccess") {
                    alert("댓글이 삭제되었습니다.");
                    getreply("/reply/" + answerNo + "/" + replyPageNum); // 댓글 목록 호출
                    $("#delModal").modal("hide"); // modal 창 닫기
                }
            }
        });
    });
    
    


</script>
 -->









<%@include file="../include/footer.jspf"%>