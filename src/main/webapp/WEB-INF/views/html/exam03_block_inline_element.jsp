<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h4>exam03_block_inline_element</h4>
   <hr />

   <h4 style="border: 1px solid orange">[block element]</h4>
   <p style="border: 1px solid black">p tag</p> <!-- p는 가로로 쭉 채움 -->
   
   
   <hr/>
   
   <h4 style="border: 1px solid orange">[inline element]</h4>
   <div>
      <span>aaa</span> <span>bbb</span> <span>ccc</span> 
   </div>
   
   	<div>
   	<p>여기는 위쪽입니다.</p>
   		<img src = "../resources/image/photos/photo5.jpg" height = "100px"/>
   		<img src = "../resources/image/photos/photo6.jpg" height = "100px"/>
		<img src = "../resources/image/photos/photo7.jpg" height = "100px"/>
	<p>여기는 밑쪽입니다.</p>
	</div>
</body>
</html>