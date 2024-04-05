<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script>
const handleCheckData =() => {
  event.preventDefault();
  let totalResult = true;
  //Check id
  
  const uidPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,10}$/;
  //https://www.w3schools.com/jquery/jquery_dom_get.asp

  const uidResult = uidPattern.test($("#uid").val());

  if(!uidResult) {

    //el_uid.classList.add("bg-danger");
    $("#uid_error").addClass("text-danger");
    totalResult = false;
  } else{
    //el_uid.classList.remove("bg-danger");
    $("#uid_error").removeClass("text-danger");
  }
  
  //Check Email

  
  const emailPattern=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
  const emailResult = emailPattern.test($("#email").val());
  
  if(!emailResult) {
    $("#email").addClass("bg-danger");
    totalResult = false;
  } else {
    $("#email").removeClass("bg-danger");
  }
  
  //Check password
	  const passwordPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}$/;
	  const passwordResult = passwordPattern.test($('#password').val());
	  const el_pw_span = $('#password_error');
	  if(!passwordResult) {
	    $('#password_error').addClass("text-danger");
	    totalResult = false;
	  } else {
	    $('#password_error').removeClass("text-danger");
	  }
	// check phone ---------------------
	const phonePattern = /^(010)-\d{3,4}-\d{4}$/; 
	const phoneResult = phonePattern.test($("#phone").val());

  if(!phoneResult) {
    $('#phone_error').html("옳바르지 않은 형식의 전화번호입니다.");
    $('#phone_error').addClass("text-danger");
    totalResult = false;
  } else {
    $('#phone_error').html("예) 010-123-1234, 010-1234-1234");
    $('#phone_error').removeClass("text-danger");
  }
  
  if(totalResult){
   //el_form = document.joinForm;
    
   //수동으로 action 기능을 수행하도록 함
    $("#joinForm")[0].submit();
  }
  
}
</script>
</head>
<body>
	<div class="card">
		<div class="card-header">index</div>
		<div class="card-body">
			<form method="post" id="joinForm" name="joinForm" action="/htmlcssjs/jquery" onsubmit="handleCheckData()" novalidate>
				<div class="mb-3">
					<label for="uid" class="form-lable">ID</label> <input type="text" class="form-control" id="uid" name="uid" value="Abc123" /> <span id="uid_error" class="form-text">알파벳 대소문자, 숫자를 혼용해서 6자 이상 10자리 이하</span>
				</div>

				<div class="mb-3">
					<label for="email" class="form-lable">Email</label> <input type="email" class="form-control" id="email" name="email" value="Abc123@mycompany.com" />
				</div>

				<div class="mb-3">
					<label for="password" class="form-lable">Password</label> <input type="password" class="form-control" id="password" name="password" value="Abc12345" /> <span class="form-text" id="password_error">알파벳 대소문자, 숫자를 혼용해서 8자 이상 15장 이하</span>
				</div>

				<div class="mb-3">
					<label for="phone" class="form-lable">Phone</label> <input type="text" class="form-control" id="phone" name="phone" value="010-123-1234" /> <span class="form-text" id="phone_error">예) 010-123-1234, 010-1234-1234</span>
				</div>

				<div class="mb-3">
					<label for="city" class="form-lable">City</label> <select id="city" name="city" class="form-control">
						<option value="seoul">서울</option>
						<option value="pusan">부산</option>
						<option selected value="jeju">제주</option>
					</select>
				</div>

				<div class="mb-3">
					<label class="form-lable">Hobby</label>
					<div class="d-flex">
						<div class="form-check me-3">
							<input class="form-check-input" type="checkbox" id="hobby1" name="hobby" value="movie" checked /> <label class="form-check-lable" for="hobby1"> 영화 </label>
						</div>

						<div class="form-check me-3">
							<input class="form-check-input" type="checkbox" id="hobby2" name="hobby" value="trip" checked /> <label class="form-check-lable" for="hobby2"> 여행 </label>
						</div>

						<div class="form-check me-3">
							<input class="form-check-input" type="checkbox" id="hobby3" name="hobby" value="game" /> <label class="form-check-lable" for="hobby3"> 게임 </label>
						</div>
					</div>
				</div>

				<div class="mb-3">
					<label class="form-lable">Job</label>
					<div class="d-flex">
						<div class="form-check me-3">
							<input class="form-check-input" type="radio" id="job1" name="job" value="developer" /> <label class="form-check-lable" for="job1"> 개발자 </label>
						</div>
						<div class="form-check me-3">
							<input class="form-check-input" type="radio" id="job2" name="job" value="designer" checked /> <label class="form-check-lable" for="job2"> 디자이너 </label>
						</div>
						<div class="form-check me-3">
							<input class="form-check-input" type="radio" id="job3" name="job" value="manager" /> <label class="form-check-lable" for="job3"> 매니저 </label>
						</div>
					</div>
				</div>

				<div class="text-center">
					<input type="submit" class="btn btn-primary btn-sm" value="Join" /> <input type="reset" class="btn btn-primary btn-sm" value="Reset" />
				</div>
			</form>
		</div>
	</div>
</body>
</html>