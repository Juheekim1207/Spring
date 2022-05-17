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
<link href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&family=Gamja+Flower&family=Gowun+Batang&family=Jua&family=Lobster&family=Nanum+Brush+Script&display=swap" rel="stylesheet">
<style type="text/css">
   body h3{
      font-size: 20px;
      font-family: 'Nanum Brush Script';
   }
   
   .mainimage{
 	margin-left: 20px;
   	margin-top: 20px;
   	size: 100%;
   }
   
   .mainimage:hover{
   	border: 4px solid green;
 	cursor: pointer;
   }
   
</style>
</head>
<body>
	<h3 style="padding-left: 20px;">&nbsp;MD's PICK</h3>
	<c:forEach var="a" begin="1" end="20">
		<img src="image/${a}.jpg" class="mainimage" style="width: 170px;">
		<c:if test="${a%5 == 0}"><br></c:if>
	</c:forEach>
</body>
</html>