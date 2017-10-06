<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Yeob's Program</title>
    <%
    	String out_Msg = (String)request.getAttribute("out_Msg");
    	if(out_Msg != null)
    	{
    %>
    <script type="text/javascript">
    	alert("<%= out_Msg %>");
    </script>
    <%
    	}
    %>
    <script type="text/javascript">
    
    	function insertInfo() {
    		var frm = document.homeFrm;
    		frm.works.value = "move";
    		frm.view.value = "insertInfo";
    		frm.action = "/Curr02_Basic/con";
    		frm.method = "post";
    		frm.submit();
    	}
    	
    	
    	function showAllInfo() {
    		var frm = document.homeFrm;
    		frm.works.value = "selectList";
    		frm.view.value = "showAll";
    		frm.action = "/Curr02_Basic/con";
    		frm.method = "post";
    		frm.submit();
    	}
    	
    	
    	function searchInfo() {
    		var frm = document.homeFrm;
    		frm.works.value = "move";
    		frm.view.value = "searchName";
    		frm.action = "/Curr02_Basic/con";
    		frm.method = "post";
    		frm.submit();
    	}
    	
    </script>
    
  </head>
  <body>
  	<form name="homeFrm">
  		<table style="width: 80%;">
  			<tr>
  				<td>
  					<input type="hidden" name="works">
  					<input type="hidden" name="view">
  					<input type="button" value="학생 성적 입력"
  							onclick="insertInfo()">
  					<input type="button" value="전체 학생 목록 보기"
  							onclick="showAllInfo()">
  					<input type="button" value="학생 정보 검색"
  							onclick="searchInfo()">
  				</td>
  			</tr>
  		</table>
  	</form>
  </body>
</html>