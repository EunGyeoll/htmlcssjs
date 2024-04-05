<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Latest compiled JavaScript -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	
	<script type = "text/javascript">
				//변수를 선언하는 3가지 방법
				var var1 = 1; //전역변수
				let var2 = 1.0;//전역변수
				const var3= "abc"; //전역변수
				
				//콘솔에 변수값 출력
				console.log("var1: ", var1);
				console.log("var2: ", var2);
				console.log("var3: ", var3);
				console.log("");
				</script>

	
	<script type="text/javascript">
		function fun1() {
		  	var var4  = "1" //지역변수(함수레벨)
	  		let var5 = 10.0; //지역변수(블록레벨)
		  	const var6 = "ghi"; //지역변수(블록레벨)
		  	
		  	if(true) {
		  	  	var var7 =100; //지역변수(함수레벨)
		  	  	let var8=100.0;//지역변수(블록레벨) var8,9는 이 if문안에서만 쓰여야함
		  	  	const var9 = "jhi"; //지역변수(블록레벨)
		  	  	//---------
		  	  	console.log("var1:", var1); 
		  	  	console.log("var2:", var2);
		  	  	console.log("var3:", var3);
		  	  	console.log("var4:", var4);
		  	  	console.log("var5:", var5);
		  	  	console.log("var6:", var6); //5,6 되는 이유는 
		  	  	console.log("var7:", var7);
 		  	  	console.log("var8:", var8);
		  	  	console.log("var9:", var9); 
		  	  	console.log("");
		  	  	//---------
		  	}
		  	
			  //----------------
		  	console.log("var1:", var1);
		  	console.log("var2:", var2);
		  	console.log("var3:", var3);
		  	console.log("var4:", var4);
		  	console.log("var5:", var5);
		  	console.log("var6:", var6);
		  	console.log("var7:", var7);
/* 		  	console.log("var8:", var8);
		  	console.log("var9:", var9); */
		  	console.log("");

	 		  //---------	  
		}
		
		function fun2() {
		  //----------------
	  	console.log("var1:", var1);
	  	console.log("var2:", var2);
	  	console.log("var3:", var3);
/* 	  	console.log("var4:", var4); */ //function1에 정의돼있어서
	  	console.log("var5:", var5);
	  	console.log("var6:", var6);
	  	console.log("var7:", var7);
/* 	  	console.log("var8:", var8);
	  	console.log("var9:", var9); */
	  	console.log("");
	  //---------	  
		}
		
		//함수 호출
		
		fun1();
		fun2();
		
	</script>
		</head>
	<body>
		<div class="card">
			<div class="card-header">index</div>
			<div class="card-body">
			


			</div>
		</div>
	</body>
</html>