<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	            <button onclick="findElementById()" class="btn btn-info btn-sm">ID로 찾기</button>
            <button onclick="findElementByClass()" class="btn btn-info btn-sm">Class로 찾기</button>
            <button onclick="findElementByTag()" class="btn btn-info btn-sm">Tag로 찾기</button>
            <button onclick="findElementByChecked()" class="btn btn-info btn-sm">체크된 것만 찾기</button>
            <hr/>
            <div class="d-flex">
                <p id="p1" class="border bg-success" style="width: 100px; height: 100px;"></p>
                <p class="class1 border bg-danger" style="width: 100px; height: 100px;"></p>
                <p class="class1 border bg-info" style="width: 100px; height: 100px;"></p>
            </div>
            <hr/>
            <div class="d-flex align-items-center">
                <div class="mr-3"><input type="checkbox" name="skill" value="java"/>java</div>
                <div class="mr-3"><input type="checkbox" name="skill" value="javascript"/>javascript</div> 
                <div class="mr-3"><input type="checkbox" name="skill" value="vue"/>vue</div> 
            </div>


	<h4>exam02_element_attribute</h4>
	<hr/>
	
	<p>
		<!-- 절대경로 사용-->
		<img src = "http://localhost:8080/htmlcssjs/resources/image/photos/photo1.jpg"
		width = "150"/>
		<!-- 절대경로 사용-->
		<img src = "/htmlcssjs/resources/image/photos/photo2.jpg"
		width = "100"/>
		<!-- 상대경로 사용-->
		
		<img src = "../resources/image/photos/photo3.jpg"
		width = "150"/>
	</p>
	
	<p>
		<form>
			<p>
				<label for="userId">아이디</label> <!-- 작은따옴표도 ㄱㅊ . 따옴표 안 쓰면 안 됨-->
				<input type="text" id = "userId"/>
			</p>
			<p>
			<label for="userPassword">비밀번호</label>
			<input type="password" id="userPassword"/>
			</p>
			<input type="submit" value="로그인"/>
			<input type="reset" value="다시 작성"/>
			
			
		</form>
	</p>
		<p>
	</p>
</body>
</html>