
	drop table t_board purge;
	drop sequence t_board_seq;
	
	create table t_board(
		num			number(5) primary key,
		groupNum	number(5) not null,
		replySeq	number(5) not null,
		replyLevel	number(5) not null,
		viewCnt		number(5) not null,
		
		title		varchar2(200),
		writer		varchar2(200),
		contents	varchar2(200),
		saveDate	date
	);
	
	create sequence t_board_Seq;
	
	select * from t_board;
	
	select * from t_board order by groupNum desc, replySeq asc;
	
	select rownum rnum, tt.* from 
		(select * from t_board order by groupNum desc, replySeq asc) tt;
	
	select * from 
		(select rownum rnum, tt.* from 
		(select * from t_board 
			order by groupNum desc, 
				replySeq asc) tt) where rnum>=? and rnum<=?;
	
	
	
	
	