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
<title>마켓 스프링부트</title>
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
   
   div.layout{
   		width: 100%;
   }
   
   div.layout div.title{
   		margin-top: 10px;
   		padding-left: 600px;
   		font-family: 'Gowun Batang';
   		width: 1500px;
   } 
   
   div.layout div.header{
   		height: 40px; 
   		background-color: purple;
   		color: white;
   		text-align: center;
   		line-height: 40px;
   		width: 1500px;
   }
   
   div.layout div.menu{
		border-bottom: 1px solid gray;
		padding-bottom: 15px; 
		margin-bottom: 30px;
		width: 1500px;
		height: 50px;
   }
   
   div.layout div.info{
   		width: 215px; 
   		height: 210px;
   		border: 3px solid gray;
   		border-radius: 20px;
   		padding: 15px 15px;
   		position: fixed;
   		margin: 35px 40px;
        color: gray;
   }
   
   div.layout div.main{
   		position: absolute; 
   		left: 260px;
   		height: 500px;
   }
   
</style>
</head>
<body>
	<div class="layout">
		<div class="header">지금 가입하고 인기상품 100원에 받아가세요! ></div>
		<div class="title">
			<tiles:insertAttribute name="title"/>
		</div>
		<div class="menu">
			<tiles:insertAttribute name="menu"/>
		</div>
		<div class="info">
			<tiles:insertAttribute name="info"/>
		</div>
		<div class="main">
			<tiles:insertAttribute name="main"/>
		</div>
	</div>
</body>
</html>