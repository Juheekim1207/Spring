<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&family=Gamja+Flower&family=Gowun+Batang&family=Hahmlet:wght@100&family=Jua&family=Lobster&family=Nanum+Brush+Script&display=swap" rel="stylesheet">
<c:set var="root" value="<%=request.getContextPath()%>"/>
<style type="text/css">	
	body *{
		font-size: 15px;
		margin: 0px;
		padding: 0px;
	}
	ul.menu {
	    list-style: none;
	    text-align: center;
	}
	a:visited { 
		color: black; 
		text-decoration: none;
	}
	
	ul.menu{
		margin-bottom: 30px;
		padding-left: 380px;
		
	}
	
	ul.menu li{
		width: 130px;
		float: left;
		height: 30px;
		line-height: 30px;
		margin-right: 10px;
		text-align: center;
		cursor: pointer;
		font-family: 'Hahmlet';
		font-size: 13px;
		font-weight: bold;	
	}
</style>
</head>
<body>
<c:set var="root" value="<%=request.getContextPath()%>"></c:set>
<ul class="menu">
		<li>
			<a href="${root}/">Home</a>
		</li> 
		<li>
			<a href="${root}/shop/form">상품등록</a>
		</li>
		<li>
			<a href="${root}/shop/list">상품목록</a>
		</li>
		<li>
			<a href="${root}/board/list">게시판</a>
		</li>
		<li>
			<a href="${root}/member/list">회원가입</a>
		</li>
		<li>
			<a href="${root}/load/map">오시는 길</a>
		</li>
	</ul>  

</body>
</html>
