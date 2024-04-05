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
		//객체를 초기화하는 생성자 정의
		
		////객체의 필드값을 초기화할 목적
		function Car(){
			this.name = "그랜저"; //var name = "그랜저" 는 생성자 아님. this가 들어가면 생성자. 생성자를 통해 객체 생성
			this.price = 5000000;
			this.start = function() {
			console.log("시동을 겁니다");
			};
		};
		
		function Person(name, age) {
			this.name=name;
			this.age=age;
		};
		
		//객체 생성
		const myCar =  new Car(); //new 로 호출. 이 객체를 통해 필드에 접근
		console.log(myCar.name());
		console.log(myCar.price());
		myCar.start();
		
		const my= new Person("홍길동", 30);
		const you = new Person("감자바", 27);
		console.log(my);
		console.log(you);
		
	</script>
	</head>
	
	<body>
			<div class="card">
	  			<div class="card-header">exam08_function_constructor</div>
	  			<div class="card-body">
				content
 	 		</div>
		</div>
	</body>
</html>