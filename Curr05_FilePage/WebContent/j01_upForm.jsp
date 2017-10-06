<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%--
		파일 업로드 시 필요 조건
		1. form-post (반드시 post방식!)
		2. form의 enctype="multipart/form-data"
			[enctype="multipart/form-data"] : 정해져있는 값
			파일전송시 무조건 필요한 태그방식!!!!
	--%>
	<h2>파일 업로드</h2>
	
	<form action="/Curr05_FilePage/j02_upConn.jsp" 
			method="post" enctype="multipart/form-data">
<%-- 
	enctype="multipart/form-data"을 사용할 떄에는 
	request.getparameter()로 값을 받을 수 없다.
	Multipartrequest로 사용해야함
--%>
		<table border="1" style="text-align: center;">
			<tr>
				<td>작 성 자</td>
				<td><input type="text" name="writer"></td>
			</tr>
			<tr>
				<td>제 목</td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td>파일 선택</td>
				<td><input type="file" name="upfile"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="업로드하기">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>