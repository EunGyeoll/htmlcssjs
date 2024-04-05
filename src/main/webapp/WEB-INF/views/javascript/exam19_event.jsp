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
	
	<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	
	
	<script type="text/javascript">
		function fun1()	 {
			console.log(event.target);
			console.log("버튼1이 출력됨");
		}
		
		function fun2()	 {
			console.log(event.target);
			console.log("버튼2가 출력됨");
			//<a> 엘리먼트가 기본적으로 가지고 있는  액션을 막음
			event.preventDefault();
			
		}
		function fun3()	 {
			console.log("사용자가 입력한 내용을 검사합니다. (유효성 검사)");
			//<form> 엘리먼트가 기본적으로 가지고 있는  액션을 막음
			event.preventDefault();
		}
		function fun4()	 {
			console.log("이메일 내용이 변경되었습니다.");
			console.log(event.target.value);
		
		}
		function fun5()	 {
			console.log("패스워드 내용이 변경되었습니다.");
			console.log(event.target.value);
		}
		function fun6()	 {
			console.log("패스워드 상태가 변경되었습니다.");
			if(event.target.checked) {
				console.log("체크됨");
			} else{
				console.log("체크해제됨");
				
			}
			/* 	console.log(event.target.value); */
		}
	</script>
	
	</head>
	
	<body>
	
			<div class="card">
	  			<div class="card-header">exam19_event</div>
	  			<div class="card-body">
	  			<button onclick = "fun1()" class = "btn btn-info btn-sm">버튼1</button>
				<a href ="/htmlcssjs" onclick = "fun2()" class = "btn btn-info btn-sm"> 버튼2</a>
				
				<hr/>
					
			<form action="/htmlcssjs" onsubmit= "fun3()"> <!--fun3을 눌렀을 때 action 실행. #은 현재 페이지에 머물러 있으라는 뜻 . 밑에건 부트스트랩 forms에서 복사함-->
			
			  <div class="mb-3 mt-3">
			    <label for="email" class="form-label">Email:</label>
			    <input onchange= "fun4()" type="email" class="form-control" id="email" placeholder="Enter email" name="email">
			  </div>
			  <div class="mb-3">
			    <label for="pwd" class="form-label">Password:</label>
			    <input onkeyup = "fun5()" type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd"> 
			  </div>
			  <div class="form-check mb-3">
			    <label class="form-check-label">
			      <input onchange="fun6()" class="form-check-input" type="checkbox" name="remember"> Remember me
			    </label>
			  </div>
			  <button type="submit" class="btn btn-primary btn-sm">Submit</button>
			</form>	
							
				
				
				
				
 	 		</div>
		</div>
	</body>
</html>