<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../include/header.jspf"%>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>


    <center>
        <h2>게시글 쓰기</h2>
        <!-- 컨트롤러가 읽어들이게끔 페이지 이동시킴 -->
        <form action="write" method="post" id="qna">
            <table width="600" border="1" bordercolor="gray" bgcolor="skyblue">
 
 
                <tr height="40">
                    <td align="center">제목</td>
                    <td><input type="text" name="answerTitle"id="tt" style="width: 448px; height: 35px; "></td>
                </tr>
 
                
                <tr height="40">
                    <td align="center" width="150">글내용</td>
                    <td width="450"><textarea rows="10" cols="50" name="answerCon" id="tcon" style="width: 446px; height: 190px"></textarea></td>
                   
                </tr>
                  
 
                <tr height="40">          
                  <td align="center" colspan="2"><input type="submit" value="글쓰기"> 
                          </tr>
            </table>

        </form> 
         <script>
             $("#qna").submit( function(e){
                if (($.trim($("#tt").val()) == "") || ($.trim($("#tcon").val()) == ""))  {
                   alert("질문 내용을 입력해주세요.");
                   return false;
                }
             });
       
       </script>
                  
                 <!--  <input type="reset" value="글수정"> -->
                      
                 <!--  <button onclick="location.href='qnaanswerList.jsp'">전체 게시글보기</button> --> <!-- 클릭하면 BoardList.jsp페이지로 넘어가는 버튼--></td>
    
    </center>


<%@ include file="../include/footer.jspf"%>

