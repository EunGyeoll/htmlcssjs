<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script type="text/javascript">

		//객체 표기법 {}
		var var1 = 3;	//number
		var var2 = "abc"; //string
		const var3 = () => {}; //function
		var var4 = {};	//object
		var var5 = {}; //배열
		console.log("var1의 타입: ", typeof(var1));
		console.log("var2의 타입: ", typeof(var2));
		console.log("var3의 타입: ", typeof(var3));
		console.log("var4의 타입: ", typeof(var4));
		console.log("");
		
		
		//객체 생성
		var car = {
		    //핃드(속성)
		    company: "현대차",
		    name: "그랜저",
		    price: 50000000,
		    
		    //메소드
		};
		
		//필드(속성)값 읽기
		console.log(car.company);
		console.log(car.name);
		console.log(car.price);
		console.log(car["company"]);
		console.log(car["name"]);
		console.log(car["price"]);

		//필드(속성)값 변경
		car.company = "포르쉐ㅔㅔ";
		car["name"] = "911";
		console.log(car.company);
		console.log(car["name"]);
		console.log("");
		
		//객체의 메소드 정의-------
		car = {
		    //필드(속성)
		    company:"현대자동차",
		    name: "그랜저",
		    price: 5000000,
		    speed: 0,
		    
		    //메소드 
		            
/* 		    run: function() {
       		this.setSpeed(60);
      	  	console.log(this.company + "의" + 
      	  			this.name + "가" + 
      	  			this.speed + "로 달립니다.");
     		}, */
     
		    
		    //자바스크립트에서는 this 꼭 붙여야함 안붙이면 에러
		    
			run() {
            this.setSpeed(60);
            console.log(this.company + "의" + this.name + "가" + this.speed + "로 달립니다.");
         },  //매개변수 이름이 s 였어도  this.speed = s;

				
		/* 	 setSpeed: function(speed) {
	    	  this.speed = speed;
	   			},
    */
		   setSpeed(speed) {
		      this.speed = speed;
		   },

       /* toString: function() {
       return this.company + "-" + this.name;
    } */

		   
	       toString() { //걍 이름이 tostirng
	         return this.company + "-" + this.name;
	      }, //tostring 선언

			  //필드값 쓸때 this붙이기

			
/* 			  sound1() {
	    	  console.log(this.name +" 빵빵");
	      }
	      
	      sound2 : () => {
	    	  console.log("빵빵")
	      }  */
	      
			  
			sound: function() {
			  console.log("빵빵");
			  },
			  
			 sound: () => {
			 //화살표함수는 this 가 객체 자신이 아니라 window 객체를 참조함
			 //그렇기 때문에 this사용하는 코드를 작성하면 안됨
			 console.log("빵빵");
			 }
		};
		
		//메소드 호출
		car.run();
		var info = toString();
		console.log("info: ", info);
		car.sound() ;
	</script>
	
</head>


<body>
	<div class="card">
		<div class="card-header">exam05_object</div>
		<div class="card-body">
			<ul>
				<li><a href="#">item</a></li>
			</ul>
		</div>
	</div>
</body>
</html>