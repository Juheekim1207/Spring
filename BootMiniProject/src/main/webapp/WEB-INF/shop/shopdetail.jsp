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
	div.content {
      padding-left: 150px;
   } 
</style>
<script type="text/javascript">
/* $(function(){
	$(document).on("click","#delete",function(){
	var num = ${dto.num};
	var current
	var ans = confirm("삭제하려면 [확인]을 눌러주세요");
	console.log(ans);
	if(ans){
		$.ajax({ 
			type: "get",
			dataType: "text",
			url: "../shop/delete",  
			data: {"num":num},
			success: function(data){
			 	list();
			}
		});
	}
	}); 
}); */

$(function(){
	/* $("#delete").click(function(){
		del();
		location.href = "delete?num=${dto.num}&currentPage=${currentPage}";
	});  */
	
	$("#delete").click(function(){
		var ans = confirm("삭제하려면 [확인]을 눌러주세요"); 
		if(ans){
			location.href = "delete?num=${dto.num}&currentPage=${currentPage}";
		}
	});	
	
});

/* function del() {
	var num = $(this).attr("num");	
	var ans = confirm("삭제하려면 [확인]을 눌러주세요"); 
	
	if(ans){
		$.ajax({ //자바코드 실행하기
			type: "get",
			dataType: "text",
			url: "../shop/delete",  
			data:{"num":num},
			success: function(){
				list();
			}
		});
}
} */

</script>
</head>
<body>
	<div class="content" style="width: 600px;">
		<h1><b>${dto.sangpum}</b></h1>
		<span style="float: right; color: gray;">
			입고일 : ${dto.ipgoday}
		</span>
		<br><br>
		<span>
			단가 : ${dto.price}
		</span>
		<span style="float: right; color: gray;">
			<div style="border: 1px solid black; border-radius: 10px; width: 20px; height: 20px; background-color: black;">${dto.color}</div>
		</span>
		${dto.content}
		<br><br>
		<button type="button" class="btn btn-default"
		onclick="location.href='list?currentPage=${currentPage}'">상품목록</button>
	
		<button type="button" class="btn btn-default" id="delete""
		 onclick="">상품삭제</button>
		
	</div>
</body>
</html>