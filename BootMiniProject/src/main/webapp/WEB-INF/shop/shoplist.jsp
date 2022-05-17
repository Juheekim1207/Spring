<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&family=Gamja+Flower&family=Gowun+Batang&family=Jua&family=Lobster&family=Nanum+Brush+Script&display=swap" rel="stylesheet">
<style type="text/css">
   div.shoplist{
   		padding: 40px 110px;
   		font-family: 'Gowun Batang';
   }
</style>
</head>
<body>
	<div class="shoplist">
	<h3 class="alert alert-info" style="width: 600px; text-align: center;">총 ${totalCount}개의 글이 있습니다</h3>	
	<table class="table table-bordered" style= "width: 600px;">
	<caption><h3>전체 상품 목록</h3></caption>
	<tr bgcolor="#ddd">
		<th width="50">번호</th>
		<th width="400">상품명</th>
		<th>입고일</th>
	</tr>
	<c:forEach var="dto" items="${list}">
		<tr>
			<td>${no}</td>
			<c:set var="no" value="${no-1}"/>
			<td>
				<!-- 사진이 들어있는 경우 출력하기 -->
				<c:if test="${dto.photo != ''}">
					<img src="../${dto.photo}" width="80" height="80" border="1">
					&nbsp;&nbsp;
				</c:if>
				<a href="detail?num=${dto.num}&currentPage=${currentPage}"
				style="color: black;">${dto.sangpum}</a>
			</td>
			<td>${dto.ipgoday}</td>
		</tr>
	</c:forEach> 
	</table>
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
	</div>
</body>
</html>