<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <script type="text/javascript">
    	
    function score() {
    	var frm = document.frm;	
    	if(frm.name.value == "")
    	{
    		alert("이름을 입력하세요.");
    		frm.name.focus();
    	} else if(frm.kor.value == "") {
    		alert("국어점수를 입력하세요.");
    		frm.kor.focus();
    	} else if(frm.eng.value == "") {
    		alert("영어점수를 입력하세요.");
    		frm.eng.focus();
    	} else if(frm.math.value == "") {
    		alert("수학점수를 입력하세요.");
    		frm.math.focus();
    	} else {
	    	frm.action = "/Curr01_Basic/j34_HW22.jsp";
	    	frm.method = "post";
	    	frm.submit();
    	}
    }
    
    function result() {
    	var frm = document.frm;
    	if(frm.name.value == "")
    	{
    		alert("이름을 입력하세요.");
    		frm.name.focus();
    	} else if(frm.kor.value == "") {
    		alert("국어점수를 입력하세요.");
    		frm.kor.focus();
    	} else if(frm.eng.value == "") {
    		alert("영어점수를 입력하세요.");
    		frm.eng.focus();
    	} else if(frm.math.value == "") {
    		alert("수학점수를 입력하세요.");
    		frm.math.focus();
    	} else {
	    	frm.action = "/Curr01_Basic/j34_HW23.jsp";
	    	frm.method = "post";
	    	frm.submit();
    	}
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
	<form name="frm" style="margin-left: 100px; margin-top: 100px;">
		<table border="1" style="text-align: center;">
			<tr>
				<td>이 름</td>
				<td><input type="text" name="name" placeholder="이름 입력"></td>
			</tr>		
			<tr>
				<td>국어 점수</td>
				<td><input type="text" name="kor" placeholder="국어 점수 입력"></td>
			</tr>
			<tr>
				<td>영어 점수</td>
				<td><input type="text" name="eng" placeholder="영어 점수 입력"></td>
			</tr>
			<tr>
				<td>수학 점수</td>
				<td><input type="text" name="math" placeholder="수학 점수 입력"></td>
			</tr>
			<tr>
				<td colspan="2">
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