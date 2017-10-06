
--	[테이블 삭제]
	drop table a_mem purge;

--	[시퀀스 삭제]
	drop sequence a_mem_seq;

--	[테이블 생성]
	create table a_mem(
		num			number(5) primary key,
		id			varchar2(200) not null,
		pw			varchar2(200) not null,
		name		varchar2(200) not null,
		age			number(5) not null,
		birth		varchar2(200) not null,
		email		varchar2(200),
		nalja		date
	);

--	[시퀀스 생성]
	create sequence a_mem_seq;




















