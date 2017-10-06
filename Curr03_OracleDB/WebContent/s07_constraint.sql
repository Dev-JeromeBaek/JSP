
	constraint(제약조건, 무결성 검사)
	- Primary Key(P.K) : 절대 입력되어야 함, 중복 허용 X
	- Unique Key : Null값 가능, PK가 다르더라도 중복 허용 X 
		(예시 : 핸드폰 번호 - 핸드폰이 없는 사람도 있음).
	- Null Key : Null값 가능, 중복 가능
	- Foreign Key(F.K) : 외래키, 외부로부터 입력된 값
						=> P.K 또는 U.K만 가능
						
	테이블 삭제
	drop table db_con01 purge;
	
	테이블 생성
	create table db_con01 (
		id		number(5),
		name	varchar2(200),
		tel		varchar2(200),
		memo	varchar2(200),
		age		number(6)
	);
	
	constraint 설정
	- 각 constraint name(조건에 대한 이름)을 부여해야함
	- 다른 테이블이라 하더라도 constraint name은 중복되어서는 안됨!! 무조건 1개!!
	
	1. primary key 설정
	alter table db_con01
		add constraint db_con01_id_pk primary key(id);
		
	2. not null 설정
--	alter table db_con01
--		modify name constraint (이름) not null;
	alter table db_con01
		modify name constraint db_con01_name_notnull not null;
	
	3. Unique key 설정
	alter table db_con01
		add constraint db_con01_tel_uk unique(tel);
	
--	constraint 삭제하기 : constraint name 필요! 반드시!
	alter table db_con01
		drop constraint db_con01_name_notnull;

-- 외래키
	drop table db_con02 purge;
	drop table db_con03 purge;
	
	create table db_con02(
		id		number(5) constraint db_con02_id_pk primary key,
		name	varchar2(200) constraint db_con02_name not null,
		tel		varchar2(200) constraint db_con02_tel unique
	);
	
	create table db_con03(
		id		number(5),
		kor		number(5)
	);
		
	alter table db_con03
			add constraint db_con03_id_fk
			foreign key(id) references db_con02(id);
		
	insert into db_con02 values(1, '둘리', '010-1111-1111');
	insert into db_con02 values(2, '도우너', '010-2222-2222');
	insert into db_con02 values(3, '또치' '010-3333-3333');
	
	insert into db_con03 values(1, 78);
	insert into db_con03 values(2, 78);
	insert into db_con03 values(3, 78);
			
	-- 에러 db_con02에 4번이 없다. 그래서 db_con03테이블에 외래키 설정을 할 수 없다!
	insert into db_con03 values(4, 88);
			
	-- 삭제 : 외래키로 설정된 다른 값들을 삭제한 후 진행해야 함!!
	delete from	db_con02 where id=1;
	
	delete from db_con03 where id=1;
	delete from db_con02 where id=1;
			
			