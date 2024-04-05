<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<!-- external css -->
		<link rel="stylesheet" href="/htmlcssjs/resources/css/exam01_style.css">
		
		<!-- internal css -->
		<style type="text/css">
			* div{
				text-align:center;
				color: aqua;
			}
			
			#divId1 {
				background-color: orange;
			}
			
			.divClass1 {
				background-color: red;
			}
			.divClass2 {
					background-color: green;
				}			
			
			p,header,article {
				border: 1px solid orange;
				text-align: right;
				color: red;
			}
			p.classA{background-color: maroon;}
			div.classA{background-color: blue;}
			</style>
		</head>
		<body>
			<h4> exam02_where_css</h4>
			<hr/>
	
	
		<div>content1</div>
		<div id="divID">content2</div>
		<div class="divClass1">content3</div>
		<div class="divClass2">content4</div>
		<div class="divClass2">content5</div>

	
	
		<p>content6</p>
		<header>content7</header>
		<article>content8</article>
		
		<p> content 6 </p>
		<header>content7</header>
		<article>content8</article>
		
		<p class="classA"> content9</p>
		<div class="classA">content10</div>
		
		
	<!--  inline css -->
	<div style="background-color:orange;">
		content1
	</div>
	<div>content2</div>
	<div>content3</div>	
</body>
</html>