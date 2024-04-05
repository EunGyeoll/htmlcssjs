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
<script type="text/javascript">
const findElementById=()=> {
  //방법 1 window.document.getElementById();
  const el_p1 = document.getElementById("p1");
  console.log(el_p1);
  //방법 2 querySelector는 css 선택자 문법을 사용하기 때문에 그에 맞는 문법을 사용해야함
  el_pl  = document.querySelector("#p1");
  console.log(el_pl);
}
const findElementByClass=()=> {
  // 1
  const el_class1=document.getElementsByClassName("class1"); // 배열은 아님 하지만 배열처럼 사용가능함 (HTMLCollection)
  console.log(el_class1);
     for(let el of el_class1) {
       console.log(el);
     }
     
  // 2
  const el_c1 = document.querySelector(".class1"); // 하나만 리턴
  console.log(el_c1);
  const el_cl = document.querySelectorAll(".class1"); // 전체 리턴 (NodeList)
  console.log(el_cl);
   for(let el of el_class1) {
     console.log(el);
   }
}
const findElementByTag=()=> { //별로안씀
  //1
  const el_p=document.getElementsByTagName("p");
  console.log(el_p);
  //2
  el_p1 = document.querySelectorAll("p");
  console.log(el_p1);
}
const findElementByChecked=()=> {
  let el_checked = document.querySelectorAll("[name=skill]:checked");
  console.log(el_checked);
} //별로안씀

</script>
</head>
<body>
   <div class="card">
      <div class="card-header">index</div>
      <div class="card-body">
         <button onclick="findElementById()" class="btn btn-info btn-sm">ID로 찾기</button>
         <button onclick="findElementByClass()" class="btn btn-info btn-sm">Class로 찾기</button>
         <button onclick="findElementByTag()" class="btn btn-info btn-sm">Tag로 찾기</button>
         <button onclick="findElementByChecked()" class="btn btn-info btn-sm">체크된 것만 찾기</button>
         <hr />
         <div class="d-flex">
            <p id="p1" class="border bg-success" style="width: 100px; height: 100px;"></p>
            <p class="class1 border bg-danger" style="width: 100px; height: 100px;"></p>
            <p class="class1 border bg-info" style="width: 100px; height: 100px;"></p>
         </div>
         <hr />
         <div class="d-flex">
            <div class="me-3">
               <input type="checkbox" name="skill" value="java" />java
            </div>
            <div class="me-3">
               <input type="checkbox" name="skill" value="javascript" />javascript
            </div>
            <div class="me-3">
               <input type="checkbox" name="skill" value="vue" />vue
            </div>
         </div>
      </div>
   </div>
</body>
</html>