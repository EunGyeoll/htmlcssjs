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
		
	
         var var1 = 2 ** 3;
         console.log("var1:", var1);
         console.log("");
         
         //비교 연산자
         console.log(3 == "3"); //true
         console.log(3 === "3"); //false 타입을 검사하는 거.
         console.log(3 != "3"); //false
         console.log(3 !== "3");  //true. 타입까지 검사
         console.log("");
         //논리 연산자
         var var2 = true;
         var var3 = false;
         
         console.log(var2 && var3); // 앞에게 true니까 뒤에거 출력
         console.log(var2 && "홍길동"); // 홍길동. 앞에게 true면 뒤에게 출력
         console.log(var3 && "홍길동"); //앞에거 false니까 무조건 false
       
         console.log(var2 || var3); // true 앞이 true= true 출력/ 앞이 false면 뒤에게 출력
         console.log(var2 || :"홍길동"); //true
         console.log(var3 || :"홍길동"); //홍길동
         //첫번째 값은 대부분 조건식. ( 3=== "3") 이런 조건식 와도 ㄱㅊ
        
         
        
      </script>
	
	</head>
	<body>
		<div class="card">
			<div class="card-header">exam04_function</div>
			<div class="card-body">
				<ul>
					<li><a href="#">item</a></li>			
				</ul>
			</div>
		</div>
	</body>
</html>