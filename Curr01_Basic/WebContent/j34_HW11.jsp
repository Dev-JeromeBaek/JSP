<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <script type="text/javascript">
    
    	function score() {
    		var frm = document.frm;
    		var kor = frm.kor.value;
    		var eng = frm.eng.value;
    		var math = frm.math.value;
    		if(frm.name.value == "")
    		{
    			alert("이름을 입력해주세요.")
    			frm.name.focus();
    		} else if(kor == "") {
    			alert("국어점수를 입력해주세요.")
    			frm.kor.focus();
    		} else if(eng == "") {
    			alert("영어점수를 입력해주세요.")
    			frm.eng.focus();
    		} else if(math == "") {
    			alert("수학점수를 입력해주세요.")
    			frm.math.focus();
    		} else {
    			frm.total.value = parseInt(kor) 
    							+ parseInt(eng) 
    							+ parseInt(math);
    			
    			frm.avg.value = frm.total.value / 3.0;
    			
    			if(frm.avg.value >= 85.5)
    			{
    				frm.result.value = "합격입니다.";
    			} else {
    				frm.result.value = "불합격입니다.";
    			}
		    	frm.action = "/Curr01_Basic/j34_HW12.jsp";
		    	frm.method = "post";
		    	frm.submit();
    		}
    	}
    	
    	function aresult() {
    		alert("aa");
    		var frm = document.frm;
    		var kor = frm.kor.value;
    		var eng = frm.eng.value;
    		var math = frm.math.value;
    		if(frm.name.value == "")
    		{
    			alert("이름을 입력해주세요.")
    			frm.name.focus();
    		} else if(kor == "") {
    			alert("국어점수를 입력해주세요.")
    			frm.kor.focus();
    		} else if(eng == "") {
    			alert("영어점수를 입력해주세요.")
    			frm.eng.focus();
    		} else if(math == "") {
    			alert("수학점수를 입력해주세요.")
    			frm.math.focus();
    		} else {
    			frm.total.value = parseInt(kor) 
    							+ parseInt(eng) 
    							+ parseInt(math);
    			
    			frm.avg.value = frm.total.value / 3.0;
    			
    			if(frm.avg.value >= 85.5)
    			{
    				frm.result.value = "합격입니다.";
    			} else {
    				frm.result.value = "불합격입니다.";
    			}
		    	frm.action = "/Curr01_Basic/j34_HW13.jsp";
		    	frm.method = "post";
		    	frm.submit();
    		}
    	}
    	
    </script>
    <style type="text/css">
    	#TD {
    		background-color: #CDCDCD;
    	}
    </style>
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
	
	<form name="frm" style="width: 300px;  margin-left: 400px; 
														margin-top: 100px;">
		<fieldset>
		<legend style="font-size: 20px; 
							text-align: center;">학생 정보 관리 프로그램</legend>
		<table>
			<tr>
				<td id="TD">이 름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td id="TD">국어 점수</td>
				<td><input type="text" name="kor"></td>
			</tr>
			<tr>
				<td id="TD">영어 점수</td>
				<td><input type="text" name="eng"></td>
			</tr>
			<tr>
				<td id="TD">수학 점수</td>
				<td><input type="text" name="math"></td>
			</tr>
		</table>
		<div style="margin-left: 40px; margin-top: 15px;">
			<input type="hidden" name="total">
			<input type="hidden" name="avg">
			<input type="hidden" name="result">
			<input type="button" value="성적 Page"
						onclick="javascript:score()">&nbsp;&nbsp;&nbsp;
			<input type="button" value="결과 Page"
						onclick="javascript:aresult()">
		</div>
		</fieldset>
	</form>
  </body>
</html>