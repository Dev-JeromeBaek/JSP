
-- 자동차 정보 관리프로그램

	-- [테이블 삭제]
	drop table hw_car purge;	
	
	-- [시퀀스 삭제]
	drop sequence hw_car_seq;

	-- [테이블 생성]
	create table hw_car(
		num			number(5) primary key,
		carName		varchar2(200) not null,
		enginPrice	number(8) not null,
		tirePrice	number(8) not null,
		optName		varchar2(200),
		optPrice	number(8),
		totalPrice	number(11) not null
	);
	
	-- [시퀀스 생성] 
	create sequence hw_car_seq;

	
	
	
	