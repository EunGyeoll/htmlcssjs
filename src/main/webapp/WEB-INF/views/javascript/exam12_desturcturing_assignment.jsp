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
			const board = {
				bno: 1,
				btitle: "오늘은 월요일",
				content: "날씨가 좋네요. 자바스크립트 공부해야겠다",
				writer: "홍길동",
				};
			
			/* var title = board.title; */
			var {bno} = board; //대입연산자 우측에는 객체가 오는데 구조분해해서 title만 취하겠다
			console.log("bno:",bno);
			
/* 			var bno = board.bno;
			var content= board.content; */
			var { title, content } = board; //title과 content에 할당하겠다	
			console.log("title: ", title);
			console.log("content: ", content);
			//-------------------------------------
			function fun1({title}) {
				console.log(title);
			}
			fun1(board);
			console.log("");
			
			//-------------------------------------
			// ...rest : 나머지는 객체로 만듬
			var{writer, ...rest} = board;
			console.log(writer);
			console.log(rest);
			console.log("");
			
			//-------------------------------------
			// ...은 나머지는 구조분해해서 그대로 넣어라
			var newBoard1 = {...board, bno:2, title:"벚꽃이 좋아요", hitcount:1};  //bno랑 title은 바꾸되 나머지는 구조분해해서 그대로
			console.log(newBoard1);

			//리턴값이 객체일 경우에는 ()로 감싸야 한다
/* 			var newBoard2 = (obj) => {
				return ({...obj, hitcount:1});
			}; */
			
			var newBoard2= obj => ({...obj, hitcount:1});
			console.log(newBoard2(board));
			
			
	</script>
	</head>
	

	<body>
			<div class="card">
	  			<div class="card-header">exam12_desturcturing_assignment</div>
	  			<div class="card-body">
				content
 	 		</div>
		</div>
	</body>
</html>