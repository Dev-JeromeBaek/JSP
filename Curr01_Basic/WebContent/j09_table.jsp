<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>테이블 이용하기</title>
    
    <%-- 보통 style 설정 태그는 head 끝나기 전 위치에서 표현 
	<style type="text/css">
	
	</style>
	--%>
    
  </head>
  <body>
	<%--
		Table : 행과 열의 구조를 제공하는 Element
		- 행 <tr> : 
		- 열 <td> : 데이터 정보값 표현 / <th> : 머릿글 표현 
		
		속성값
		- border : 테이블의 테두리 두께(px) 선종류 선색
		- border-spacing : 테이블 테두리와 셀 테두리 간격 (기본값 : 2)
		- padding : 테이블 셀 테두리와 셀 안의 내용물 간격 (기본값 : 1)
		- colspan : 수평 결합 (열의 갯수 지정)
		- rowspan : 수직 결합 (행의 갯수 지정)
		- height : 높이 (단위 : px)
		- width : 너비 (단위 : px)
	--%>
	<h2>테이블 기본 생성</h2>
	<table border="1">
		<tr>
			<th>제 목 11</th>
			<td>AAAAAAAA</td>
			<td>22222222</td>
		</tr>
		<tr>
			<th>제 목 22</th>
			<td>BBBBBBBB</td>
		</tr>
	</table>
	<hr><br><hr>
	
	<%-- 
		엘리먼트 지정자 : id && class
		- id : 엘리먼트에 부여하는 유일한 이름 (중복 불가)
		- class : 엘리먼트에 부여하는 이름
	
	
	--%>
	<h2> A. class(.)를 이용하여 테이블 꾸미기 </h2>
	
	<style>
		.tableA, .tableA th, .tableA tr, .tableA td {
			border: 1px solid red;
		}
	
	</style>
	<%-- class= : 테이블에 이름을 지정한다 (여러테이블에 같은 이름 가능하다)--%>
	<%-- id : 테이블에 이름을 지정한다 (테이블 한개만 이름 적용할 경우) --%>
	
	<table class="tableA">
		<tr>
			<th>제 목 1</th>
			<td>AAAAAA</td>
		</tr>
		<tr>
			<th>제 목 2</th>
			<td>BBBBBB</td>
		</tr>
	</table>
	
	<hr>
	
	<h2>B. id(#)를 이용하여 테이블 꾸미기</h2>
	<style>
		#tableB, #tableB th, #tableB td 
		{
			border : 1px solid blue;
		}
	</style>
	
	
	<table id="tableB">
		<tr>
			<th>제 목 1</th>
			<td>AAAAAA</td>
		</tr>
		<tr>
			<th>제 목 2</th>
			<td>BBBBBB</td>
		</tr>
	</table>
	
	<hr>
	
	<h2>C. 테이블 크기 설정 : px 이용</h2>
	<style>
		.tableC, .tableC th, .tableC td	{
			border : 1px solid #999999;
		}
		.tableC {
			width : 500px;
			height: 300px;
		}
		.tableC1 {
			height: 450px;
		}
		.tableC4 {
			width: 150px;
		}
	</style>
	<table class="tableC">
		<tr class="tableC1">
			<th class="tableC3">제 목 1</th>
			<td class="tableC4">AAAAAA</td>
		</tr>
		<tr class="tableC2">
			<th class="tableC3"> 
				<font size="5" face="배달의민족 주아" color="red">제 목 2</font>
			</th>
			<td class="tableC4">BBBBBB</td>
		</tr>
	</table>
	
	<hr>
	
	<style>
	<%--
		설정 대상을 둘러쌰ㅏ고 있는 사각형을 기준으로 % 크기 설정
		브라우저를 기준으로 적용하려는 경우, html과 body설정 필요
		
	--%>
	.테이블, .테이블 th, .테이블 td {
		border: 1px solid red;
	}
	html {
 		border : 1px solid red; 
		width : 90%;
		height : 90%;
	}
	body {
		border : 1px solid blue;
		width : 40%;
		height : 50%;
	}
	.테이블 {
		width : 100%;
		height : 100%;
	}
	.1행 {
		width : 30%;
	}
	</style>
	<h2>D. 테이블 크기 설정 : % 이용</h2>
	
	<table class="테이블">
		<tr class="1행">
			<th class="1행제목">제 목 1</th>
			<td class="1행2열">AAAAAA</td>
		</tr>
		<tr class="도2">
			<th class="도3"> 
				<font size="5" face="배달의민족 주아" color="red">제 목 2</font>
			</th>
			<td class="도4">BBBBBB</td>
		</tr>
	</table>
	
	<hr>
	
	<style>
		.e, .e th, .e td {
			border: 1px solid blue;
			border-spacing: 50px;
			padding: 70px;
		}
	</style>
	<h2>E. 테이블의 테두리, 셀, 내용물 간격</h2>
	
	<table class="e">
		<tr>
			<th>제 목 1</th>
			<td>AAAAAA</td>
		</tr>
		<tr>
			<th>제 목 2</th>
			<td>BBBBBB</td>
		</tr>
	</table>
	
	<hr>
	
	<h2>F. 테이블 병합과 정렬</h2>
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
	<table class="f">
		<tr>
			<td colspan="2">11</td>
			<!-- <td>22</td> -->
			<td>33</td>
			<td>44</td>
		</tr>
		<tr>
			<td>aa</td>
			<td>bb</td>
			<td>cc</td>
			<td>dd</td>
		</tr>
		<tr>
			<td align="center">하하</td>
			<td valign="top">가가</td>
			<td>바바</td>
			<td>자자</td>
		</tr>
	</table>
	
	<hr> 
	<h2>G. 테이블 배경 이미지</h2>
	<style>
		.g, .g td {
			border: 1px sloid green;
		}
		
		.g {
			width: 444px;
			height: 222px;
			color: red;
			background-image: url('/Curr01_Basic/files/tomcat.png');
/* 			background-image: url('/Curr01_Basic/(WebContent)/files/tomcat.png'); */
/* 									사이에 WebContent가 숨어있어!! */
		}
	</style>
	
	<table class="g">
		<tr>
			<td>1111</td>
		</tr>
		
		<tr>
			<td>2222</td>
		</tr>
	</table>
  </body>
</html>


