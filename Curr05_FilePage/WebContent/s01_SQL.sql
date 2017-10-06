 	create table t_updown(
		num		number(5) primary key,
		writer	varchar2(100) not null,
		title	varchar2(100) not null,
		orgName	varchar2(100) not null,
		sysName	varchar2(100) not null
	);
  
create sequence t_updown_seq;
    

select * from t_updown;