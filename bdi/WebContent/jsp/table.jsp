<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/bs-3.3.7/dist/css/bootstrap.css"/>
<link rel="stylesheet" href="/bs-3.3.7/dist/css/bootstrap-theme.css"/>
</head>
<body>
<div class="container">
	<table class="table table-hover" border="1">
		<tr>
			<th>이름</th>
			<th>나이</th>
			<th>주소</th>
			<th>아이디</th>
		</tr>
		<tbody id="data">
		</tbody>			
	</table>
</div>
<script>
	var userList = new Array();
	var user = {};
	user['name'] = "홍길동";
	user['age'] = "19";
	user['address'] = "서울";
	user['id'] = "redWD";
	userList.push(user);
	
	user = {};
	user['name'] = "박명수";
	user['age'] = "49";
	user['address'] = "바다";
	user['id'] = "seaPrince";
	userList.push(user);
	
	user = {};
	user['name'] = "고길동";
	user['age'] = "44";
	user['address'] = "호이동";
	user['id'] = "angelDong";
	userList.push(user);
	
	var html = '';
	for(var i=0;i<userList.length;i++){
		html += '<tr>';
		html +=	'<td>' + userList[i].name + '</td>';
		html +=	'<td>' + userList[i].age + '</td>';
		html +=	'<td>' + userList[i].address + '</td>';
		html +=	'<td>' + userList[i].id + '</td>';
		html += '</tr>';		
	}
	document.querySelector('#data').innerHTML = html;
</script>
</body>
</html>