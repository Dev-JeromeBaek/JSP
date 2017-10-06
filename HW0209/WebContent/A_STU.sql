
--	[테이블 삭제]
	drop table a_stu purge;

--	[시퀀스 삭제]
	drop sequence a_stu_seq;

--	[테이블 생성]
	create table a_stu(
		num		number(5) primary key,
		name	varchar2(200) not null,
		kor		number(3) not null,
		eng		number(3) not null,
		math	number(3) not null,
		total	number(3) not null,
		avg		number(5, 2) not null
	);
--	[시퀀스 생성]
	create sequence a_stu_seq;
	
--	[테이블 보기]
	select * from a_stu;