<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	/* table.boardform{
		font-family: 'Jua';
		font-size: 1.3rem;
	}
	 */
	div.boardwrite{
		padding: 30px 170px;
	}
</style>
</head>
<body>
	<div class="paging" style="margin-left: 300px;">
			<ul class="pagination">
			
			  <!-- 이전 -->
			  <c:if test="${startPage>1}">
			  		<li><a href="list?currentPage=${startPage-1}">이전</a></li>
			  </c:if>
			 
			  	
			  <c:forEach var="pp" begin="${startPage}" end="${endPage}">
			  	<c:if test="${pp==currentPage}">
			  		<li class="active"><a href="list?currentPage=${pp}">${pp}</a></li>
			  	</c:if>
			  	<c:if test="${pp!=currentPage}">
			  		<li><a href="list?currentPage=${pp}">${pp}</a></li>
			  	</c:if>
			  </c:forEach>
			  
			  <!-- 다음 -->
			  <c:if test="${endPage<totalPage}">
			  		<li><a href="list?currentPage=${endPage+1}">다음</a></li>
			  </c:if>
			  
			  
			</ul>
		</div>
		<!-- 글쓰기 버튼은 로그인을 해야만 보인다 -->
		<c:if test="${sessionScope.loginok != null}">
			<button type="button" class="btn btn-success"
			style="width: 100px;" onclick="location.href='form'">
				<span class="glyphicon glyphicon-pencil"></span>&nbsp;글쓰기
			</button>
		</c:if>
	</div>
</body>
</html>