<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	
	제목 : <input id="title" type="text"> &nbsp;
	파라미터 이름 : <input id="nameAttr" type="text"> &nbsp;
	<input type="button" value="추가하기" onclick="addForm()">
	<hr>
	<form action="/Curr11_Ajax_Jquery/j04_DomCreate02.jsp">
		<table border="1" style="text-align: center;">
			<tr id="trTitle">
				<td>이 름</td>
			</tr>
			<tr id="trValue">
				<td>
					<input type="text" name="name">
				</td>
			</tr>
			<tr>
				<td id="colNum" colspan="1">
					<input type="submit" value="전송하기">
				</td>
			</tr>
		</table>
	</form>
	<script type="text/javascript">
		var colNum = 1;
		
		function addForm() {
			var titleNode = document.getElementById("title");
			var titleValue = titleNode.value;	// 입력된 제목 값
			
			var newTitleNode = document.createElement("td");
										// td만들기
				newTitleNode.innerHTML = titleValue;						
			
			var trTarget = document.getElementById("trTitle");
				trTarget.appendChild(newTitleNode);
						// appendChild : 갖고있는테이블 마지막에 붙여라	
			var newTdNode = document.createElement("td");
			var nameAttrNode = document.getElementById("nameAttr");
										
			newTdNode.innerHTML =
				"<input type='text' name='"
				+ nameAttrNode.value + "'>";
				
			var trTarget2 = document.getElementById("trValue");
				trTarget2.appendChild(newTdNode);
				titleNode.value = "";
				nameAttrNode.value = "";
				titleNode.focus();
				
				colNum++;
				var colNumTarget = document.getElementById("colNum");
					colNumTarget.setAttribute("colspan", colNum);
		}		
 	</script>
  </body>
</html>