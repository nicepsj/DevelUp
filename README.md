# DevelUp

#오라클 테이블 사용

___________________________________________________________________________________________________________________________________________
# 협력업체 테이블
create table cooperation(
name varchar2(30) primary key,
addr varchar2(300),
content varchar2(500),
tel varchar2(30),
email varchar2(100));


# 협력업체 거래요청 게시판
create table recycle_board(
no number primary key,
send_id varchar2(30),
receive_id varchar2(30),
write_date date,
title varchar2(500),
content varchar2(1000));

# 협력업체 거래요청 게시판 번호용 시퀀스
create sequence recycle_seq;

# sample data
insert into cooperation values('소정자원','서울특별시 강남구 삼성로111길','#폐가전#가구#플라스틱','02-111-1111','psjjava@gmail.com');
insert into cooperation values('규민강철','경기도 용인시 처인구 명인로1길','#고철#비철#구리#폐전선#철거구','031-222-2222','diewhite9095@gmail.com');
insert into cooperation values('태원강철','대구 수성구 황금동 70길','#비철#철거#해체#고철#고물상','053-333-3333','gavikim1124@gmail.com');
insert into cooperation values('경민강철','부산광역시 해운대로 123','#철거#고가매입#고물상#고철','051-444-4444','chjk3200620@gmail.com');
insert into cooperation values('성민자원','제주 오도11길','#고철#폐지#비철#기타재활용품','064-555-5555','sadlzn77@gmail.com');
insert into cooperation values('윤희자원','전라북도 전주시 송천동 33길','#고철#고철#비철#파지#헌옷','063-666-6666','yoonhee010@gmail.com');

___________________________________________________________________________________________________________________________________________

# 멤버 테이블 만들기
create table member2(
member_no number ,
member_id varchar2(20) primary key ,
member_pw varchar2(30) ,
member_name varchar2(15) ,
zipcode varchar2(7) ,
member_addr1 varchar2(50) ,
member_addr2 varchar2(50) ,
member_phone varchar2(13) ,
member_email varchar2(40) ,
member_role varchar2(20) ,
member_date date ,
member_sign varchar2(20)
);
  
# 멤버테이블 시퀀스
create sequence member_no;

# 회원 data
insert into member2 values(member_no.nextval,'admin','1234','관리자','222346',
'대구광역시 황금로','13길','010-111-2222','Devel-Up@gmail.com','99','2023/01/01','가입');
insert into member2 values(member_no.nextval,'park','1234','박소정','224567',
'서울시 강남구 삼성로','111길 ','010-1311-2222','psjsub1@gmail.com','1','1990/10/01','가입');
insert into member2 values(member_no.nextval,'new','1234','뉴진스','224123',
'경기도 분당구 야탑로','121길 ','010-1111-2222','jeans@naver.com','1','1990/10/01','가입');
insert into member2 values(member_no.nextval,'kim','1234','김사수','224123',
'부산광역시 광안리','121길 ','010-1111-2222','kim@naver.com','1',to_date(sysdate, 'YYYY-MM-DD'),'가입');
insert into member2 values(member_no.nextval,'lee','1234','이민정','224123',
'제주도 오솔길','121길 ','010-1111-2222','lee@naver.com','1',to_date(sysdate, 'YYYY-MM-DD'),'가입');
insert into member2 values(member_no.nextval,'song','1234','송혜교','224123',
'전라북도 전주시','121길 ','010-1111-2222','song@naver.com','1',to_date(sysdate, 'YYYY-MM-DD'),'가입');
insert into member2 values(member_no.nextval,'choi','1234','최수종','224123',
'전라북도 전주시','121길 ','010-1111-2222','choi@naver.com','1',to_date(sysdate, 'YYYY-MM-DD'),'탈퇴');

insert into member2 values(member_no.nextval,'소정자원','1234','소정자원','222346',
'서울특별시 강남구','삼성로 111길','02-111-1111','psjjava@gmail.com','2','2023/01/01','가입');
insert into member2 values(member_no.nextval,'규민강철','1234','규민강철','222346',
'경기도 용인시 처인구','명인로1길','031-222-2222','diewhite9095@gmail.com','2','2023/01/01','가입');
insert into member2 values(member_no.nextval,'태원강철','1234','태원강철','222346',
'대구 수성구 황금동','70길','053-333-3333','gavikim1124@gmail.com','2','2023/01/01','가입');
insert into member2 values(member_no.nextval,'경민강철','1234','경민강철','222346',
'부산광역시','해운대로 123','051-444-4444','chjk3200620@gmail.com','2','2023/01/01','가입');
insert into member2 values(member_no.nextval,'성민강철','1234','성민강철','222346',
'제주특별시','오도 11길','064-555-5555','sadlzn77@gmail.com','2','2023/01/01','가입');
insert into member2 values(member_no.nextval,'윤희자원','1234','성민강철','222346',
'제주특별시','오도 11길','064-555-5555','sadlzn77@gmail.com','2','2023/01/01','가입');

___________________________________________________________________________________________________________________________________________


# 거래테이블
create table deal_table2(        
        deal_number number primary key,
        member_id varchar2(20),
        dealType varchar2(30),
        product_category varchar2(20),
        product_state varchar2(30),
        board_title varchar2(100),
        product_price number,
        board_content varchar2(2000),
        hits number,
        write_date date,
        buyer_id varchar2(20));


# 중고거래 파일업로드 테이블
create table deal_file(
        deal_number number,
        originalFilename varchar2(100),
        storeFilename varchar2(100),        
        dealfile_number number
);


# 특수문자 insert를 위함
SET DEFINE OFF;


# 데이터
insert into deal_table2 values(deal_no2.nextval, 'park', '중고', '유아동', '판매중', '아기 모빌 팝니다.', 30000, '몇번 사용안하여 상태 좋습니다. 쪽지주세요~', 0, (to_date('2023-01-01','YYYY-MM-DD')),0);
insert into deal_table2 values(deal_no2.nextval, 'park', '나눔', '디지털&가전', '판매중', '무선 마우스 나눔해요', 0, '반응속도가 저랑 맞지않아 나눔합니다.. 쪽지주세요~', 0, (to_date('2022-12-22','YYYY-MM-DD')),0);
insert into deal_table2 values(deal_no2.nextval, 'new', '중고', '디지털&가전', '판매중', '샤오미 가습기 판매합니다.', 100000, '분무 잘되고, 건조한 날씨 언능 준비하셔요~. 쪽지주세요~', 0, (to_date('2023-01-02','YYYY-MM-DD')), 0);
insert into deal_table2 values(deal_no2.nextval, new', '중고', '남성의류', '판매중', '아디다스 져지팝니다', 25000, '사이즈가 맞지않아 판매합니다. 메리크리스마스~ 쪽지주세요~', 0, (to_date('2022-12-25','YYYY-MM-DD')),0);
insert into deal_table2 values(deal_no2.nextval, 'kim', '중고', '여성의류', '판매중', '디스커버리 흰색롱패딩 미개봉팝니다.', 500000, '잘못주문하여 하나 판매하게 되었습니다. 쪽지주세요~', 0, (to_date('2022-12-29','YYYY-MM-DD')),0);
insert into deal_table2 values(deal_no2.nextval, 'kim', '나눔', '반려동물용품', '판매중', '강아지 목줄 나눔해요', 0, '너무많이 주문해버렸네요. 소형견 키우시는분 쪽지주세요~', 0, (to_date('2022-01-01','YYYY-MM-DD')),0);
insert into deal_table2 values(deal_no2.nextval, 'lee', '중고', '뷰티&미용', '판매중', '샹테카이 울트라 썬 프로텍션 SPF45 PA+++ 썬크림 판매합니다.', 70000, '샹테카이 울트라 썬 프로텍션 SPF45 PA+++ 썬크림 여유있게 선물받아 판매합니다.. 쪽지주세요~', 0, (to_date('2022-01-04','YYYY-MM-DD')), 0);
insert into deal_table2 values(deal_no2.nextval, 'lee', '중고', '반려동물용품', '판매중', '파란색 후리스 L ', 10000, '처분합니다. 쪽지주세요', 0, (to_date('2022-01-10','YYYY-MM-DD')), 0);
insert into deal_table2 values(deal_no2.nextval, 'song', '중고', '디지털&가전', '판매중', '아이폰5 a급', 250000, '급처합니다. 쪽지주세요', 0, (to_date('2022-01-12','YYYY-MM-DD')), 0);
insert into deal_table2 values(deal_no2.nextval, 'song', '중고', '디지털&가전', '판매중', '삼성 다리미 처분합니다', 30000, '급처합니다. 쪽지주세요', 0, (to_date('2022-01-12','YYYY-MM-DD')), 0);
insert into deal_table2 values(deal_no2.nextval, 'park', '나눔', '유아동', '판매중', '아기 유모차 나눔해요.', 0, '필요하신분쪽지주세요. 분당입니다.', 0, (to_date('2022-12-19','YYYY-MM-DD')), 0);
insert into deal_table2 values(deal_no2.nextval, 'new', '중고', '게임&취미', '판매중', 'ps4 팝니다.', 0, '필요하신분쪽지주세요. 분당입니다.', 250000, (to_date('2023-01-15','YYYY-MM-DD')), 0);
insert into deal_table2 values(deal_no2.nextval, 'kim', '나눔', '기타', '판매중', '사용치 않는 아기동화책', 0, '필요하신분쪽지주세요. 분당입니다.', 0, (to_date('2023-01-15','YYYY-MM-DD')),0);
insert into deal_table2 values(deal_no2.nextval, 'lee', '중고', '여성잡화', '판매중', '미개봉) 구찌스니커즈 245사이즈 ', 15000, '필요하신분쪽지주세요. 분당입니다.', 0, (to_date('2023-01-15','YYYY-MM-DD')), 0);


========================================================== 글번호 수동 + 판매자 수정 ==============================================================================

insert into deal_table2 values(1, 'park', '중고', '유아동', '판매중', '아기 모빌 팝니다.', 30000, '몇번 사용안하여 상태 좋습니다. 쪽지주세요~', 0, (to_date('2023-01-01','YYYY-MM-DD')),0);
insert into deal_table2 values(2, 'park', '나눔', '디지털&가전', '판매중', '무선 마우스 나눔해요', 0, '반응속도가 저랑 맞지않아 나눔합니다.. 쪽지주세요~', 0, (to_date('2022-12-22','YYYY-MM-DD')),0);
insert into deal_table2 values(3, 'new', '중고', '디지털&가전', '판매중', '샤오미 가습기 판매합니다.', 100000, '분무 잘되고, 건조한 날씨 언능 준비하셔요~. 쪽지주세요~', 0, (to_date('2023-01-02','YYYY-MM-DD')), 0);
insert into deal_table2 values(4, new', '중고', '남성의류', '판매중', '아디다스 져지팝니다', 25000, '사이즈가 맞지않아 판매합니다. 메리크리스마스~ 쪽지주세요~', 0, (to_date('2022-12-25','YYYY-MM-DD')),0);
insert into deal_table2 values(5, 'kim', '중고', '여성의류', '판매중', '디스커버리 흰색롱패딩 미개봉팝니다.', 500000, '잘못주문하여 하나 판매하게 되었습니다. 쪽지주세요~', 0, (to_date('2022-12-29','YYYY-MM-DD')),0);
insert into deal_table2 values(6, 'kim', '나눔', '반려동물용품', '판매중', '강아지 목줄 나눔해요', 0, '너무많이 주문해버렸네요. 소형견 키우시는분 쪽지주세요~', 0, (to_date('2022-01-01','YYYY-MM-DD')),0);
insert into deal_table2 values(7, 'lee', '중고', '뷰티&미용', '판매중', '샹테카이 울트라 썬 프로텍션 SPF45 PA+++ 썬크림 판매합니다.', 70000, '샹테카이 울트라 썬 프로텍션 SPF45 PA+++ 썬크림 여유있게 선물받아 판매합니다.. 쪽지주세요~', 0, (to_date('2022-01-04','YYYY-MM-DD')), 0);
insert into deal_table2 values(8, 'lee', '중고', '반려동물용품', '판매중', '파란색 후리스 L ', 10000, '처분합니다. 쪽지주세요', 0, (to_date('2022-01-10','YYYY-MM-DD')), 0);
insert into deal_table2 values(9, 'song', '중고', '디지털&가전', '판매중', '아이폰5 a급', 250000, '급처합니다. 쪽지주세요', 0, (to_date('2022-01-12','YYYY-MM-DD')), 0);
insert into deal_table2 values(10, 'song', '중고', '디지털&가전', '판매중', '삼성 다리미 처분합니다', 30000, '급처합니다. 쪽지주세요', 0, (to_date('2022-01-12','YYYY-MM-DD')), 0);
insert into deal_table2 values(11, 'park', '나눔', '유아동', '판매중', '아기 유모차 나눔해요.', 0, '필요하신분쪽지주세요. 분당입니다.', 0, (to_date('2022-12-19','YYYY-MM-DD')), 0);
insert into deal_table2 values(12, 'new', '중고', '게임&취미', '판매중', 'ps4 팝니다.', 250000, '필요하신분쪽지주세요. 분당입니다.', 0, (to_date('2023-01-15','YYYY-MM-DD')), 0);
insert into deal_table2 values(13, 'kim', '나눔', '기타', '판매중', '사용치 않는 아기동화책', 0, '필요하신분쪽지주세요. 분당입니다.', 0, (to_date('2023-01-15','YYYY-MM-DD')),0);
insert into deal_table2 values(14, 'lee', '중고', '여성잡화', '판매중', '미개봉) 구찌스니커즈 245사이즈 ', 15000, '필요하신분쪽지주세요. 분당입니다.', 0, (to_date('2023-01-15','YYYY-MM-DD')), 0);



___________________________________________________________________________________________________________________________________________



# 쪽지 테이블
create table note(
   no number(20),
   send_id varchar2(30),
   receive_id varchar2(30),
   send_time date,
   read_time date,
   content varchar2(1000),
   read_chk number(10));

# 시퀀스생성
create sequence note_seq;

# 데이터
insert into note values(note_seq.nextval,'song','park',sysdate,null,'안녕하세요 구매가능한가요?',1);
insert into note values(note_seq.nextval,'park','song',sysdate,null,'안녕하세요! 네 구매가능하세요!',1);
insert into note values(note_seq.nextval,'song','park',sysdate,null,'시간언제괜찮으실까요',1);
insert into note values(note_seq.nextval,'park','song',sysdate,null,'아무때나 가능합니다',1);
insert into note values(note_seq.nextval,'song','park',sysdate,null,'내일 오후 2시에 거래하시죠',1);
insert into note values(note_seq.nextval,'park','song',sysdate,null,'좋습니다!',1);
insert into note values(note_seq.nextval,'kim','park',sysdate,null,'팔렸나요?',1);
insert into note values(note_seq.nextval,'lee','park',sysdate,null,'안녕하세요~',1);
insert into note values(note_seq.nextval,'new','park',sysdate,null,'HYPEBOY!',1);


# alter table note
add constraint no_pk primary key(no);



___________________________________________________________________________________________________________________________________________

#  거래요청 테이블 생성 
create table dealreq(
dealreq_no number primary key,
seller_id varchar2(20),
buyer_id  varchar2(20),
req_id varchar2(20),
req_time date,
deal_number number not null,
CONSTRAINT fk_dealreq foreign key(deal_number) references deal_table2 (deal_number)
ON DELETE CASCADE
);


// 3. 시퀀스 추가 
create sequence dealreq_no;



# 데이터

insert into dealreq values(
1, 'park', null, 'test1',to_date(sysdate, 'YYYY-MM-DD'), 1);

insert into dealreq values(
dealreq_no.nextval, 'park', null, 'new',to_date(sysdate, 'YYYY-MM-DD'), 2);

insert into dealreq values(
dealreq_no.nextval, 'test1', null, 'park',to_date(sysdate, 'YYYY-MM-DD'), 3);



# 테스트 시나리오 
로그인 > 다른 아이디로 작성된 중고거래게시물 > 거래요청 버튼 클릭




# 글번호 1번에 대한 거래요청 (판매자 : park) 
insert into dealreq values(
dealreq_no.nextval, 'park', null, 'kim',to_date(sysdate, 'YYYY-MM-DD'), 1);
insert into dealreq values(
dealreq_no.nextval, 'park', null, 'lee',to_date(sysdate, 'YYYY-MM-DD'), 1);
insert into dealreq values(
dealreq_no.nextval, 'park', null, 'new',to_date(sysdate, 'YYYY-MM-DD'), 1);
insert into dealreq values(
dealreq_no.nextval, 'park', null, 'lee',to_date(sysdate, 'YYYY-MM-DD'), 1);


# 결제 테이블 
create table payment (
seller_id varchar2(20),
buyer_id varchar2(20),
board_number number, 
pay_number number primary key,
product_price number,
pay_date date,
pay_state varchar2(30),
auction_number number
);


# 시퀀스 생성 
create sequence pay_number; 

# fk키 설정 - buyer_id
alter table payment add CONSTRAINT payseller_FK 
FOREIGN KEY(buyer_id) REFERENCES member2(member_id)
ON DELETE CASCADE; 


# fk키 설정 - board_number
alter table payment add CONSTRAINT boardnum_FK 
FOREIGN KEY(board_number) REFERENCES deal_table2(deal_number)
ON DELETE CASCADE; 

# fk키 설정 - auction_number
alter table payment add CONSTRAINT auctionnum_FK 
FOREIGN KEY(auction_number) REFERENCES auction_table(auction_number)
ON DELETE CASCADE; 


___________________________________________________________________________________________________________________________________________


# 경매테이블
create table auction_table(
auction_number number primary key,
member_id varchar2(20),
auction_category varchar2(20),
auction_state varchar2(20), 
auction_title varchar2(100),
hits number,
board_content varchar2(1000),        
list_photo varchar2(100),
min_price varchar2(30),
start_price varchar2(30),
end_price varchar2(30),
write_date date,
end_date date,
current_price varchar2(30)
);

# 경매 입찰 테이블
create table auction_bid(
auction_number number,
add_user varchar2(20),
add_price number,
add_time timestamp
);


# 경매테이블시퀀스
create sequence auction_number;


#특수문자 insert를 위함
SET DEFINE OFF;



#데이터
insert into auction_table values(auction_number.nextval,'test1','가전','경매중','청소기팝니다',0,sysdate,'12cmx5cmx30cm','123456.png','1000','10000',null,sysdate+(interval '72' hour),0);
insert into auction_table values(auction_number.nextval,'park','여성의류','경매중','옷팝니다',0,sysdate,'12cmx5cmx30cm','234567.png','500','5000',null,sysdate+(interval '72' hour),0);
insert into auction_table values(auction_number.nextval,'new','기타','경매중','신세계',0,sysdate,'12cmx5cmx30cm','345678.png','2000','30000',null,sysdate+(interval '72' hour),0);
insert into auction_table values(auction_number.nextval,'test2','여성의류','경매중','20년 f/w시즌 단종된 원피스 ',0,sysdate,'12cmx5cmx30cm','345678.png','2000','30000',null,sysdate+(interval '72' hour),0);


# 글번호 수동 + 판매자 수정

insert into auction_table values(
'1','song','가구','경매중','더이상 안쓰는 옷장 팝니다',0,'2000x3000x1000',
'auction1.jpg',5000,70000,0,sysdate,sysdate+(interval '72' hour),0
);

insert into auction_table values(
'2','park','예술품','경매중','조선시대 그림 팔아요',0,'500x30x30',
'auction2.jpg',1200,1200,0,sysdate,sysdate+(interval '72' hour),0
);

insert into auction_table values(
'3','song','컴퓨터','경매중','성능좋은컴퓨터팝니다',0,'203x30x60',
'auction3.jpg',100,600,0,sysdate,sysdate+(interval '72' hour),0
);

insert into auction_table values(
'4','lee','예술품','경매중','르네상스시절같은 조각상팔아요',0,'20x30x10',
'auction4.jpg',4000,4000,0,sysdate,sysdate+(interval '72' hour),0
);

insert into auction_table values(
'5','park','수상물품','경매중','태권도 금메달 팝니다.',0,'40x78x1',
'auction5.jpg',200,1100,0,sysdate,sysdate+(interval '72' hour),0
);


# 테이블 부분추가
alter table auction_table add(current_price varchar2(30));
commit;


