    
    
  ---------  DB 연습을 위한 테이블 생성 및 레코드 저장
    
    
      -- 0. 참고 : 테이블과 레코드 삭제
      drop table db_stuEx purge;
      drop sequence db_stuEx_seq;
      
      
      -- 1. 테이블 생성 : 고유번호, 이름, 학년, 반, 학급번호, 국어, 영어, 수학, 총점, 평균
      create table db_stuEx(
          idNum	number(5)	primary key,
          name	varchar2(200) not null,
          gradeH	number(5),	
          gradeB	number(5),
          num		number(5),
          kor		number(5),
          eng		number(5),
          math	number(5),
          total	number(5),
          avg		number(14, 7)
      );
      
      -- 2. 시퀀스 생성
      create sequence db_stuEx_seq increment by 1 start with 1 nocycle nocache;
      
      -- 3. 테이블 확인
      select * from db_stuEx;
      
      
      -- 4. 레코드 저장
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '둘리11', 1, 1, 1, 89, 34, 45);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '마이콜11', 1, 1, 2, 35, 84, 98);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '또치11', 1, 1, 3, 94, 36, 94);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '희동이11', 1, 1, 4, 86, 98, 99);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '도우너11', 1, 1, 5, 97, 67, 94);
      
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '둘리12', 1, 2, 1, 94, 79, 80);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '마이콜12', 1, 2, 2, 96, 48, 70);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '또치12', 1, 2, 3, 80, 88, 78);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '희동이12', 1, 2, 4, 87, 98, 92);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '도우너12', 1, 2, 5, 85, 30, 89);
      
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '도리도리21', 2, 1, 1, 94, 98, 99);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '둘둘이21', 2, 1, 2, 96, 40, 36);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '도우콜21', 2, 1, 3, 86, 85, 45);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '희리21', 2, 1, 4, 89, 98, 65);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '마이치21', 2, 1, 5, 96, 70, 74);
      
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '둘희동리22', 2, 2, 1, 97, 34, 45);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '마이또치22', 2, 2, 2, 89, 94, 45);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '희동도우22', 2, 2, 3, 89, 85, 92);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '둘리콜22', 2, 2, 4, 93, 34, 97);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '마이치22', 2, 2, 5, 84, 82, 97);
      
        
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '리둘리31', 3, 1, 1, 89, 34, 45);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '우도우너31', 3, 1, 2, 89, 96, 45);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '또치또치31', 3, 1, 3, 89, 34, 56);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '마이콜콜31', 3, 1, 4, 94, 94, 45);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '희동동31', 3, 1, 5, 99, 94, 45);
      
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '둘길동32', 3, 2, 1, 91, 34, 45);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '돌두리32', 3, 2, 2, 90, 83, 55);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '콜코리32', 3, 2, 3, 38, 94, 55);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '마이동동32', 3, 2, 4, 96, 48, 45);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '콜콜리리32', 3, 2, 5, 91, 98, 45);
      
        
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '도우콜41', 4, 1, 1, 89, 34, 45);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '둘도우콜41', 4, 1, 2, 89, 96, 45);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '도우둘리41', 4, 1, 3, 89, 34, 56);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '희둘콜치41', 4, 1, 4, 94, 94, 45);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '콜희또치41', 4, 1, 5, 99, 94, 45);
      
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '치치치42', 4, 2, 1, 91, 34, 45);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '또또42', 4, 2, 2, 90, 83, 55);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '치둘치둘42', 4, 2, 3, 38, 94, 55);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '마치둘42', 4, 2, 4, 96, 48, 45);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '또리42', 4, 2, 5, 91, 98, 45);
      
        
          
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '마%둘리41', 4, 1, 1, 89, 34, 45);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '둘리%마41', 4, 1, 2, 89, 96, 45);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '둘리%마*치41', 4, 1, 3, 89, 34, 56);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '둘_또치*콜41', 4, 1, 4, 94, 94, 45);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '_또치%마이콜41', 4, 1, 5, 99, 94, 45);
      
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '또치%%콜42', 4, 2, 1, 91, 34, 45);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '마*희동%또치42', 4, 2, 2, 90, 83, 55);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '둘리%콜*또42', 4, 2, 3, 38, 94, 55);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '*마이콜_치', 4, 2, 4, 96, 48, 45);
      insert into db_stuEx(idNum, name, gradeH, gradeB, num, kor, eng, math) 
        values(db_stuEx_seq.nextval, '둘#_마이콜', 4, 2, 5, 91, 98, 45);
      
            
      insert into db_stuEx(idNum, name, gradeB, num, kor, math) 
        values(db_stuEx_seq.nextval, '둘리11', 1, 1, 89, 34);
      insert into db_stuEx(idNum, name, gradeH, num, eng, math) 
        values(db_stuEx_seq.nextval, '희동이52', 5, 2, 89, 45);
      insert into db_stuEx(idNum, name, gradeH, gradeB, kor, eng) 
        values(db_stuEx_seq.nextval, '마이콜51', 5, 1, 89, 34);
      insert into db_stuEx(idNum, name, gradeB, num, eng, math) 
        values(db_stuEx_seq.nextval, '또치14', 1, 4, 94, 45);
      insert into db_stuEx(idNum, name, gradeH, num, kor, math) 
        values(db_stuEx_seq.nextval, '도우너55', 5, 5, 99, 94);
    
      insert into db_stuEx(idNum, name, gradeH, gradeB, kor, eng) 
        values(db_stuEx_seq.nextval, '또치52', 5, 2, 91, 34);
      insert into db_stuEx(idNum, name, gradeH, num, kor, math) 
        values(db_stuEx_seq.nextval, '희동52', 5, 2, 90, 55);
      insert into db_stuEx(idNum, name, gradeB, num, eng, math) 
        values(db_stuEx_seq.nextval, '둘두리23', 2, 3, 38, 55);
      insert into db_stuEx(idNum, name, gradeH, num, kor, math) 
        values(db_stuEx_seq.nextval, '마이둘54', 5, 4, 96, 48);
      insert into db_stuEx(idNum, name, gradeH, gradeB, kor, eng) 
        values(db_stuEx_seq.nextval, '둘치52', 5, 2, 98, 45);
        
        
      update db_stuEx set total=kor+eng+math, avg=(kor+eng+math)/3;
      
-- 전체 데이터 조회
      select * from db_stuEx;
      
-- 조건 조회 : 2학년 정보만 조회

      select * from db_stuEx where gradeH=2;
      
-- 조회 정보 컬럼에 별칭 부여(컬럼대상 as **) : 앨리어싱 기법
	select gradeH, name from db_stuEx where gradeH=2;
	select gradeH as "학년", name as "이름" from db_stuEx where gradeH=2;
      
	
-- 특정 문자열 조회(like %)
	-- '둘'로 시작하는 이름을 가진 학생 조회
	select * from db_stuEx where name like '둘%';
      
	-- '둘'자가 들어가는 이름을 가진 학생 조회
	select * from db_stuEx where name like '%둘%';
      

-- 특정 기호 문자열 조회
	-- 기호 *이 들어가는 이름을 가진 학생 조회
	select * from db_stuEx where name like '%*%';
	
	-- 기호 %가 들어가는 이름을 가진 학생 조회
	-- => %앞에 \ 붙이고, escape로 \를 지정
	select * from db_stuEx where name like '%\%%' escape '\';
	
-- 특정 범위 데이터 조회
	-- 평균이 80.5 ~ 90.5 범위의 학생 조회
	select * from db_stuEx where avg>=80.5 and avg<=90.5;
	select * from db_stuEx where avg between 80.5 and 90.5;
	
-- NULL값에 대한 조회(is null / is not null)
	select * from db_stuEx where eng is null;
	select * from db_stuEx where eng is null and gradeH is not null;
	
-- NULL값에 대해 특정값을 출력 (리 라벨링 작업 : nvl(**, '0')) 
--	(가상테이블을 만들어서 보여줌. 가상테이블로 작업을 하기도함. 가상테이블 결과를 받아올 수도 있음.)
	select name, eng from db_stuEx where gradeH=5;\\
	select name, nvl(eng, 0) from db_stuEx where gradeH=5;
    
-- 레코드 정렬 : order by ** asc/desc
	-- idnum 내림차순 정렬
	select * from db_stuEx order by idnum desc;
	
	-- name 오름차순 정렬
	select * from db_stuEx order by name asc;
	
-- 그룹 처리 group by
	-- 1. 1학년 및 2학년 학생들의 학년, 이름, 평균 보기
	select gradeH, name, avg from db_stuEx 
			where gradeH=1 or gradeH=2;
	
	-- 2. 위의 1학년 및 2학년 학생들에 대한 각각 인원수 출력
	select gradeH, COUNT(name) from db_stuEx 
			where gradeH=1 or gradeH=2 group by gradeH;
	
	-- 3. 1학년 및 2학년 학생 중 평균이 80.5 이상인 학생 조회
	select gradeH, name, avg from db_stuEx 
			where (gradeH=1 or gradeH=2) and avg >= 80.5;
	
	-- 4. 3번의 결과에 대해 학년 별 인원수를 출력
	select gradeH, COUNT(name) from db_stuEx 
			where (gradeH=1 or gradeH=2) and avg >= 80.5 
			group by gradeH;
	
    
-- 제한
	-- 1. 각 학년 중 이름에 '마'가 포함된 학생 정보'
	select * from db_stuEx where name like '%마%';
	
	-- 2. 각 학년 중 이름에 '마'가 포함된 학생의
	--		학년 별 인원수 조회(학년과 인원수 출력)
	select gradeH , COUNT(name) from db_stuEx
			where name like '%마%'
			group by gradeH;
      
	-- 3. 2번 결과 중 인원이 3명 이상인 결과만 출력
    select gradeH, COUNT(name) from db_stuEx
      		where name like '%마%'
      		group by gradeH having count(name) >= 3;
      
      		
-- 종류별 보기
	-- 전체 보기
	select distinct gradeH from db_stuEx;
      
	
      
      
      
      
      