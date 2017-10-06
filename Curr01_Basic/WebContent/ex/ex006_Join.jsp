<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
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
  </head>
  <body>
	
	<%--
		회원가입 화면 작성 및 데이터 전송
	--%>

<form style="width: 1150px" action="">
	<fieldset>
	<legend style="font-size:80px">Join</legend>
		<table border="0" style="margin-left:180px; 
								margin-top:20px; 
								margin-bottom:40px; 
								width: 791px;" cellpadding="4">
			<tr>
				<td class="YY">&nbsp; 아이디</td>
				<td class="ZZ=">&nbsp;
					<input type="text" style="width: 298px" name="id"></td>
			</tr>
			<tr>
				<td class="YY">&nbsp; 비밀번호</td>
				<td class="ZZ">&nbsp; 
					<input type="password" style="width: 300px" name="pw01"></td>
			</tr>
			<tr>
				<td class="YY">&nbsp; 비밀번호 확인</td>
				<td class="ZZ">&nbsp; 
					<input type="password" style="width: 300px" name="pw02"></td>
			</tr>
			<tr>
				<td class="YY">&nbsp; 비밀번호 확인 질문</td>
				
				<td class="ZZ">
					&nbsp;
					<select style="width: 300px">
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
				<td class="ZZ">&nbsp; <input type="text" style="width: 300px" /></td>
			</tr>
			<tr>
				<td class="YY">&nbsp; 이름</td>
				<td class="ZZ">&nbsp; <input type="text" style="width: 300px" /></td>

			</tr>
			<tr>
				<td class="YY">&nbsp; 주소</td>
				<td class="ZZ">&nbsp; 
					<input type="text" style="width:65px" readonly="readonly">&nbsp;
					<input name="Button1" type="button" value="우편번호" /><br />
					&nbsp; <input type="text" style="width: 300px" readonly="readonly"><br />
					&nbsp; <input type="text" style="width: 300px" value=" 나머지 주소 입력">
				</td>
			</tr>
			<tr>
				<td class="YY">&nbsp; 생년월일</td>
				<td class="ZZ">&nbsp; 
					<select style="width: 82px">
						<%
							for(int i=2017; i>=1900; i--)
							{
						%>
						<option><%= i %></option> 
						<%
							}
						%>
					</select>년
					<select style="width: 82px">
						<%
							for(int i=1; i<=12; i++)
							{
						%>
						<option><%= i %></option>
						<%
							}
						%>
					</select>월<select style="width: 82px">
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
					<input name="Gender" type="radio" checked="checked" /> 남자
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
					<input name="Gender" type="radio" /> 여자&nbsp;
				</td>
			</tr>
			<tr>
				<td class="YY">&nbsp; 일반전화</td>
				<td class="ZZ">
					&nbsp;
					<select style="width: 88px" name="D1">
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
					- <input type="text" style="width: 88px" maxlength="4"/> -
				<input type="text" style="width: 88px" maxlength="4"/></td>

			</tr>
			<tr>
				<td class="YY">&nbsp; 휴대전화</td>
				<td class="ZZ">
					&nbsp;
					<select style="width: 88px">
						<option>010</option>
						<option>011</option>
						<option>016</option>
						<option>017</option>
						<option>018</option>
						<option>019</option>
					</select>
					- <input type="text" style="width: 88px" maxlength="4"/>
					- <input type="text" style="width: 88px" maxlength="4"/> 
				</td>
			</tr>
			<tr>
				<td class="YY">&nbsp; 이메일</td>
				<td class="ZZ">
					&nbsp;
					<input type="text" style="width: 125px" />
					 @
					<input type="text" style="width: 130px;" readonly="readonly" value="" />
					<select style="width: 130px;">
						<option>- 이메일 선택 -</option>
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
					<input name="Checkbox1" type="checkbox"> Java&nbsp;&nbsp;&nbsp;
					<input name="Checkbox2" type="checkbox"> JSP&nbsp;&nbsp;&nbsp;
					<input name="Checkbox3" type="checkbox"> Spring&nbsp;&nbsp;&nbsp;
					<input name="Checkbox4" type="checkbox"> R&nbsp;&nbsp;
					<input name="Checkbox5" type="checkbox"> HADOOP&nbsp; 
					<br>&nbsp;&nbsp;&nbsp;
					<input name="Checkbox6" type="checkbox"> HTML&nbsp;&nbsp;
					<input name="Checkbox7" type="checkbox"> CSS&nbsp;&nbsp;
					<input name="Checkbox8" type="checkbox"> JQuery&nbsp;&nbsp;&nbsp;
					<input name="Checkbox9" type="checkbox"> Data Base<br>
				</td>
			</tr>
			<tr>
				<td class="YY" style="width: 155px; height: 166px;">&nbsp; 소개</td>
				<td style="width: 460px; height: 166px;">&nbsp;&nbsp;
					<textarea name="TextArea1" style="width: 425px; height: 160px"></textarea>
				</td>

			</tr>
			<tr>
				<td colspan="2" style="width:635px; height: 27px">
				<div class="btnArea" align="right" style="width:635px;">
					<p class="btnRight">
        				<a href="">
        					<img src="http://ecdemo85757.cafe24.com/web/upload/cancle.jpg"/>
        				</a>
            			<a href="" onclick="memberJoinAction()">
            				<img src="http://ecdemo85757.cafe24.com/web/upload/join.jpg"/>
            			</a>        			
            		</p>
        		</div>
        		</td>
			</tr>
		</table>
		
	</fieldset>
</form>
	
  </body>
</html>