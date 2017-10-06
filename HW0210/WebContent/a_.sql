--	삭제
	drop table a_teacher;
	drop sequence a_teacher_seq;
	drop table a_student;
	drop sequence a_student_seq;
--	[a_teacher]
	create table a_teacher(
		tnum		number(5) primary key,
		tname		varchar2(200) not null,
		tid			varchar2(200) not null,
		tpw			varchar2(200) not null,
		thak		number(2) not null,
		tban		number(3) not null
	);
	
--	[a_teacher_seq]
	create sequence a_teacher_seq;
	
--	[a_student]
	create table a_student(
		snum		number(5) primary key,
		sname		varchar2(200) not null,
		sgender		varchar2(100) not null,
		shak		number(3) not null,
		sban		number(4) not null,
		sbirth		varchar2(200) not null,
		orgName		varchar2(200) not null,
		sysName		varchar2(200) not null,
		kor			number(3),
		eng			number(3),
		math		number(3),
		total		number(3),
		avg			number(5,2)
	);
	
--	[a_student_seq]	
	create sequence a_student_seq;