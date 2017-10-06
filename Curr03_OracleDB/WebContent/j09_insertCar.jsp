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
	.YY {
    		background-color: #D9D9D9;
    		font-family: "배달의민족 주아";
    		font-style: : bold;
    		font-size: 20px;
    		width: 155px;
    		height: 28px;
    		text-align: center; 
    	}
    	
    	.ZZ {
    		width: 460px;
    		height: 28px;
    	}
    </style>
  </head>
  <body>
	
	<h1>입력하기 Page</h1><br><br>
  	
  	<form action="/Curr03_OracleDB/j09_insertCarConn.jsp" method="post">
  		<table style="width: 600px;">
  			<tr>
  				<td class="YY">자동차 이름</td>
  				<td class="ZZ"><input type="text" name="carName" 
  						placeholder="자동차 이름 입력">
  			</tr>
  			<tr>
  				<td class="YY">엔진 가격</td>
  				<td class="ZZ"><input type="text" name="enginPrice" 
  						placeholder="엔진 가격 입력(원)"></td>
  			</tr>
  			<tr>
  				<td class="YY">타이어 가격</td>
  				<td class="ZZ"><input type="text" name="tirePrice" 
  						placeholder="타이어 가격 입력(원)"></td>
  			</tr>
	  		<tr>
  				<td class="YY">옵션 이름</td>
  				<td class="ZZ"><input type="text" name="optName" 
  						placeholder="옵션 이름(있을 경우만 입력)"></td>
  			</tr>
  			<tr>
  				<td class="YY">옵션 가격</td>
  				<td class="ZZ"><input type="text" name="optPrice" 
  						placeholder="옵션 가격(있을 경우만 입력)"></td>
  			</tr>
  			<tr>
  			</tr>
  			<tr>
  			</tr>
  			<tr>
  				<td colspan="2">
  					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  					<input style="font-size: 20px; font-family: '210 다락방'; 
							border-color: red;"
  							type="reset" value="다시쓰기">
  					<input style="font-size: 20px; font-family: '210 다락방'; 
							border-color: blue;"
							type="submit" value="저장하기">
  				</td>
  			</tr>
  		</table>
  	</form>
  </body>
</html>