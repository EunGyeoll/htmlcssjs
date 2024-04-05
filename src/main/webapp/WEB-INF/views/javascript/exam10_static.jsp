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
	class Car {
		//정적 필드와 초기화
		static company = "현대자동차"
		constructor(name = "그랜저", price=5000000) {
			
			//인스턴스 필드와 초기화
			this.name=name;
			this.price=price;
			
		}
		
		//정적 메소드 선언: constructor 안이 아니라 바깥쪽에서 선언해야 함
		static setCompany(company) {
			return Car.company = company;
		}
		
		static getCompany() {
		 return Car.company;	//클래스 이름 앞에 써야함. Car.company. 정적 메소드 안에는 this 사용 불가.
		}
		
		//인스턴스 메소드 선언: 생성자 안에서 선언해야 함
		setPrice(price) {
			this.price = price;
		}
		getPrice(){
			return this.price;
		}
	}
	
	//정적 멤버 사용
	console.log(Car.company);
	Car.setCompany("기아자동차");
	console.log(Car.getCompany());
	
	//인스턴스 멤버 사용
	const myCar = new Car("포르쉐", 250000000);
	console.log(myCar.name);
	myCar.setPrice(30000000);
	console.log(myCar.getPrice());
	
	
	
	</script>
	
	
	
	</head>
	
	<body>
			<div class="card">
	  			<div class="card-header">exam10_static</div>
	  			<div class="card-body">
				content
 	 		</div>
		</div>
	</body>
</html>