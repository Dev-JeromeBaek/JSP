<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
  </head>
  <body>
  	<%-- 
  		1. 미완성된 테이블 그려오기
  		2. 아래 테이블을 div 태그를 이용하여 작성
  			(설날에 놀지말고 화요일까지 해서 제출)
  	--%>
  
    <hr>
	
	<h2>HW_테이블 div 태그를 이용하여 작성</h2>
	<%-- 
		colspan : 셀의 열 병합 / rowspan : 셀의 행 병합
		align : 수평상의 내용물 정렬 / valign : 수직상의 내용물 정렬
	--%>
	<style>
		.f, .f td {
			border: 1px solid red;
		}	
		.f {
			width: 800px; height: 300px;
		}
	</style>
	<div align="center" style="padding: 20px; background-color: lime;">
		<table class="f">
			<tr>
				
				<td colspan="2">
					<div align="left" style="background-color: orange;">
					11
					</div>
				</td>
				<!-- <td>22</td> -->
				<td>
					<div align="right" style="background-color: fuchsia;">
					33
					</div>
				</td>
				<td>
					<div align="justify" style="background-color: aqua;">
					44
					</div>
				</td>
			</tr>
			<tr>
				<td>
				<div align="center" style="background-color: teal;">
				aa
				</div>
				</td>
				<td>bb</td>
				<td>cc</td>
				<td>dd</td>
			</tr>
			<tr>
				<td align="center">하하</td>
				<td valign="top" align="center">가가</td>
				<td>바바</td>
				<td>자자</td>
			</tr>
		</table>
	</div>
  </body>
</html>