<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0">
		<title>Insert title here</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Latest compiled JavaScript -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	
		<script type="text/javascript">
			
		//함수 선언
		function fun1(){
		  console.log("fun1() 실행") //선언문이라 세미콜론 불필요
		}
		
		//함수 호출
		fun1();
		//----------------------
		//함수 선언
		var fun2 = function() {
		  console.log("fun2() 실행"); //변수에 값을 대입한 거라 실행문이라 세미콜론 필요. }뒤에도 붙이기
		};
		//함수 호출
		fun2();
		//----------------------
		//화살표 함수 (arrow function)선언
		
		var fun3 = () => { 
		  console.log("fun3() 실행"); //함수 안에 실행문 하나면{} 안써도 됨. var fun3 = () => "fun3() 실행" 이렇게.
		}; //화살표 함수를 대입한 거라 실행문이라 세미콜론 필요
		//함수 호출
		fun3();
		//----------------------
		//함수 대입
		var fun4 = fun3;
		fun4();
		//----------------------
		//매개변수가 있는 함수
		function fun5(arg1, arg2=0) { //기본값을 주는 방법. arg2의 기본값을 0으로 준 거.
		  console.log("arg1:", arg1);
		  console.log("arg2:", arg2);
		}
		fun5(10, "abc");
		fun5(10);
		

		var var6 = (arg1, arg2) => {
		  console.log("arg1:", arg1);
		  console.log("arg2:", arg2);
		};
		var6('abc', "def");
		//실행문이 1개일 경우 {} 생략가능
		var var7 = (arg1) => console.log("arg1:", arg1);
		//매개변수 1개일 경우 () 생략 가능
		var var7 = arg1 => console.log("arg1:", arg1);
		var var8 = arg1 => console.log("arg1:", arg1);
		//----------------------
		//리턴값이 있는 함수
		function fun9(x,y) {
    	  return result;
    }

		const fun10 = (x,y) => {return x + y;} //함수 밖이므로 function이라고 선언하면 안됨. var나 let const 등으로
		//const는 값 못 바꾸므로 나중에 값 대입하려면 var나 let 써야 함
		const fun11 = (x,y) => x + y;
		
	
		//화살표 함수에서는 리턴문 1개밖에 없으면 중괄호랑 return 생략 가능
		var result1 = fun9(10, 20);
		var result2 = fun10(10, 20);
		var result3 = fun11(10, 20);
		//함수 호출해서 그 리턴값 대입. 30을 리턴해서 result1에 30저장
		console.log("result1:", result1);
		console.log("result2:", result2);
		console.log("result3:", result3);

		//자바면 변수 2개의 값을 모두 주어야 하는데 자바스크립트는 안 그래도 됨
		//기본값 있으면 기본값 가짐
		    
		    
		</script>
	
	</head>
	<body>
		<div class="card">
			<div class="card-header">index</div>
			<div class="card-body">
				<ul>
					<li><a href="#">item</a></li>			
				</ul>
			</div>
		</div>
	</body>
</html>