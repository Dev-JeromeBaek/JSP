    
    
    -- Join : 2개 이상의 테이블을 조합하여 원하는 데이터를 검색하는 방법
          
      -- 아래의 두 테이블에서 num은 고유키(Primary Key)이자, 외부의 PK를 참조하는 외래키(Foreign Key)
          drop table db_stuInfo purge;
          drop table db_stuTest purge;
          
          create table db_stuInfo (
            num		number(5) primary key,
            name	varchar2(200),
            hobby	varchar2(200),
            friend	varchar2(200)
          );
          create table db_stuTest (
            num		number(5) primary key,
            total	number(5),
            avg		number(7, 2)
          );
          
      insert into db_stuInfo values(1, '둘리', '놀기', '도우너');
      insert into db_stuInfo values(2, '도우너', '먹기', '또치');
      insert into db_stuInfo values(3, '또치', null, null);
      insert into db_stuInfo values(4, '마이콜', '노래하기', '희동이');
      insert into db_stuInfo values(5, '희동이', '물기', '돌둘리');
      insert into db_stuInfo values(6, '돌둘리', '놀기', '도리도우너');
      insert into db_stuInfo values(7, '도리도우너', '먹기', '또치또');
      insert into db_stuInfo values(8, '또치또', null, '유유콜');
      insert into db_stuInfo values(9, '유유콜', '노래하기', null);
      insert into db_stuInfo values(10, '개똥이', '물기', '리둘리');
      insert into db_stuInfo values(11, '리둘리', '놀기', '너우도우너');
      insert into db_stuInfo values(12, '너우도우너', '먹기', '치치또치');
      insert into db_stuInfo values(13, '치치또치', null, '코리콜마이');
      insert into db_stuInfo values(14, '코리콜마이', '노래하기', '희북이');
      insert into db_stuInfo values(15, '희북이', '물기', '둘리');
    
      
      insert into db_stuTest values(1, 296, null);
      insert into db_stuTest values(2, 269, null);
      insert into db_stuTest values(3, 199, null);
      insert into db_stuTest values(4, 273, null);
      insert into db_stuTest values(5, 299, null);
      insert into db_stuTest values(6, 247, null);
      insert into db_stuTest values(7, 283, null);
      insert into db_stuTest values(8, 294, null);
      insert into db_stuTest values(9, 129, null);
      insert into db_stuTest values(10, 156, null);
      insert into db_stuTest values(11, 282, null);
      insert into db_stuTest values(12, 196, null);
      insert into db_stuTest values(13, 259, null);
      insert into db_stuTest values(14, 230, null);
      insert into db_stuTest values(15, 197, null);
      update db_stuTest set avg=total/3;
      
      select * from db_stuTest;
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    