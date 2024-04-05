<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div {
	border: 1px solid black;
}

#wrapper {
	display: flex;
	flex-direction: column;
	height: 500px;

}

.div1 {
	flex: 1;
}

#div2 {
	flex: 1;
}

#div3 {
	flex: 1;
}
</style>
</head>

<body>
	<h4>exam11_flex</h4>
	<hr />


	<div id="wrapper">
		<div class="div1">div1</div>
		<div id="div2">div2</div>
		<div id="div3">div3</div>
	</div>
</body>
</html>