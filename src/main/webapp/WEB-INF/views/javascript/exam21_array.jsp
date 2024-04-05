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
	
	<script>
	    const basic = () => {
        console.log("basic()");
        const arr = ["Java","JavaScript","Vue.js"];
        console.log(arr[1]);   // 1번쨰 인덱스 값 출력
        console.log(arr[2]); // 배열 2번째 인덱스 값 출력
        console.log(arr.length); // 배열 길이
        
        arr[2] = "Spring";   // 배열 2번째 인덱스 Spring 값으로 변경
        //반복 1번째 방법
        for (let i = 0; i < arr.length; i++) {
             console.log(arr[i]);
            }
        //반복 2번째 방법
        //of는 데이터를 반복 -> (let item of arr)
        //in은 인덱스 반복 -> (let item in arr)
        for (let item of arr) {
          console.log("item: " +item);
        }
      };
      const appendItem = () => {
        console.log("appendItem()");
        const arr=[];    // 배열 생성
        arr.push("html"); // 맨뒤에 새 데이터 추가
        arr.push("css");    
         // 항목 반복 읽기
        for (let item of arr) {
          console.log("item: " +item);
        }
      };
      const removeAndInsertItem = () => {
        console.log("removeAndInsertItem()");
        let arr = ["Banana","Orange","Apple","Mango"];        //배열 생성
        //항목 삭제(자바스크립트 배열은 자바의 리스트와 비슷)
        //항목을 삭제할 경우 뒤에 인덱스의 값이 앞으로 당겨옴
        arr.splice(2,1); //인덱스 2에서부터 1개를 삭제
         console.log(arr);
          arr = ["Banana","Orange","Apple","Mango"];
         arr.splice(2,0,"Lemon","Kiwi"); // 인덱스2부터 0개를 삭제하고, 세번째값 이후를 삽입
         console.log(arr);
         arr = ["Banana","Orange","Apple","Mango"];
          arr.splice(2,2,"Lemon","Kiwi");
          console.log(arr);
      };
      const concatArray=() => {
        const arr1 = ["Banana","Orange"];
        const arr2 = ["Apple","Mango"];
        const arr3= arr1.concat(arr2);
        console.log(arr3);
      };
      const filterItem=()=>{
        const arr4 = [
           { bno: 1, title: "제목1", writer: "홍길동" },
           { bno: 2, title: "제목2", writer: "홍길서" },
           { bno: 3, title: "제목3", writer: "홍길남" },
           { bno: 4, title: "제목4", writer: "홍길서" },
           { bno: 5, title: "제목5", writer: "홍길북" },
            ];
        const newArr = arr4.filter((item)=> 
          (item.writer === "홍길서")
        );
        console.log(newArr);
        const newArr2=arr4.filter((item)=> (item.bno%2===1));
        console.log(newArr2);
        
      }
      const findItem = () => {
        const arr4 = [
	         { bno: 1, title: "제목1", writer: "홍길동" },
	         { bno: 2, title: "제목2", writer: "홍길서" },
	         { bno: 3, title: "제목3", writer: "홍길남" },
	         { bno: 4, title: "제목4", writer: "홍길서" },
	         { bno: 5, title: "제목5", writer: "홍길북" },
	        ];
	       
	        //bno가 3인 게시물 찾기
	        const board = arr4.find((item)=> item.bno===3);
	        console.log(board);
	        //writer가 홍길남인 게시물 찾기
	        const board2 = arr4.find(item=> item.writer==="홍길남");
	        console.log(board2);
      }
      
		function handleEachItem() {
			const arr =[
	         { bno: 1, title: "제목1", writer: "홍길동" },
	         { bno: 2, title: "제목2", writer: "홍길서" },
	         { bno: 3, title: "제목3", writer: "홍길남" },
	         { bno: 4, title: "제목4", writer: "홍길서" },
	         { bno: 5, title: "제목5", writer: "홍길북" },
	        ];		
	        
	        //for: 인덱스 이용
	        for(var i=0; i<arr.length; i++) {
	        	console.log(arr[i]);
	        }
	        
	        //for: of 이용
	        for(var item of arr) {
	        	console.log(item);
	        	
	        }
	        
	        //배열의 forEach() 메소드 이용
	        arr.forEach(item => {
	        	console.log(item.bno, item.title, item.writer);
	        });
		}
 
      function mapItem() {
  		const arr =[
	         { bno: 1, title: "제목1", writer: "홍길동", date: "2024.04.02" }, //홍길동 객체는 "제목1"으로바뀜
	         { bno: 2, title: "제목2", writer: "홍길서" },
	         { bno: 3, title: "제목3", writer: "홍길남" },
	         { bno: 4, title: "제목4", writer: "홍길서" },
	         { bno: 5, title: "제목5", writer: "홍길북" },
	        ];		
	        
  		//제목으로 구성된 새로운 배열 얻기
  		const titles = arr.map(item => item.title)	; //filter나 find의 리턴값은 t/f였지만 map은 item을 item.title으로 바꾼다는 뜻. 여기는 새로운 배열에 들어가는 값으로 리턴됨. 타이틀만 뽑아서 배열로 만들겠다.
/*   		const titles = arr.map(item => {
  			return item.title;
  		})	;  */    /*  원랜 이렇게 씀   */	
  		console.log(titles);
  		
  		//게시물번호로 구성된 새로운 배열 얻기
  		const bnoArr = arr.map(item => item.bno);
  		console.log(bnoArr);
      
  		//항목에 오늘의 날짜를 'date: 2024.04.02'을 추가한 새로운 항목 배열을 얻기:
		const newArr = arr.map(item => {
			var now = new Date();
			var strDate = now.getFullYear() + "." + (now.getMonth()+1) + "." + (now.getMonth()+1) + ".";
			return {...item, date: strDate}; //item을 이 리턴값으로 변환시킨다. ...은 구조분해. date를 추가로 넣겠다
		}); //중괄호 필수
		console.log(newArr);
      }
      
              
      
      
      function sortItem() {
    	  const fruits = ["Banana", "orange", "Apple", "mango"];
	    	  //올림차순으로
	    	  fruits.sort();
	    	  console.log(fruits);
	    	  //내림차순으로 정렬(sorts()한 뒤에 실행)	
	    	  fruits.reverse();
	    	  console.log(fruits);
    	  
    	  
    		const arr =[
   	         { bno: 2, title: "제목1", writer: "홍길동" }, //홍길동 객체는 "제목1"으로바뀜
   	         { bno: 4, title: "제목2", writer: "홍길서" },
   	         { bno: 3, title: "제목3", writer: "홍길남" },
   	         { bno: 5, title: "제목4", writer: "홍길서" },
   	         { bno: 1, title: "제목5", writer: "홍길북" },
   	        ];		 
    		
    		//bno 기준으로 올림차순 하기
    		arr.sort((item1, item2) => { // -1 or 0 or 1  arr안에서 서로 비교해서 (item1, item2) 씀
    			return item1.bno- item2.bno;
    		});
    		console.log(arr);
    		
    		//bno 기준으로 내림차순하기
    		arr.sort((item1,item2) => {
    			return - (item1.bno-item2.bno);
    		});
    		console.log(arr);
    		
    		//title 기준으로 내림차순 정렬
    		arr.sort((item1,item2) => {
    				if(item1 < item2) {
    					return 1;
    				} else if(item1==item2) {
    					return 0 ;
    				} else {
    					return -1;
    				}
      		});
    		
    		console.log(arr);
    		
    		
      }
	</script>
	</head>
	
	<body>
			<div class="card">
	  			<div class="card-header">exam21_array</div>
	  			<div class="card-body">
				
				 <p><button onclick="basic()" class = "btn btn-info btn-sm">기본</button></p>
				 <p><button onclick="appendItem()" class = "btn btn-info btn-sm">새 항목 추가</button></p>
				 <p><button onclick="removeAndInsertItem()" class = "btn btn-info btn-sm">항목 제거 및 삽입</button></p>
				<p><button onclick=concatArray()" class = "btn btn-info btn-sm">배열 합쳐서 새로운 배열 생성</button></p>
				 <p><button onclick="filterItem()" class = "btn btn-info btn-sm">필터링 후 새로운 배열 생성</button></p>
				 <p><button onclick="findItem()" class = "btn btn-info btn-sm">항목 찾기</button></p>
				 <p><button onclick="handleEachItem()" class = "btn btn-info btn-sm">항목 일괄 처리(반복처리)</button></p>
				 <p><button onclick="mapItem()" class = "btn btn-info btn-sm">항목을 변환하고 새로운 배열 생성</button></p>
				 <p><button onclick="sortItem()" class = "btn btn-info btn-sm">항목 정렬</button></p>
			 
 	 		</div>
		</div>
	</body>
</html>