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
	
		function fun1() {
			//viewport의 크기 얻기
			window.console.log("viewport width: ", window.innerWidth); //원래 window앞에쓰는게 정석임. 생략 가능
			window.console.log("viewport height: ", window.innerHeight);	
			} //크기 단위는 pixel
			
		function fun2() {
				window.open("https://www.w3schools.com", 
							"mywin", 
							"top=100, left=500, width=550, height=500"); //left는 간격 / width, height는 뷰포트의 크기
			}	
		function fun3() {
			window.location.href = "/htmlcssjs"; //left는 간격 / width, height는 뷰포트의 크기
		}		//window생략하고 그냥 location 가능
		
		function fun4() {
			window.history.back();
		}	
		
		function fun5() {
			window.history.forward(); 
		}	
		
	</script>
	
	</head>
	
	<body>
			<div class="card">
	  			<div class="card-header">exam01_bom</div>
	  			<div class="card-body">
	  			<!-- 
	  			[BOM과 DOM의 차이]
	  			
	  			1. BOM(Browser Object Model)
	  				브라우저의 정보 또는 제어를 위해 사용하는 객체 모델
	  			2. DOM
	  			 HTML Document 내의 정보 또는 제어를 위해 사용하는 객체 모델
	  			 -->
	  			 
	  			 
	  			<button class = "btn btn-info btn-sm" onclick = "fun1()">Window 객체 정보 얻기</button>
				<button class = "btn btn-info btn-sm" onclick = "fun2()">Window 띄우기(팝업)</button>
				
				<hr/>
				
				<button class = "btn btn-info btn-sm" onclick = "fun3()"> URL 변경하기(이동)</button>
				<hr/>
				
				<button class = "btn btn-info btn-sm" onclick = "fun4()"> 이전</button>
				<button class = "btn btn-info btn-sm" onclick = "fun5()"> 다음</button>
				
 	 		</div>
		</div>
	</body>
</html>