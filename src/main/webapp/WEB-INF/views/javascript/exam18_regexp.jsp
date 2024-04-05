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
		//정규표현식 작성 방법
		// /^... $/
		
		
		//전화번호 유효성 검사
		var tel = "010-1234-1234-123";
		const pattern = /^(010|011) - \d{3,4} -\d{4}$/;  //연달아서 이렇게만 나오면 true나옴. 이거 큰따옴표 안에 쓰면 안 됨
		console.log(pattern.test(tel));
		
		//이메일 유효성 검사
		var email = "fall-down@naver.co.kr";
		const emailPattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/
		console.log(emailPattern.test(email));
		
		
	</script>
	
	</head>
	
	<body>
			<div class="card">
	  			<div class="card-header">exam18_regexp</div>
	  			<div class="card-body">
				content
 	 		</div>
		</div>
	</body>
</html>