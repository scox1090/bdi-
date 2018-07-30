<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>		<%-- <% 이곳에서는 html말고 다른 코딩이 가능하다 %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	/*public void test(){
	System.out.println("abc");
} 는 메서드이기 따문에 클래스나 매서드 사용이 불가능하다. */

	
String id = request.getParameter("id");	
String pwd = request.getParameter("pwd");	
session.setAttribute(id, "id");		//id라는 변수에 받아온 id를 기억한다.
session.setAttribute(pwd, "pwd");	//pwd라는 변수에 받아온 pwd를 기억한다.
//session은 정보를 서버나 자신이 직접 끊기 전까지 해당 정보를 기억할 수 있도록 한다.


//사용자가 요청한 값을 받아온다. (도메인 주소?오른쪽 ex)localhost?id=안녕?)
/* out.write("니가 입력한 아이디 : " + id);
out.write("니가 입력한 비밀번호 : " + pwd); */


if(id==null){
	out.println("아이디를 입력해 주세요");
}

if(pwd==null){
	out.println("비밀번호를 입력해 주세요");
}

if(id.equals("test1")){
	
	if(pwd.equals("test1")){
		out.println("와우! 로그인 성공!!");
	}else{
		out.println("잘못된 비밀번호입니다.");
	}
	
}else{
	out.println("없는 아이디입니다.");
}
%>
</body>
</html>