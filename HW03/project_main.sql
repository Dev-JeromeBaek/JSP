-------------------------------------------------------------------
-- [일반 회원]

create table dasam_mem(
	m_num		number(5,0) 	not null,	-- 회원번호
	m_id 		VARCHAR2(200) 	not null,	-- 아이디
	m_pw 		VARCHAR2(200) 	not null,	-- 비밀번호
	m_name 		VARCHAR2(200) 	not null,	-- 이름
	m_addr 		VARCHAR2(600) 	not null,	-- 주소
	m_phone 	VARCHAR2(200) 	not null,	-- 핸드폰
	m_gender 	VARCHAR2(200) 	not null,	-- 성별
	m_ox 		VARCHAR2(200) 	not null,	-- 접속여부	: 초기값 (x)
	m_memo		VARCHAR2(800) 	not null,	-- 메모		: 초기값 ("")
	m_grade		number(3,0)		not null,	-- 등급		: 초기값 (5)
	m_point		number(6,0)		not null,	-- 포인트		: 초기값 (0)
	m_logcount	number(6,0)		not null,	-- 로그인 횟수	: 초치값 (0)
	m_date		Date			not null	-- 가입날짜
);

create sequence dasam_mem_seq;


-------------------------------------------------------------------
-- [기업 회원]

create table dasam_corp(
	c_num		number(5,0)		not null,	-- 기업 번호
	c_bn		varchar2(200)	not null,	-- 사업자번호
	c_pw		varchar2(200)	not null,	-- 비밀번호
	c_name		varchar2(300)	not null,	-- 회사명
	c_ceo		varchar2(200)	not null,	-- 대표자 성명
	c_tel		varchar2(200)	not null,	-- 회사 전화번호
	c_phone		varchar2(200)	not null,	-- 핸드폰 번호
	c_addr		varchar2(600)	not null,	-- 회사 주소
	c_grade		number(3,0)		not null,	-- 등급
	c_date		Date			not null	-- 가입날짜
);

create sequence dasam_corp_seq;


-------------------------------------------------------------------
-- [딜(상품) 정보]

create table dasam_deal_info(
	di_num		number(5,0)		not null,	-- 딜(상품) 번호
	di_name		varchar2(200)	not null,	-- 딜(상품) 이름
	di_category	varchar2(400)	not null,	-- 딜(상품) 종류
	di_orgname	varchar2(200)	not null,	-- 딜(상품) 사진 오리지널 이름
	di_sysname	varchar2(200)	not null,	-- 딜(상품) 사진 시스템 이름
	di_exp		varchar2(2000)	not null,	-- 딜(상품) 설명
	di_c_num	number(5,0)		not null,	-- 기업회원 번호
	di_date		Date			not null	-- 딜(상품) 등록 날짜
);

create sequence dasam_deal_info_seq;


-------------------------------------------------------------------
-- [딜(상세) 정보]

create table dasam_deal_detail(
	dd_num		number(5,0)		not null,	-- 딜(상품) 품목 번호
	dd_name		varchar2(400)	not null,	-- 딜(상품) 품목 이름
	dd_kind		varchar2(400)	not null,	-- 딜(상품) 상세 품목 선택
	dd_price	number(10,0)	not null,	-- 딜(상품) 상세 품목 가격
	dd_amount	number(8,0)		not null,	-- 딜(상품) 상세 품목 수량
	dd_di_num	number(5,0)		not null	-- 딜(상품) 정보 번호
);

create sequence dasam_deal_detail_seq;


-------------------------------------------------------------------
-- [딜(상품) Q&A]

create table dasam_deal_qna(
	dq_num		number(5,0)		not null,	-- 딜(상품) Q&A 번호
	dq_content	varchar2(2000)	not null,	-- 딜(상품) Q&A 내용
	dq_di_num	number(5,0)		not null,	-- 딜(상품) 정보 번호
	dq_m_num	number(5,0)		not null,	-- 개인 회원 번호
	dq_date		Date			not null,	-- 딜(상품) Q&A 등록 날짜
	dq_ans		varchar2(2000),				-- 딜(상품) Q&A 답변
	dq_ans_date	Date						-- 딜(상품) Q&A 답변 날짜
);

create sequence dasam_deal_qna_seq;


-------------------------------------------------------------------
-- [딜(상품) 후기]

create table dasam_deal_review(
	dr_num		number(5,0)		not null,	-- 딜(상품) 후기 번호
	dr_title	varchar2(1000)	not null,	-- 딜(상품) 후기 제목
	dr_content	varchar2(2000)	not null,	-- 딜(상품) 후기 내용
	dr_score	number(3,0)		not null,	-- 딜(상품) 평점
	dr_di_num	number(5,0)		not null,	-- 딜(상품) 정보 번호
	dr_m_num	number(5,0)		not null,	-- 개인 회원 번호
	dr_date		Date			not null	-- 딜(상품) 후기 등록 날짜
);

create sequence dasam_deal_revice_seq;


-------------------------------------------------------------------
-- [공지사항]

create table dasam_notice(
	notice_num		number(5,0)		not null,	-- 공지사항 글 번호
	notice_writer	varchar2(400)	not null,	-- 공지사항 글 작성자
	notice_title	varchar2(1000)	not null,	-- 공지사항 글 제목
	notice_content	varchar2(2000)	not null,	-- 공지사항 글 내용
	notice_date		Date			not null	-- 공지사항 글 작성 날짜
);


create sequence dasam_notice_seq;

);

-------------------------------------------------------------------
-- [1:1문의]

create table dasam_qna(
	q_num		number(5,0)		not null,	-- Q&A 글 번호
	q_title		varchar2(1000)	not null,	-- Q&A 글 제목
	q_content	varchar2(2000)	not null,	-- Q&A 글 내용
	q_select	varchar2(400)	not null,	-- Q&A 종류 분류
	q_m_num		number(5,0)		not null,	-- Q&A 작성한 개인회원 번호
	q_m_id		varchar2(200)	not null,	-- Q&A 작성한 개인회원 아이디
	q_date		Date			not null,	-- Q&A 작성날짜
	q_ans		varchar2(2000)	not null,	-- Q&A 답변 내용
	q_ans_date	Date			not null	-- Q&A 답변 작성 날짜
);


create sequence dasam_qna_seq;

);

-------------------------------------------------------------------
-- [구매 내역]

create table dasam_buy(
	b_num		number(5,0)		not null,	-- 구매 번호
	b_m_num		number(5,0)		not null,	-- 구매자 번호(회원 번호)
	b_di_num	number(5,0)		not null,	-- 구매한 딜(상품) 번호
	b_di_name	varchar2(400)	not null,	-- 구마핸 딜(상품) 이름
	b_dd_num	number(5,0)		not null,	-- 구매한 상품 상세품목 번호
	b_amount	number(8,0)		not null,	-- 구매한 상품 수량
	b_price		number(10,0)	not null,	-- 구매한 상품 가격
	b_status	varchar2(200)	not null,	-- 구매내역 현재 상태
	b_date		Date			not null	-- 구매한 날짜
);

create sequence dasam_buy_seq;


-------------------------------------------------------------------
-- [장바구니]

create table dasam_cart(
	cart_num		number(5,0)		not null,	-- 장바구니 번호
	cart_di_num		number(5,0)		not null,	-- 딜(상품) 번호
	cart_dd_num		number(5,0)		not null,	-- 딜(상품) 상세번호
	cart_amount		number(8,0)		not null,	-- 딜(상품) 상세품목 수량
	cart_price		number(10,0)	not null,	-- 딜(상품) 상세번호 * 상세품목 수량
	cart_m_num		number(5,0)		not null	-- 장바구니를 이용하는 회원번호
);

create sequence dasam_cart_seq;
