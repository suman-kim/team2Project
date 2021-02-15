
  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jspf" %> 
  
    <!-- 404 Error
    ================================================= -->
    <div class="error-page">
      <div class="error-content">
        <div class="container">
          <img src="${pageContext.request.contextPath}/sns/HTML/images/404.png" alt="" class="img-responsive" />
          <div class="error-message">
          	<h1 class="error-title">앗!</h1>
          	<p>요청하신 페이지를 찾을 수 없습니다. 다시 시도해 주세요.</p>
          </div>
          <form class="search-form">
            <div class="form-group">
              <label for="search_content">Search Content!</label>
              <input id="search_content" type="text" class="form-control" value="" placeholder="찾으시는 키워드를 검색하세요.">
            </div>
            <button type="submit" class="btn btn-primary">지금 검색!</button>
          </form>
        </div>
    	</div>
    </div>
    

<%@ include file="../include/footer.jspf" %>