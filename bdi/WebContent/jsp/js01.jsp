<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id='r1'></div>
<script>
function Obj(){
	this.a = 3;		//public
	var b = 4;		//private(내부에서만 사용 가능하고 외부로 출력 불가)
	
	this.getAdd = function(){
		return this.a + b;
	}	
}

function Calc(a, b){
	var add = function(){
		return a+b;
	}
	var substract = function(){
		return a-b;
	}
	var mutiple = function(){
		return a*b;
	}
	var divide = function(){
		return a/b;
	}
	
	this.cal = function(op){
		if(op==='+'){
			return add();
		}else if(op==='-'){
			return substract();
		}else if(op==='*'){
			return mutiple();
		}else if(op==='/'){
			return divide();
		}else{
			alert("올바른 연산자가 아닙니다.");
			return null;
		}
	}
}

var c = new Calc(4, 2);
alert(c.cal('+'));
alert(c.cal('-'));
alert(c.cal('*'));
alert(c.cal('/'));


/* script안에서는 
var r1Obj = document.getElementById('r2');
	parameter에는 var로도 선언하면 안된다.
	function abc(p1,p2,p3){
		alert(a1 + ',' + p2 + ',' + p3);
	}
	abc(); */
</script>
</body>
</html>