<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
		rel="stylesheet">
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	
	<script type="text/javascript">
		var data = "1234561234567";
		console.log("전체 문자수: "+ data.length); 
		console.log("성별 숫자: ", data.charAt(6)); //true. charAt에서 A대문자로 쓰기. 중간에 + , 둘다 상관 X
		console.log("포함 여부: ", data.includes("567")) //6
		console.log("포함 여부: ", data.indexOf("1234567")); //true면 해당 문자열이 처음으로 나타나는 위치 출력(인덱스의 값으로), false면 -1출력. 자바에서의 contains = 자스에서 indexOf
		console.log("추출하기: ", data.slice(0,6)); //123456
		console.log("추출하기: ", data.slice(6)); //1234567
		
		var data1 = "123456-7890123";
		console.log("전체 문자수: "+ data1.length);  //14
		console.log("성별 숫자: ", data1.charAt(7)); //1
		console.log("포함 여부: ", data1.includes("567")) //
		console.log("포함 여부: ", data1.indexOf("1234567")); //7
		console.log("추출하기: ", data1.slice(0,6)); //123456
		console.log("추출하기: ", data1.slice(7)); //7890123
		console.log("토큰배열: ", data1.split("-")); //["123456", "7890123"]
		console.log("토큰배열: ", data1.substr(0,6)); //123456
		console.log("토큰배열: ", data1.substr(7));//123456
		console.log("추출하기: ", data1.substring(0,6)); //123456
		console.log("추출하기: ", data1.substring(7)); //7890123
		
	</script>
	
	</head>
	
	<body>
			<div class="card">
	  			<div class="card-header">exam13String</div>
	  			<div class="card-body">
				content
 	 		</div>
		</div>
	</body>
</html>