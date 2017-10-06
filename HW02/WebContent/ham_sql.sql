
-- 햄버거 정보 관리프로그램

	-- [테이블 삭제]
	drop table hw_ham purge;	
	
	-- [시퀀스 삭제]
	drop sequence hw_ham_seq;

	-- [테이블 생성]
	create table hw_ham(
		num			number(5) primary key,
		nameHam		varchar2(200) not null,
		brandHam		varchar2(200) not null,
		priceHam		number(8) not null,
		kcalHam		number(10, 3) not null
	);
	
	-- [시퀀스 생성] 
	create sequence hw_ham_seq;
	