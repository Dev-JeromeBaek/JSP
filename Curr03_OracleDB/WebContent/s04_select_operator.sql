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