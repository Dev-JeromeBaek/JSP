<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%--
		1. JSON : JavaScript Object Notation
			- 서로 다른 프로그래밍 언어 간 데이터를 교환하기 위한 표현법
		2. 표기법 및 이용방법 2가지
			1. 이름/값 => {이름1:값1, 이름2:값2, ...}
				- 이용 시 (객체.이름1) 또는 (객체["이름1"]) 을  ()는 그냥 쓴거야!
					명령하면 해당 값이 제공됨.
			2. 배열 => [값0, 값1, 값2, ...]
				- 이용 시 객체[인덱스]를 명령하면 해당 값이 제공됨.
	--%>
	
	1. Json의 이름/값 형식 확인하는 방법 2가지<br>
	<a onclick="useName1()">인사정보보기1</a> <br>
	<a onclick="useName2()">인사정보보기2</a>
	<script type="text/javascript">
		var peo = {name:"둘리", age:10};
		
		function useName1() {
			alert("이름 : " + peo.name + ", 나이 : " + peo.age);
		}
		
		function useName2() {
			alert("이름 : " + peo["name"] + ", 나이 : " + peo["age"]);
			
		}
	</script>
	<hr>
		
	2. Json의 배열 확인 방법 <br>
	<a onclick="useArray()">이름보기</a>
	<script type="text/javascript">
		var jsonArray = ["둘리", 100, "마이콜"];
		
		function useArray() {
			for(var i=0; i<jsonArray.length; i++) {
				alert(jsonArray[i]);
			}
		}
		
	</script>
	<hr>
	
	3. 객체 리스트 형 데이터 <br>
	<a onclick="useList()">인사정보 전체보기</a>
	<script type="text/javascript">
		var peoList = [{name:"둘리", age:10}, 
						{name:"도우너", age:20}];
		
		function useList() {
			for(var i=0; i<peoList.length; i++) {
				alert(peoList[i].name + ", " 
						+ peoList[i].age);
			}
		}
	</script>
	
	
	
	
	
  </body>
</html>