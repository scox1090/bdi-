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
String[] strs = new String[10];
char a= 'A';
for(int i=1;i<=10;i++){
	strs[i-1]=(char)(a+(i-1))+"";
%>
	<%=i%>	.	<%=strs[i-1]%><br>
<%
}
%>
</body>
</html>