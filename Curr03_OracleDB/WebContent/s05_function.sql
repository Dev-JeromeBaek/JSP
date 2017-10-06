
-- 숫자 처리 관련 함수
	-- 평균의 소수점을 3자리까지 노출되는 반올림으로 출력
	select name, round(avg, 3) from db_stuEx;
	
	-- 나머지 값 반환 : mod(n1, n2) - n1을 n2로 나눈 후 나머지
	select mod(5, 2) from dual;
	
	-- from dual : 테이블과 상관없이 명령하여 연산하고 싶을때!

	-- 짝수 학년의 모든 정보 출력
	select gradeH, gradeB, name, avg from db_stuEx
		where mod(gradeH, 2)=0;
	
	-- 숫자 출력 형식 관련 함수
		-- 1. 결과 : 1234.000
		select to_char(1234, '999999.999') from dual;
								-- ↑패턴
	
		-- 2. 결과 : 0001234.000
		select to_char(1234, '0000000.000') from dual;
		
	-- 순위 산출 : rank() over(order by *)
		-- 결과 : 평균이 높은 것 부터 등수가 들어간다! 
	select name, avg, rank() over(order by avg desc)
			from db_stuEx;
			
		-- 위의 결과에서 null값 제외하기
		select name, avg, rank() over(order by avg desc)
				from db_stuEx where avg is not null;
	
	-- 합계 : sum() : 학년별로 국어점수의 총계를 구할거다!
	select gradeH, sum(kor) from db_stuEx group by gradeH;
	
	-- 평균 : avg()
	select gradeH, avg(kor), avg(eng), avg(math)
			from db_stuEx group by gradeH;
			
	-- 글자 길이
	select length('가나다') from dual;
	
	-- 문자열의 앞, 뒤의 공백을 제거
	select length('           a           b       cd      e ') from dual;
	select trim('           a           b       cd      e ') from dual;
	
	-- a~e까지의 길이만 확인한다!
	select length(trim('           a           b       cd      e ')) from dual;
		
-- 날짜 처리 관련 함수

	-- 날짜 정보 보기
	select sysdate from dual;
	
	-- 연도, 월, 일
	select extract(year from sysdate),
			extract(month from sysdate),
			extract(day from sysdate) from dual;
	
	-- 요일(일:1 ~ 토:7)
	select to_char(sysdate, 'D') from dual;
						  -- ↑ 패턴! 요일을 보겠다!
						  
	-- 시간, 분, 초
	select to_char(sysdate, 'hh24'),
			to_char(sysdate, 'mi'),
			to_char(sysdate, 'ss') from dueal;
			
	select to_char(sysdate, 'hh24:mi:ss') from dual;
	select to_char(sysdate, 'hh24"시" mi"분" ss"초"') from dual;
	
	-- 분기
	select to_char(sysdate, 'q') from dual;
	
	-- db_date 테이블의 분기 확인
	select * from db_date;
	select num, savedate, to_char(savedate, 'q') from db_date;
	
	-- *일 후 날짜
	select sysdate+2 from dual;
	
	-- *개월 후 날짜
	select add_months(sysdate, 3) from dual;
	
	-- 날짜 정보 입력() : String으로 입력하려는 경우
		-- (생일, 날짜상황을 지정하는경우, 등등.. 사용 
		-- /sysdate를 제외한 상황(오늘날짜가아닌 다른날짜를 입력하고싶을 떄))
	insert into db_date
		values(db_date_seq.nextval,
				to_date('2017/02/03 01:01:02','rrrr/mm/dd hh24:mi:ss'));
	
	-- 날짜 간 차이(월 단위 로 반환)
	select months_between(sysdate, savedate) 
			as "오늘과 savedate간 차이(월단위)",
			savedate from db_date;
	
	-- 날짜 간 차이(일 단위로 반환) 찾아보기!!!!!!!!!!!!!!!!!!!!!!!!!
	
			
	select * from db_stuEx;
	
	