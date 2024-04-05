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
<!-- JQuery 외부 라이브러리 -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script type="text/javascript">

	//변경
	const changeContent = () => {
		//let el_div1 = $("#div1"); 
		//워낙 간단한 문법이라 따로 변수처리 하지 않고 바로 처리함
		//https://www.w3schools.com/jquery/jquery_dom_set.asp
	 $("#div1").html("<img src='/htmlcssjs/resources/image/photos/photo1.jpg' width='150'/>");
	}
	
	//추가
	const appendContent = () => {
		//let el_div1 = $("#div1");
		//새로운 요소 생성
		const jq_img = "<img src='/htmlcssjs/resources/image/photos/photo2.jpg' width='150'/>";
	 //$("#div1").append("<img src='/htmlcssjs/resources/image/photos/photo1.jpg' width='150'/>") ->> 이것도 가능
	 $("#div1").append(jq_img);
	}
	
	const deleteContent = () => {
	  //https://www.w3schools.com/jquery/jquery_traversing.asp
	   //$("#div1").html(""); //전체 삭제
			 $("#div1").find("img:last-child").remove(); //ID: div1의  자식요소인 이미지태그중 마지막 객체를 찾고 삭제
	}

	const changeSize = () => {
	  //https://www.w3schools.com/jquery/jquery_css.asp
	  $("#img1").css("width","50px");
	  $("#img1").css("height","50px");
	  $("#img1").css("border-radius","25px");
	  $("#img1").css("border-width","2px");
	  $("#img1").css("border-color","red");
	  $("#img1").css("border-style","solid");
	  
	}
	const changeAttribute = () => {
	//https://www.w3schools.com/jquery/jquery_dom_set.asp
	
	  $("#img2").attr("src","/htmlcssjs/resources/image/photos/photo6.jpg");
	  //el_img2.setAttribute("src","/htmlcssjs/resources/image/photos/photo6.jpg")
	}
</script>
</head>
<body>
	<div class="card">
		<div class="card-header">index</div>
		<div class="card-body">
			<div class="card">
				<div class="card-header">엘리먼트 변경,추가 및 삭제</div>
				<div class="card-body">
					<button onclick="changeContent()" class="btn btn-warning btn-sm">변경</button>
					<button onclick="appendContent()" class="btn btn-warning btn-sm">추가</button>
					<button onclick="deleteContent()" class="btn btn-warning btn-sm">삭제</button>
					<hr />
					<div id="div1"></div>
				</div>
			</div>

			<div class="card">
				<div class="card-header">엘리먼트 스타일 변경</div>
				<div class="card-body">
					<button onclick="changeSize()" class="btn btn-warning btn-sm">스타일 변경</button>
					<hr />
					<div id="div2">
						<img id="img1" src="/htmlcssjs/resources/image/photos/photo3.jpg" width="150" /> <img class="rounded-circle" src="/htmlcssjs/resources/image/photos/photo4.jpg" width="100" height="100" />
					</div>
				</div>
			</div>


			<div class="card">
				<div class="card-header">속성값 변경</div>
				<div class="card-body">
					<button onclick="changeAttribute()" class="btn btn-warning btn-sm">속성값 변경</button>
					<hr />
					<div id="div3">
						<img id="img2" src="/htmlcssjs/resources/image/photos/photo5.jpg" class="rounded-circle" width="100" height="100" />
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>