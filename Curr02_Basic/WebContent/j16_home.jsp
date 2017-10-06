<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    
    <script type="text/javascript">
    
    	function insertInfo() {
    		var frm = document.homeFrm;
    		frm.works.value = "moveWork";
    		frm.view.value = "insertOne";
    		frm.action = "/Curr02_Basic/cont";
    		frm.method = "post";
    		frm.submit();
    	}
    	
    	function showInfo() {
    		var frm = document.homeFrm;
    		frm.works.value = "goListWork";
    		frm.view.value = "showAll";
    		frm.action = "/Curr02_Basic/cont";
    		frm.method = "post";
    		frm.submit();
    	}
    	
    	function searchInfo() {
    		var frm = document.homeFrm;
    		frm.works.value = "goSearchWork";
    		frm.view.value = "searchName";
    		frm.action = "/Curr02_Basic/cont";
    		frm.method = "post";
    		frm.submit();
    	}
    </script>
  </head>
  <body>
	<form name="homeFrm" style="width: 500px;">
		<table border="1" style="text-align: center; width: 400px;" >
			<tr>
				<td>
					<input type="hidden" name="works">
					<input type="hidden" name="view">
					<input type="button" value="입력할거야" onclick="insertInfo()">
					<input type="button" value="목록볼거야" onclick="showInfo()">
					<input type="button" value="검색할거야" onclick="searchInfo()">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>