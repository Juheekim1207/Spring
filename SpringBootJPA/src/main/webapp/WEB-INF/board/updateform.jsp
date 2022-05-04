<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<style type="text/css">
   body{
      font-size: 2rem;
      font-family: 'Jua';
   }
</style>
</head>
<body>
<form action="update" method="post">
	<input type="hidden" name="num" value="${dto.num}">
	<table class="table table-bordered" style="width: 400px;">
		<caption><b>자동차정보입력</b></caption>
		<tr>
			<th bgcolor="pink">자동차이름</th>
			<td>
				<input type="text" name="carname" class="form-control"
				required="required" value="${dto.carname}">
			</td>
		</tr>
		<tr>
			<th bgcolor="pink">자동차색상</th>
			<td>
				<input type="color" name="carcolor" class="form-control"
				value="#ffccff" style="width: 120px;" value="${dto.carcolor}">
			</td>
		</tr>
		<tr>
			<th bgcolor="pink">자동차가격</th>
			<td>
				<input type="text" name="carprice" class="form-control"
				required="required" value="${dto.carprice}">
			</td>
		</tr>
		<tr>
			<th bgcolor="pink">자동차구입일</th>
			<td>
				<input type="date" name="carguip" class="form-control"
				required="required" value="${dto.carguip}">
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="submit" class="btn btn-info"
				style="width: 120px;">JPA수정</button>
			
				<button type="button" class="btn btn-success"
				style="width: 120px;"
				onclick="location.href='/'">자동차목록</button>
			</td>
		</tr>
	</table>
</form>
</body>
</html>