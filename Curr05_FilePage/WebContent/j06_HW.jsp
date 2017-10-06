<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	
	<%--
		문제 : 쇼핑몰 화면 만들기
		- 관리자 입장에서 상품 정보를 관리하는 프로그램
		- dao, dbcp, session, MultipartRequest...
			JdbcConnector, ...
		1. Home 화면 구성
			- 비로그인 상태인 경우
				=> 로그인을 진행하는 기능 존재
			- 로그인 상태인 경우
				=> 상품 업로드 화면으로 이동하는 기능
				=> 상품 목록 보기 화면으로 이동하는 기능
				
		2. 상품 업로드 화면
			- 상품 정보를 업로드 : 이름, 가격, 이미지, 설명 등등등...
			- 업로드 시 이미지가 서버에 저장되어야 함
			
		3. 상품 목록 화면
			- 업로드한 상품의 번호, 이름, 이미지를 노출
			- 이미지를 클릭하면 상세 페이지로 이동
			
		4. 상품 상세 화면
			- 상품에 대한 모든 상세 정보 : 정보 및 이미지
			- 다음 기능 존재
				1. 정보 수정
				2. 정보 삭제
				3. 목록 보기
		
		5. 상품 정보 수정화면
			- 기존의 정보가 기본적으로 모두 노출되어야 함
			
	--%>
	
  </body>
</html>