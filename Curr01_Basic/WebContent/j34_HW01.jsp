<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <script type="text/javascript">
    
    	function score() {
    		var frm = document.frm;
    		frm.action = "/Curr01_Basic/j34_HW02.jsp"
    		frm.method = "post";
    		frm.submit();
    	}
    	
    	function result() {
			var frm = document.frm;
    		frm.action = "/Curr01_Basic/j34_HW03.jsp"
    		frm.method = "post";
    		frm.submit();
    	}
    	
    </script>
  </head>
  <body>
	<%--
		학생 정보 관리 프로그램
		1. 상세 항목 :
			(5명)
			이름, 국어, 영어, 수학, 총점, 평균
		2. 페이지 구성
			1. 입력 페이지 : 이름 및 3과목 입력.
				- 성적 산출 페이지 이동 기능이 존재함.
				- 합격 결과 페이지 이동 기능이 존재함.
			2. 성적 산출 페이지
				- 입력된 학생의 전체 정보 출력.
				- 입력 화면 페이지 이동 기능이 존재.
				- 합격 결과 페이지 이동 기능이 존재.
			3. 합격 결과 페이지
				- 평균 85.5이상 합격 / 불합격.
				- 입력 화면 페이지 이동 기능 존재.
				- 성적 산출 페이지 이동 기능 존재.
	--%>
	<%
  		int many = 1;
  		
  		if(request.getParameter("change") != null) {
	  		String change = request.getParameter("change");
	  		many = Integer.parseInt(change);
  		}
  		
  		if(many <= 1) {
  			many = 1;
  		}
  		
  	%>
	<form name="frm" style="margin-left: 100px; margin-top: 100px;">
		<table border="1" style="text-align: center;">
			<tr>
				<td colspan="4">
					<a href="?change=<%= many+1 %>">인원 추가하기</a>&nbsp;&nbsp;
					<a href="?change=<%= many-1 %>" style="text-align: right;">인원 삭제하기</a>
			</tr>
			<tr>
				<td>이 름</td>
				<td>국어 점수</td>
				<td>영어 점수</td>
				<td>수학 점수</td>
			</tr>
			<%
				for(int i=1; i<=many; i++)
				{
			%>
				<tr>
					<td><input type="text" name="name"></td>
					<td><input type="text" name="kor"></td>
					<td><input type="text" name="eng"></td>
					<td>
						<input type="text" name="math">
						<input type="hidden" name="total">
						<input type="hidden" name="avg">
						<input type="hidden" name="result">
					</td>
				</tr>
			<%
				}
			%>
				<tr>
					<td colspan="4">
						<input type="button" value="성적 산출"
								onclick="javascript:score()">
						<input type="button" value="합격 결과"
								onclick="javascript:result()">
					</td>
				</tr>
		</table>
	</form>
  </body>
</html>