<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Yeob's Home</title>
    <style type="text/css">
    	.YY {
    		background-color: #D9D9D9;
    		font-family: "배달의민족 주아";
    		font-style: : bold;
    		font-size: 20px;
    		width: 155px;
    		height: 28px;
    	}
    	
    	.ZZ {
    		width: 460px;
    		height: 28px;
    	}
    </style>
    
    
    
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
    function openAddr() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postnum').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('addr1').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('addr2').focus();
            }
        }).open();
    }
    
//  [비밀번호 체크 함수]
    function tocheckpw1() {
        var pw = document.getElementById("pw").value;
        var pwck = document.getElementById("pw_Check").value;
 
        if(pw != pwck) {
            alert('비밀번호가 틀렸습니다. 다시 입력해 주세요');
            document.getElementById('pw_Check').value = "";
            document.getElementById('pw_Check').focus();
            return false;
        }
    }
    
//     function emailAddress() {
//     	var email02 = document.getElementById("email02").value;
//     	var email03 = document.getElementById("email03").value;
//     	if(email03 == '-이메일선택-') {
//     		continue;
//     	} else if(email03 == '직접입력') {
//     		email02.readonly = false;
//     		document.getElementById('email02').value = "";
//     		document.getElementById('email02').focus();
//     	} else {
//     		document.getElementById('email02').value = email03;
//     	}
//     }
    
</script>
  </head>
  <body>
	
	<%--
		회원가입 화면 작성 및 데이터 전송
	--%>

<form style="width: 1150px" action="/Curr01_Basic/j30_HW02.jsp" method="post" onsubmit="return tocheckpw1()">
	<fieldset>
	<legend style="font-size:80px">Join</legend>
		<table border="0" style="margin-left:180px; 
								margin-top:20px; 
								margin-bottom:40px; 
								width: 791px;" cellpadding="4">
			<tr>
				<td class="YY">&nbsp; 아이디</td>
				<td class="ZZ=">&nbsp;
					<input type="text" style="width: 298px" name="id" placeholder="아이디 입력"></td>
			</tr>
			<tr>
				<td class="YY">&nbsp; 비밀번호</td>
				<td class="ZZ">&nbsp; 
					<input type="password" id="pw" name="pw" style="width: 300px" placeholder="비밀번호 입력"></td>
			</tr>
			<tr>
				<td class="YY">&nbsp; 비밀번호 확인</td>
				<td class="ZZ">&nbsp; 
					<input type="password" id="pw_Check" name="pw_Check" style="width: 300px" placeholder="비밀번호 확인"></td>
			</tr>
			<tr>
				<td class="YY">&nbsp; 비밀번호 확인 질문</td>
				
				<td class="ZZ">&nbsp; 
					<select name="pw_Que" style="width: 300px">
						<option>기억에 남는 추억의 장소는?</option>
						<option>자신의 인생 좌우명은?</option>
						<option>자신의 보물 제1호는?</option>
						<option>가장 기억에 남는 선생님 성함은?</option>
						<option>타인이 모르는 자신만의 신체비밀이 있다면?</option>
						<option>추억하고 싶은 날짜가 있다면?</option>
						<option>받았던 선물 중 기억에 남는 독특한 선물은?</option>
						<option>유년시절 가장 생각나는 친구 이름은?</option>
						<option>인상 깊게 읽은 책 이름은?</option>
						<option>읽은 책 중에서 좋아하는 구정이 있다면?</option>
						<option>자신이 두번째로 존경하는 인물은?</option>
						<option>친구들에게 공개하지 않은 어릴 적 별명이 있다면?</option>
						<option>초등학교 때 기억에 남는 짝꿍 이름은?</option>
						<option>내가 좋아하는 캐릭터는?</option>
					</select>
				</td>
			</tr>
			<tr>
				<td class="YY">&nbsp; 비밀번호 확인 답변</td>
				<td class="ZZ">&nbsp; 
					<input type="text" style="width: 300px" name="pw_Ans" ></td>
			</tr>
			<tr>
				<td class="YY">&nbsp; 이름</td>
				<td class="ZZ">&nbsp; 
					<input type="text" style="width: 300px" name="name" placeholder="한글로입력하세요"></td>

			</tr>
			<tr>
				<td class="YY">&nbsp; 주소</td>
				<td class="ZZ">&nbsp; 
					<input id="postnum" name="postnum" type="text" style="width:65px; text-align: center;" readonly="readonly" >&nbsp;
					<input type="button" value="우편번호검색" onclick="openAddr()"><br>&nbsp; 
					<input id="addr1" name="addr1" type="text" style="width: 300px" readonly="readonly"><br>&nbsp; 
					<input id="addr2" name="addr2" type="text" style="width: 300px" placeholder="나머지 주소 입력">
				</td>
			</tr>
			<tr>
				<td class="YY">&nbsp; 생년월일</td>
				<td class="ZZ">&nbsp; 
				<%-- 생년월일 input type="date" 이용하기
					<input type="date" style="width: 300px; text-align: center;" name="birth" >
				</td>
				--%>
					<select name="birthYear" style="width: 82px">
						<%
							for(int i=2017; i>=1900; i--)
							{
						%>
						<option><%= i %></option> 
						<%
							}
						%>
					</select>년
					<select name="birthMonth" style="width: 82px">
						<%
							for(int i=1; i<=12; i++)
							{
								if(i<10)
								{
						%>
									<option>0<%= i %></option>
						<%
								} else {
						%>
									<option><%= i %></option>
						<%
								}
							}
						%>
					</select>월
					<select name="birthDay" style="width: 82px">
						<%
							for(int i=1; i<=31; i++)
							{
						%>
						<option><%= i %></option>
						<%
							}
						%>
					</select>일
				</td>
			</tr>
			<tr>
				<td class="YY">&nbsp; 성별</td>
				<td class="ZZ">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="gender" value="남자" checked="checked"> 남자
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
					<input type="radio" name="gender" value="여자"> 여자&nbsp;
				</td>
			</tr>
			<tr>
				<td class="YY">&nbsp; 일반전화</td>
				<td class="ZZ">
					&nbsp;
					<select name="tel01" style="width: 88px">
						<option>02</option>
						<option>031</option>
						<option>032</option>
						<option>033</option>
						<option>034</option>
						<option>035</option>
						<option>041</option>
						<option>042</option>
						<option>043</option>
						<option>044</option>
						<option>051</option>
						<option>052</option>
						<option>053</option>
						<option>054</option>
						<option>055</option>
						<option>061</option>
						<option>062</option>
						<option>063</option>
						<option>054</option>
						<option>0502</option>
						<option>0503</option>
						<option>0504</option>
						<option>0505</option>
						<option>070</option>
						<option>010</option>
						<option>011</option>
						<option>016</option>
						<option>017</option>
						<option>018</option>
						<option>019</option>
					</select>
					- <input name="tel02" type="number" style="width: 88px" maxlength="4"/> 
					- <input name="tel03" type="number" style="width: 88px" maxlength="4"/></td>

			</tr>
			<tr>
				<td class="YY">&nbsp; 휴대전화</td>
				<td class="ZZ">
					&nbsp;
					<select name="phone01" style="width: 88px">
						<option>010</option>
						<option>011</option>
						<option>016</option>
						<option>017</option>
						<option>018</option>
						<option>019</option>
					</select>
					- <input name="phone02" type="text" style="width: 88px" maxlength="4"/>
					- <input name="phone03" type="text" style="width: 88px" maxlength="4"/> 
				</td>
			</tr>
			<tr>
				<td class="YY">&nbsp; 이메일</td>
				<td class="ZZ">
					&nbsp;
					<input type="text" name="email01" style="width: 125px">
					 @
					<input id="email02" name="email02" type="text" readonly="readonly" style="width: 130px;">
					<select id="email03" style="width: 130px;">
						<option>-이메일 선택-</option>
						<option>naver.com</option>
						<option>google.com</option>
						<option>daum.net</option>
						<option>nate.com</option>
						<option>hotmail.com</option>
						<option>yahoo.com</option>
						<option>empas.com</option>
						<option>korea.com</option>
						<option>gmail.com</option>
						<option>직접입력</option>
					</select>
				</td>

			</tr>

			<tr>
				<td class="YY">&nbsp; 관심분야</td>
				<td style="width: 460px; height: 50px;">&nbsp;&nbsp;&nbsp;
					<input name="interest" type="checkbox" value="Java"> Java&nbsp;&nbsp;&nbsp;
					<input name="interest" type="checkbox" value="JSP"> JSP&nbsp;&nbsp;&nbsp;
					<input name="interest" type="checkbox" value="Spring"> Spring&nbsp;&nbsp;&nbsp;
					<input name="interest" type="checkbox" value="R"> R&nbsp;&nbsp;
					<input name="interest" type="checkbox" value="HADOOP"> HADOOP&nbsp; 
					<br>&nbsp;&nbsp;&nbsp;
					<input name="interest" type="checkbox" value="HTML"> HTML&nbsp;&nbsp;
					<input name="interest" type="checkbox" value="CSS"> CSS&nbsp;&nbsp;
					<input name="interest" type="checkbox" value="JQuery"> JQuery&nbsp;&nbsp;&nbsp;
					<input name="interest" type="checkbox" value="Data Base"> Data Base<br>
				</td>
			</tr>
			<tr>
				<td class="YY" style="width: 155px; height: 166px;">&nbsp; 소개</td>
				<td style="width: 460px; height: 166px;">&nbsp;&nbsp;
					<textarea rows="5" cols="45" name="memo" style="width: 425px; height: 160px"></textarea>
				</td>

			</tr>
			<tr>
				<td colspan="2" style="width:655px; height: 27px">
				<div class="btnArea" align="right" style="width:635px;">
        				<input type="reset" value="Cancle">
        				<input type="submit" value="Join">
        		</div>
        		</td>
			</tr>
		</table>
		
	</fieldset>
</form>
	
  </body>
</html>