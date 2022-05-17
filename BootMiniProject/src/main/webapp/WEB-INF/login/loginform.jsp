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
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<style type="text/css">
    .loginform {
      font-size: 5px;
      font-family: 'Jua';
      padding: 30px 600px;
      
   } 
   
</style>
</head>
<body>
	<c:if test="${sessionScope.saveid == 'yes'}">
		<c:set var="loginid" value="${sessionScope.loginid}"/>
	</c:if>
	<c:if test="${sessionScope.saveid == 'null' || sessionScope.saveid == 'no'}">
		<c:set var="loginid" value=""/>
	</c:if>
	
   <div class="loginform">
   		<form action="process" method="post" class="form-inline">
   			<table class="table table-bordered" style="width: 300px;">
   				<caption><b>회원 로그인</b></caption>
   				<tr>
   					<th style="width: 100px; background-color: #ddd">아이디</th>
   					<td>
   						<input type="text" name="id" class="form-control"
   						required="required" autofocus="autofocus"
   						style="width: 200px;"
   						placeholder="아이디" value="${loginid}">
   					</td>
   				</tr>
   				<tr>
   					<th style="width: 100px; background-color: #ddd">비밀번호</th>
   					<td>
   						<input type="password" name="pass" class="form-control"
   						required="required" 
   						style="width: 200px;"
   						placeholder="비밀번호">
   					</td>
   				</tr>
   				<tr>
   					<td colspan="2" align="center">
   						<input type="checkbox" name="chkid"
   						${loginid == ""?"":"checked"}> 아이디저장
   						<button type="submit" class="btn btn-info"
   						style="width: 130px;">회원로그인</button>
   					</td>
   				</tr>
   			</table>
   		</form>
   </div>
</body>
</html>