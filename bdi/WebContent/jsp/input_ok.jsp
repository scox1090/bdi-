<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String[] names = request.getParameterValues("name");

for(int i=1;i<=names.length;i++){
 	out.println(i+ "번째 : " + names[i-1]);
}
%>
</body>
</html>