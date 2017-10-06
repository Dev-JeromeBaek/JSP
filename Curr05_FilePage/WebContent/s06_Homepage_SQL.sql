
	create table hp_admin(
		id		varchar2(200) not null,
		pw		varchar2(200) not null
	);
	
	insert into hp_admin values('admin', 'rhksflwk');

	create table hp_furniture(
		num			number(5) primary key,
		name		varchar2(200) not null,
		price		number(8) not null,
		contorigin	varchar2(100) not null,
		orgName		varchar2(200) not null,
		sysName		varchar2(200) not null,
		opt			varchar2(400),
		memo		varchar2(800)
	);
	
	create sequence hp_furniture_seq;
	
	drop table hp_furniture purge;
	
	drop sequence hp_furniture_seq;