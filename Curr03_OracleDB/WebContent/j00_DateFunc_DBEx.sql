    
    
      drop table db_date purge;
      drop sequence db_date_seq;
    
      create table db_date(
        num			number(5) primary key,	
        savedate		date
      );
      create sequence db_date_seq increment by 1 start with 1 nocycle nocache;
      
    
      -- 날짜 정보 저장
      
      insert into db_date values(db_date_seq.nextval, to_date('14/12/01 01:01:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('14/12/13 13:13:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('14/12/23 20:35:01', 'rr/mm/dd hh24:mi:ss'));
        
      insert into db_date values(db_date_seq.nextval, to_date('15/01/01 01:01:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('15/01/13 13:13:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('15/01/23 20:35:01', 'rr/mm/dd hh24:mi:ss'));
      
      insert into db_date values(db_date_seq.nextval, to_date('15/02/01 01:01:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('15/02/13 13:13:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('15/02/23 20:35:01', 'rr/mm/dd hh24:mi:ss'));
      
      insert into db_date values(db_date_seq.nextval, to_date('15/03/01 01:01:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('15/03/13 13:13:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('15/03/23 20:35:01', 'rr/mm/dd hh24:mi:ss'));
      
      insert into db_date values(db_date_seq.nextval, to_date('15/04/01 01:01:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('15/04/13 13:13:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('15/04/23 20:35:01', 'rr/mm/dd hh24:mi:ss'));
      
      insert into db_date values(db_date_seq.nextval, to_date('15/05/01 01:01:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('15/05/13 13:13:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('15/05/23 20:35:01', 'rr/mm/dd hh24:mi:ss'));
      
      insert into db_date values(db_date_seq.nextval, to_date('15/06/01 01:01:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('15/06/13 13:13:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('15/06/23 20:35:01', 'rr/mm/dd hh24:mi:ss'));
      
      insert into db_date values(db_date_seq.nextval, to_date('15/07/01 01:01:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('15/07/13 13:13:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('15/07/23 20:35:01', 'rr/mm/dd hh24:mi:ss'));
      
      insert into db_date values(db_date_seq.nextval, to_date('15/08/01 01:01:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('15/08/13 13:13:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('15/08/23 20:35:01', 'rr/mm/dd hh24:mi:ss'));
      
      insert into db_date values(db_date_seq.nextval, to_date('15/09/01 01:01:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('15/09/13 13:13:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('15/09/23 20:35:01', 'rr/mm/dd hh24:mi:ss'));
      
      insert into db_date values(db_date_seq.nextval, to_date('15/10/01 01:01:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('15/10/13 13:13:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('15/10/23 20:35:01', 'rr/mm/dd hh24:mi:ss'));
      
      insert into db_date values(db_date_seq.nextval, to_date('15/11/01 01:01:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('15/11/13 13:13:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('15/11/23 20:35:01', 'rr/mm/dd hh24:mi:ss'));
      
      insert into db_date values(db_date_seq.nextval, to_date('15/12/01 01:01:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('15/12/13 13:13:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('15/12/23 20:35:01', 'rr/mm/dd hh24:mi:ss'));
      
      insert into db_date values(db_date_seq.nextval, to_date('16/01/01 01:01:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('16/01/13 13:13:01', 'rr/mm/dd hh24:mi:ss'));
      insert into db_date values(db_date_seq.nextval, to_date('16/01/23 20:35:01', 'rr/mm/dd hh24:mi:ss'));
    
      
      
      
      
      
      
      
      
      
      
      