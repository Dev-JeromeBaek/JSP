<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Yeob's Home</title>
    
    <style type="text/css">
    body {
		margin-top: 100px;
		margin-left: 100px;
		width: 70%;
	}
    </style>
    
    <script type="text/javascript">
    
    	function searchCar() {
    		var frm = document.homeForm;
    		frm.action = "/Curr03_OracleDB/j09_selectCarOne.jsp";
    		frm.method = "get";
    		frm.submit();
    	}
    
	    function goPage(pageName) {
	    	var frm = document.homeForm;
	    	frm.action = "/Curr03_OracleDB/j09_" + pageName + ".jsp";
			frm.method = "post";
			frm.submit();
		}
	    
    </script>
  </head>
  <body>

	<h1>자동차 정보 관리 프로그램</h1><br><br>
  
	<form name="homeForm">
		<table style="width: 600px;">
			<tr style="text-align: center;">
				<td>
					<input type="text" name="carName" 
							placeholder="자동차 이름 검색">
					<input type="image" src="/Curr03_OracleDB/imges/ss1.png"
							onclick="searchCar()">
				</td>
			</tr>
			<tr style="text-align: center;">
				<td>
					<input style="font-size: 20px; font-family: '210 다락방'; 
							border-color: red;" 
							type="button" value="입력하기" 
							onclick="goPage('insertCar')">
							
					<input style="font-size: 20px; font-family: '210 다락방';
							border-color: blue;" 
							type="button" value="목록보기"
							onclick="goPage('selectCarListSelect')">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>