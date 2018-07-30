<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	//등록을 눌렀을 떄 페이지가 새로고침되면서 title값을 받아온채로 다시 코드를 실행하게 된다.
session.setAttribute("name","홍길동");

String name = (String)session.getAttribute("name");

String title = request.getParameter("title");
String content = request.getParameter("content");

if(title==null){
%>
<form onsubmit="return check(this)">
	<table border="1">
		<tr>
			<th colspan="2">글쓰기</th>
		</tr>
		<tr>
			<th>제목</th>
			<td><input type="text" maxlength="50" id="title" name="title" required></td>
			<!-- requried는 input의 입력란에 무조건 무언가 작성해야한다는 것을 정해주는 것이다. -->
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea cols="40"	rows="20" id="content" name="content"></textarea></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><input type="text" disabled value="<%=name%>"></td>
			<!-- disabled속성은 사용자가 임의로 해당 value를 바꾸지 못하게 막는 속성이다. -->
			<!-- 위와 같은 방법으로 jsp영역에서 선언된 것을 간단하게 불러올 수 있다. -->
		</tr>
		<tr>
			<td colspan="2" style="text-align:center"><button>등록</button></td>
	</table>
</form>
<script>
	function check(fObj){		
		/* script에서는 파라메터에 미리 데이터타입을 지정해 두기 때문에 쓰면 안된다. */
		if(fObj.title.value.trim().length<3){
			alert("제목은 3글자 이상이여~~")
			fObj.title.value = "";
			fObj.title.focus();
		return false;
		}
		if(fObj.content.value.trim().length<2){
			alert("내용은 2글자는 써야쥬~");
		fObj.content.value="";
		fObj.content.focus();
		return false;
		}
		return true;
	}
</script>
<%
}else{
	out.write("니가 쓴 제목 : " + title);
	out.write("<br>");
	out.write("니가 쓴 내용 : " + content);
}
%>
</body>
</html>