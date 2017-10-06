<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <style type="text/css">
    body {
		margin-top: 100px;
		margin-left: 100px;
		width: 70%;
	}
    </style>
    <script type="text/javascript">
    	function goPage(pageName) {
    		var frm = document.homeForm;
    		frm.action = "/HW02/" + pageName + ".jsp";
    		frm.method = "post";
    		frm.submit();
    	}
    </script>
  </head>
  <body>
  
  	<h2>햄버거 정보 관리 프로그램</h2>
  	
	<form name="homeForm">
		<table>
			<tr>
				<td>
					<input type="text" name="searchHam"
							placeholder=" 햄버거이름 / 브랜드 검색">
					<input type="image" src="/HW02/imges/ss1.png"
							onclick="goPage('searchHamList')">
				</td>
			</tr>
			<tr>
				<td>
					<input type="button" value="입력하기"
							onclick="goPage('insertHamOne')">
					<input type="button" value="목록보기"
							onclick="goPage('selectHamList')">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>