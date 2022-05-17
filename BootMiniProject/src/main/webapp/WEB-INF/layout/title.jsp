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
<link href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Brush+Script&display=swap" rel="stylesheet">
<style type="text/css">
   div.login{
    top:0;
   	float: right;
   	padding-top: 70px;
   	padding-right: 250px;
   }


</style>
</head>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<body>
	<a href="/">
	<img src="/image/01.png" style="width: 300px;">
	</a>
	<div class="login">
		<c:if test="${sessionScope.loginok == null}">
			<button type="button" class="btn btn-warning btn-sm"
			style="width: 100px;" onclick="location.href='${root}/login/form'">
			로그인</button>
		</c:if>
		
		<c:if test="${sessionScope.loginok != null}">
			<b style="font-family: 'Gowun Batang'">${sessionScope.loginname}(${sessionScope.loginid}) 님</b>
			&nbsp;
			<button type="button" class="btn btn btn-sm"
			 onclick="logout()">로그아웃</button>
		</c:if>
	</div>
	<script type="text/javascript">
		function logout()
		{
			$.ajax({
				type: "get",
				dataType: "text",
				url: "${root}/login/logout",
				success: function(){
					location.reload();
				}
			});
		}
	</script>
</body>
</html>







