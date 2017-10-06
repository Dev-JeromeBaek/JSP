
-- 0. 테이블 및 시퀀스 삭제
	drop table s_stu purge;
	drop sequence s_stu_seq;

-- 1. 테이블 생성
	create table s_stu(
		num		number(5) primary key,
		name	varchar2(200) not null, 
		kor		number(4),
		eng		number(4),
		math	number(4)
	);
	
-- 2. 테이블 확인
	select * from s_stu;
	
-- 3. 시퀀스 생성
	create sequence s_stu_seq;
	
-- 4. 레코드 저장		s_stu_seq.nextval : 시퀀스 번호 뽑기	 '둘리' : 문자열은 ('')외따옴표
	insert into s_stu values(s_stu_seq.nextval, '둘리', 10, 20, 30);
	
	insert into s_stu(num, name) values(s_stu_seq.nextval, '마이콜');
	
-- 5. primary key가 존재하지 않으면 에러 발생
	insert into s_stu(name) values('철수');
	
-- 6. not null(null값 허용 안함) 설정된 컬럼 값이 없는 경우 에러 발생
	insert into s_stu(num) values(s_stu_seq.nextval);
	
-- 7. 수정하기
	update s_stu set kor=80, eng=70, math=60 where name='마이콜';
	
-- 8. 저장
	insert into s_stu values(s_stu_seq.nextval, '백', 1, 1, 1);
	insert into s_stu values(s_stu_seq.nextval, '승', 2, 2, 2);
	insert into s_stu values(s_stu_seq.nextval, '엽', 3, 3, 3);
	insert into s_stu values(s_stu_seq.nextval, '백백', 4, 4, 4);
	
-- 9. 특정 데이터 선택 조회

	-- 번호가 1번인 정보 조회하기
	select * from s_stu where num=1;
	
	-- 국어점수가 80점인 정보 조회하기
	select * from s_stu where kor=80;
	
	-- 국어점수가 80점 이상이고,(and) 영어 점수가 90점 이상인 학생 정보
	select * from s_stu where kor<=80 and eng<=90;
	
-- 10. 삭제하기 : 번호가 1번인 학생의 정보 삭제

	delete from s_stu where num=1;
	
-- 11. 테이블에 컬럼 추가하기
--	alter table 테이블명 add();
	alter table s_stu add(
		total	number(5),
		avg		number(6, 2),
		savedate	date
	);
	
-- 수정하기 : 총점, 평균, 저장된 날짜 저장
	update s_stu set total=kor+eng+math, 
						avg=(kor+eng+math)/3,
						savedate = sysdate;
	
	
	
	
	
	select * from s_stu;