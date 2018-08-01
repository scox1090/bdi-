<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="rDiv">
	저는 평범한 div입니다.
</div>
<input type="color" onchange="chColor(this)">
<!-- onchange(색상)="value의 값이 변경되었을 때 발생된다. -->
<div>
	Red 	: 	<input type="range" onchange="chCol()" id="rColor" min="0" max="255"><br>
	Green	:	<input type="range" onchange="chCol()" id="gColor" min="0" max="255"><br>
	Blue	:	<input type="range" onchange="chCol()" id="bColor" min="0" max="255"><br>
	
</div>
<script src="/common/sc1.js"></script>
</body>
</html>