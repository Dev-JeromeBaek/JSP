<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <script type="text/javascript">
    	function goPage(viewName, works) {
    		var frm = document.homeForm;
    		frm.works.value = works;
    		frm.viewName.value = viewName;
    		
    		frm.action = "/HW03/mem/" + works;
    		frm.method = "post";
    		frm.submit();
    	}
    </script>
  </head>
  <body>
	
	<h2>Home</h2>
	
	<form name="homeForm">
		<table style="text-align: center;">
			<tr>
				<td>
					<input type="hidden" name="works">
					<input type="button" value="회원정보입력"
							onclick="goPage('insertOne', 'move')">
					<input type="button" value="회원목록보기"
							onclick="goPage('showList', 'move')">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>