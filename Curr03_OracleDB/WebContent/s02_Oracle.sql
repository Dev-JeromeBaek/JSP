
	1. SQL
		1. 데이터 조작어 (DML)
			- insert, update, delete, merge..
			- 트랜젝션 과정 필요(commit, rollback..)
		2. 데이터 정의어 (DDL)
			- create, alter, drop, ...
			- 자동 commit 되므로 트랜젝션 필요 없음
		3. 데이터 검색어
			- select
		4. 트랜젝션 제어어
			- commit, rollback, .. 세이브포인트?
		5. 데이터 제어어(DCL)
			- grant, revoke, ..
	
	2. create
		1. 테이블
			1. 형식
				create table 테이블명(
					컬럼명1		컬럼1타입,
					컬럼명2		컬럼2타입
				);
				
			2. 컬럼 타입
				- number : 숫자형
					- 크기 설정
						(5) 또는 (5,0) : 총 5자리 숫자, 소수점 이하 없음
						(5,2) : 총 5자리 숫자, 소수점 이하 2자리 => ***.**
				- varchar2 : 문자형(가변형) -4000byte
					- 한글 크기
						Enterprise(기업용) 한글 1자 : 2byte
						Express(학습용) 한글 1자 : 3byte
				- date : 날짜형
				- timestamp : date의 확장형
				- clob : 문자형 - 4000byte 이상인 경우, 최대 4GB
				- blob : 파일 저장(그림, 음악 등) - 최대 4GB
				
			3. 생성된 테이블 확인하기
				1. 모든 테이블 목록보기
					- select * from tab;
				2. 지정된 테이블의 레코드 보기 (레코드 : 정보 저장 단위)
					- select * from 테이블명;
			
			4. 테이블 삭제 및 복원
				1. 복원 가능 삭제
					drop table 테이블명;
				2. 복원 불가능 삭제
					drop table 테이블명 purge;
				3. 테이블 복원
					flashback table 테이블명 to before drop;
				4. 삭제 내용 휴지통 비우기
					purge recyclebin;
			5. constraint(제약조건, 무결성 검사)
				- Primary Key(P.K) : 절대 입력되어야 함, 중복 허용 X
				- Unique Key : Null값 가능, PK가 다르더라도 중복 허용 X 
					(예시 : 핸드폰 번호 - 핸드폰이 없는 사람도 있음).
				- Null Key : Null값 가능, 중복 가능
				- Foreign Key(F.K) : 외래키, 외부로부터 입력된 값
			
		2. 시퀀스
			1. 형식
				create sequence 시퀀스이름
					increment bt 1 string with nocycle ...;
					
		3. SQL과 레코드
			1. insert : 레코드 저장
				1. 테이블 컬럼 순서대로 전체 값을 입력하는 경우
					insert into 테이블명 values(값1, 값2, ...);
.				2. 테이블의 원하는 컬럼 값만 저장하는 경우.
					insert into 테이블명(컬럼명1, 컬럼명2, ...) values(값1, 값2, ...);

			2. select : 레코드 선택
				1. 테이블의 모든 레코드 보기
					select * from 테이블명;
				2. 테이블의 원하는 컬럼 보기
					select 컬럼명2, 컬럼명4 from 테이블명;
				3. 조건식 : where
					select * from 테이블명 where 조건식
					ex) select * from 테이블명 where name='둘리';
				4. 정렬 설정 : order by
					asc : 오름차순(기본값) / desc : 내림차순
					select * from 테이블명 order by 컬럼명 [asc/desc];
				
				5. 문자 검색 : like && % && escape
					(문자 검색 시 대소문자가 구별됨)
					select * from 테이블명 where name like '%수%' and like ''; 
					%수%: 앞이든 뒤는 글씨에 수만 들어가면 된다.(대소문자 구분)
					
			3. update : 레코드 수정
				update 테이블명 set 수정할내용 where 원하는 조건; 10살인 애들만 수정해라
				
			4. delete : 레코드 삭제
				1. 테이블의 모든 레코드 삭제
					delete (테이블명 혹은 from) 테이블명;
				2. 테이블의 원하는 레코드만 삭제
					delete (테이블명 혹은 from) 테이블명 where 원하는 조건;
		4. SQL 실행
			1. executeQuery() : select
				- 테이블의 레코드 정보가 변하지 않는 경우!
			2. executeUpdate() : insert, update, delete
				- 테이블의 레코드 정보가 변하는 경우!		
		