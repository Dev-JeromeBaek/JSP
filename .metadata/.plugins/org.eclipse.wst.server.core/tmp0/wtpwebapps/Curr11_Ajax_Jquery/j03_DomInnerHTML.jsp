<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	
	<div id="viewFrame1">기본값 text</div>
	<hr>
	<input type="button" value="viewFrame1의 텍스트 노드 정보 읽은 후 변경" 
			onclick="viewCheck()">
	<script type="text/javascript">
		function viewCheck() {
			var target = document.getElementById("viewFrame1");
			alert("읽어오기 : " + target.innerHTML);
			
			target.innerHTML = "<input type='text'>";
			alert("읽어오기 : " + target.innerHTML);
			
// 			스크립트 상에서의 쌍따옴표와 외따옴표는 같은 역할
// 			단, 포함 관계 시 외부, 내부에서 상호적으로 사용해야 함.
// 			"<input type='text'>"와 '<input type="text">'는 같음
		}
	
	</script>
	
	<div id="viewFrame2"></div>
	<hr>
	
	문제 : viewFrame2의 아이디를 가진 div의 텍스트 공간에 테이블을 추가하세요.
	<input type="button" value="div에 테이블 추가하기" onclick="addTable()">
	<script type="text/javascript">
		function addTable() {
			var target = document.getElementById("viewFrame2");
			target.innerHTML += 
				"<table border='1' style='text-align:center;'>"
					+ "<tr>"
					+ "<td>이 름</td>"
					+ "<td><input type='text' name='name'></td>"
					+ "</tr>"
					+ "</table>";
		}
	</script>
	
	<%
		int name = 0;
	%>
	<input type="button" value="div에 테이블+값" onclick="addTable2()">
	<script type="text/javascript">
		function addTable2() {
			var target = document.getElementById("viewFrame2");
			target.innerHTML = 
				"<table border='1' style='text-align:center;'>"
					+ "<tr>"
					+ "<td>이 름</td>"
					+ "<td><input type='text' name='name'></td>"
					+ "</tr>"
					+ "<tr>"
					+ "<td colspan ='2'"
					+ "<input type='button' value='aa'>"
					+ "</td>"
					+ "</tr>"
					+ "</table>";
		}
	</script>
	<input type="submit" value="aa">

</body>
</html>