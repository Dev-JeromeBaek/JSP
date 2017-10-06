<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<form name="searchFrm" action="./con" method="post">
		<table>
			<tr>
				<td>검색하실 이름을 입력해주세요.</td>
			</tr>
			<tr>
				<td><input type="text" name="name" placeholder="이름을 입력하세요."></td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="works" value="searchName">
					<input type="hidden" name="view" value="showOne">
					<input type="submit" value="검색">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>