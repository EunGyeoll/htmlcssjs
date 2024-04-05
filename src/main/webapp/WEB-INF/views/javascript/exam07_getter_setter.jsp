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
	</head>
	
	<script type="text/javascript">
		const car = {
				name: "그랜저",
				price: 5000,
				speed: 100, //mile
				start: function() {
					console.log("시동을 겁니다");
				},
				
				//seetter  선언. 보통 외부의 값을 받아야 하므로 매개변수가 있음
				set kmSpeed(meter) { //setKmSpeed(meter){this...} 가능. 이거 호출할 때는 setKmspeed(60);
					//km-> mile
					this.speed = meter/0.621371; //연산한뒤 필드값 저장
				},
				
				// getter 선언
				get kmSpeed() {
					//mile->km
					return this.speed * 0.621371;		
				},
		};
		
			//setter 호출	
			car.Speed = 60; //setter 호출됨. 60이 매개변수 meter에 들어감 / = 사용안하면 getter 호출됨. 60이 매개변수로 들어감 
			//getter 호출	
			console.log("현재 속도는  ", car.kmSpeed) //getter setter를 속성처럼 사용할 수 있다	
	
		
	</script>
	<body>
			<div class="card">
	  			<div class="card-header">exam07_getter_setter</div>
	  			<div class="card-body">
				content
 	 		</div>
		</div>
	</body>
</html>