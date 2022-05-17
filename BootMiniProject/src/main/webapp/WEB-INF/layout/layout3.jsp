<%@page import="javax.servlet.jsp.tagext.TagLibraryInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&family=Gamja+Flower&family=Gowun+Batang&family=Jua&family=Lobster&family=Nanum+Brush+Script&display=swap" rel="stylesheet">
<style type="text/css">

/*      div{
   		border: 4px solid black;
   }   */
   
   a:link{
   		text-decoration: none; 
   		color: black;
   }
   
   div.layout div.title a{
   		text-decoration: none;
   		color: black;
   }
   
   div.layout div.title{
   		margin-top: 50px;
   		padding-left: 550px;
   		font-family: 'Gowun Batang';
   		width: 1500px;
   } 
   
   
   div.layout div.main{
/*    		position: relative; 
   		left: 400px;
   		top: 230px;
   		height: 500px; */
   		/* margin: 0px 500px; */
   }
   
</style>
</head>
<body>
	<div class="layout">
		<div class="title">
			<tiles:insertAttribute name="title2"/>
		</div>
		<div class="main">
			<tiles:insertAttribute name="main"/>
		</div>
	</div>
</body>
</html>