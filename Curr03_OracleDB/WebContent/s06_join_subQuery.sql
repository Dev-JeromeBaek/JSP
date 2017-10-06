
-- Join :
-- 2개 이상의 테이블을 조합하여 원하는 결과 테이블을 획득

	select * from db_stuInfo;	--// 학생 개인 정보
	select * from db_stuTest;	--// 학생 시험 정보
	
-- 테이블의 조인 결과 : 컬럼 대 컬럼의 1:1 조화
	select * from db_stuInfo, db_stuTest;
	--// 개인 정보 1 -> 시험정보 전부
	--// 개인정보 2 -> 시험정보 전부
	--// 개인정보 3 -> 시험정보 전부 .. 이런식으로 간다!
	
-- 두 테이블에 대한 별명 설정
	select * from db_stuInfo ii, db_stuTest tt;
	select ii.name, tt.total
			from db_stuInfo ii, db_stuTest tt;
	
-- 학생에 대한 정보 결함 : num이 동일한 정보
	select * from db_stuInfo ii, db_stuTest tt
			where ii.num = tt.num;
			
-- 학생에 대한 정보 결함 : num이 동일한 정보(총점에 대한 정렬하기!)
	select * from db_stuInfo ii, db_stuTest tt
			where ii.num = tt.num order by total desc;
				--// 결합한 테이블을 기준으로 total을 정렬한 상태
				--// 가상테이블을 가지고 total을 정렬한 것이기때문에
			
-- 이름이 둘리인 학생의 총점
	-- 둘리 학생의 총점을 출력(테이블 원래 이름 사용)
	select * from db_stuInfo, db_stuTest
			where db_stuInfo.num = db_stuTest.num
					and db_stuInfo.name = '둘리';
			
-- 문제 : 위의 명령을 테이블의 별명을 사용하는 명령으로 작성
	select ii.num, name, total from db_stuInfo ii, db_stuTest tt
			where ii.num = tt.num
					and ii.name = '둘리';
			
-- 셀프 조인 : 하나의 테이블을 조인(반드시 별명 필요)
	select * from db_stuInfo ii1, db_stuInfo ii2;
	
	-- 대상에 대한 친구 정보(친구가 Null인 결과는 무시됨)
	select ii1.name as "대상", ii1.friend as "대상의 친구",
			ii2.* from db_stuInfo ii1, db_stuInfo ii2
			where ii1.friend = ii2.name;

-- 서브쿼리의 이용

	-- 총점이 296점인 학생의 이름과 취미생활
	select * from db_stuInfo 
		where num = (select num from db_stuTest where total=296);
			
	-- 이름이 둘리인 학생의 성적 정보
	select * from db_stuTest 
		where num = (select num from db_stuInfo where name='둘리');
	
	-- 평균이 90점 이상인 학생들의 개인 정보
	
	-- 방법1.
	select ii.* from db_stuInfo ii, 
		(select num from db_stuTest where avg>=90) tt
			where ii.num = tt.num;
			
	-- 방법2.
	select * from db_stuInfo
		where num in (select num from db_stuTest where avg>=90);
		
	-- 방법3.
	select ii.* from db_stuInfo ii, db_stuTest tt
		where ii.num = tt.num
		and tt.avg >= 90;
		
	-- 방법4.
		select ttt.avg, ii.* from db_stuInfo ii,
			(select tt.num, tt.avg from db_stuInfo ii, db_stuTest tt
				where (ii.num = tt.num) and avg>=90) ttt
					where ii.num = ttt.num;
			
-- 둘리의 친구의 총점 찾기

	
					
					
					
					
					
					