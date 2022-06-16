--------------------------------------------------------
--  파일이 생성됨 - 목요일-6월-16-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence FORUM_SEQ_BNO
--------------------------------------------------------

   CREATE SEQUENCE  "RAFFLE"."FORUM_SEQ_BNO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MEMBER_SEQ_MEMBERNO
--------------------------------------------------------

   CREATE SEQUENCE  "RAFFLE"."MEMBER_SEQ_MEMBERNO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence NOTICE_SEQ_BNO
--------------------------------------------------------

   CREATE SEQUENCE  "RAFFLE"."NOTICE_SEQ_BNO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence RESELL_R_SEQ_RESELL_RNO
--------------------------------------------------------

   CREATE SEQUENCE  "RAFFLE"."RESELL_R_SEQ_RESELL_RNO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SELL_R_SEQ_SELL_RNO
--------------------------------------------------------

   CREATE SEQUENCE  "RAFFLE"."SELL_R_SEQ_SELL_RNO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table FORUM
--------------------------------------------------------

  CREATE TABLE "RAFFLE"."FORUM" 
   (	"BNO" NUMBER(10,0), 
	"TITLE" VARCHAR2(200 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"USERNAME" VARCHAR2(50 BYTE), 
	"REGDATE" DATE DEFAULT SYSDATE, 
	"VIEWCNT" NUMBER(10,0) DEFAULT 0, 
	"MEMBERNO" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "RAFFLE"."MEMBER" 
   (	"MEMBERNO" NUMBER(10,0), 
	"USERID" VARCHAR2(2000 BYTE), 
	"PASSWD" VARCHAR2(2000 BYTE), 
	"USERNAME" VARCHAR2(2000 BYTE), 
	"POST" VARCHAR2(100 BYTE), 
	"ADDR1" VARCHAR2(500 BYTE), 
	"ADDR2" VARCHAR2(500 BYTE), 
	"PHONE" VARCHAR2(20 BYTE), 
	"BIRTH" VARCHAR2(10 BYTE), 
	"EMAIL" VARCHAR2(2000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "RAFFLE"."NOTICE" 
   (	"BNO" NUMBER(10,0), 
	"TITLE" VARCHAR2(200 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"USERNAME" VARCHAR2(50 BYTE), 
	"REGDATE" DATE DEFAULT SYSDATE, 
	"VIEWCNT" NUMBER(10,0) DEFAULT 0, 
	"MEMBERNO" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table RESELL_R
--------------------------------------------------------

  CREATE TABLE "RAFFLE"."RESELL_R" 
   (	"RESELL_RNO" NUMBER(6,0), 
	"MEMBERNO" NUMBER(10,0), 
	"NICKNAME" VARCHAR2(100 BYTE), 
	"RAFFLENAME" VARCHAR2(50 BYTE), 
	"TOTAL_PRICE" VARCHAR2(10 BYTE), 
	"ATTEND_AMOUNT" VARCHAR2(20 BYTE), 
	"PER_PRICE" VARCHAR2(10 BYTE), 
	"VIEWCNT" NUMBER(10,0), 
	"DEADLINE" DATE, 
	"TEXT" VARCHAR2(500 BYTE), 
	"IMAGE" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table RSPOT
--------------------------------------------------------

  CREATE TABLE "RAFFLE"."RSPOT" 
   (	"RESELL_RNO" NUMBER(10,0), 
	"MEMBERNO" NUMBER(10,0), 
	"RAFFLENAME" VARCHAR2(20 BYTE), 
	"USERNAME" VARCHAR2(10 BYTE), 
	"POST" VARCHAR2(6 BYTE), 
	"ADDR1" VARCHAR2(500 BYTE), 
	"ADDR2" VARCHAR2(500 BYTE), 
	"PHONE" VARCHAR2(20 BYTE), 
	"SPOT" NUMBER(4,0), 
	"VIEWCNT" NUMBER(10,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table RWINNING
--------------------------------------------------------

  CREATE TABLE "RAFFLE"."RWINNING" 
   (	"RESELL_RNO" NUMBER(10,0), 
	"NICKNAME" VARCHAR2(100 BYTE), 
	"USERNAME" VARCHAR2(10 BYTE), 
	"POST" VARCHAR2(6 BYTE), 
	"ADDR1" VARCHAR2(500 BYTE), 
	"ADDR2" VARCHAR2(500 BYTE), 
	"PHONE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SELL_R
--------------------------------------------------------

  CREATE TABLE "RAFFLE"."SELL_R" 
   (	"SELL_RNO" NUMBER(6,0), 
	"MEMBERNO" NUMBER(10,0), 
	"NICKNAME" VARCHAR2(100 BYTE), 
	"RAFFLENAME" VARCHAR2(50 BYTE), 
	"RAFFLEPRICE" VARCHAR2(10 BYTE), 
	"RAFFLEAMOUNT" VARCHAR2(20 BYTE), 
	"VIEWCNT" NUMBER(10,0), 
	"TEXT" VARCHAR2(500 BYTE), 
	"DEADLINE" DATE, 
	"IMAGE" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SSPOT
--------------------------------------------------------

  CREATE TABLE "RAFFLE"."SSPOT" 
   (	"SELL_RNO" NUMBER(10,0), 
	"MEMBERNO" NUMBER(10,0), 
	"RAFFLENAME" VARCHAR2(20 BYTE), 
	"USERNAME" VARCHAR2(10 BYTE), 
	"POST" VARCHAR2(6 BYTE), 
	"ADDR1" VARCHAR2(500 BYTE), 
	"ADDR2" VARCHAR2(500 BYTE), 
	"PHONE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SWINNING
--------------------------------------------------------

  CREATE TABLE "RAFFLE"."SWINNING" 
   (	"SELL_RNO" NUMBER(10,0), 
	"NICKNAME" VARCHAR2(100 BYTE), 
	"USERNAME" VARCHAR2(10 BYTE), 
	"POST" VARCHAR2(6 BYTE), 
	"ADDR1" VARCHAR2(500 BYTE), 
	"ADDR2" VARCHAR2(500 BYTE), 
	"PHONE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into RAFFLE.FORUM
SET DEFINE OFF;
REM INSERTING into RAFFLE.MEMBER
SET DEFINE OFF;
Insert into RAFFLE.MEMBER (MEMBERNO,USERID,PASSWD,USERNAME,POST,ADDR1,ADDR2,PHONE,BIRTH,EMAIL) values (1,'1','1','1','1','1','1','1','1','1');
Insert into RAFFLE.MEMBER (MEMBERNO,USERID,PASSWD,USERNAME,POST,ADDR1,ADDR2,PHONE,BIRTH,EMAIL) values (2,'2','2','2','2','2','2','2','2','2');
Insert into RAFFLE.MEMBER (MEMBERNO,USERID,PASSWD,USERNAME,POST,ADDR1,ADDR2,PHONE,BIRTH,EMAIL) values (0,'admin','admin1','admin','06234','서울 강남구 테헤란로 124 (역삼동)','5층 1강의실','01000000000','1900-01-01','admin@admin.com');
REM INSERTING into RAFFLE.NOTICE
SET DEFINE OFF;
Insert into RAFFLE.NOTICE (BNO,TITLE,CONTENT,USERNAME,REGDATE,VIEWCNT,MEMBERNO) values (1,'공지사항','공지사항입니다.','admin',to_date('22/06/15','RR/MM/DD'),0,0);
Insert into RAFFLE.NOTICE (BNO,TITLE,CONTENT,USERNAME,REGDATE,VIEWCNT,MEMBERNO) values (2,'&lt;공지>열심히 운영합니다','열심히 운영합니다','admin',to_date('22/06/15','RR/MM/DD'),0,0);
REM INSERTING into RAFFLE.RESELL_R
SET DEFINE OFF;
Insert into RAFFLE.RESELL_R (RESELL_RNO,MEMBERNO,NICKNAME,RAFFLENAME,TOTAL_PRICE,ATTEND_AMOUNT,PER_PRICE,VIEWCNT,DEADLINE,TEXT,IMAGE) values (8,1,'아디다스 이지 500 하이 슬레이트','FW4968','249700','10','2000',1000,to_date('25/06/22','RR/MM/DD'),'마치 농구화를 연상시키는 디자인으로

네오프랜 소재의 갑피가 적용되었고, 

독특하게 하이컷으로 출시된 제품입니다.

기존의 이지부스트 모델과 달리 아디프린 쿠셔닝과


오솔라이트 인솔이 적용된 이지 500 하이 모델!','img-resell-2');
Insert into RAFFLE.RESELL_R (RESELL_RNO,MEMBERNO,NICKNAME,RAFFLENAME,TOTAL_PRICE,ATTEND_AMOUNT,PER_PRICE,VIEWCNT,DEADLINE,TEXT,IMAGE) values (10,1,'아디다스 아디매틱 그린','GZ6202','129000','3','1000',666,to_date('15/06/22','RR/MM/DD'),'
최근 아디다스에서 발매한 제품 라인업 중
많은 인기를 끌고 있는 그린 컬러웨이가 적용된 아디매틱 모델입니다.','img-resell-3');
Insert into RAFFLE.RESELL_R (RESELL_RNO,MEMBERNO,NICKNAME,RAFFLENAME,TOTAL_PRICE,ATTEND_AMOUNT,PER_PRICE,VIEWCNT,DEADLINE,TEXT,IMAGE) values (11,1,'아디다스 이지부스트 700 V1 선','GZ6984','309000','3','1000',555,to_date('25/05/22','RR/MM/DD'),'
이지부스트 700 썬(SUN) 모델.
어글리 슈즈 스타일의 독특한 디자인에
이지 모델 특유의 부스트 폼 쿠셔닝이 적용되었습니다.','img-resell-4');
REM INSERTING into RAFFLE.RSPOT
SET DEFINE OFF;
Insert into RAFFLE.RSPOT (RESELL_RNO,MEMBERNO,RAFFLENAME,USERNAME,POST,ADDR1,ADDR2,PHONE,SPOT,VIEWCNT) values (6,2,'DO9406-200','2','2','2','2','2',1,0);
Insert into RAFFLE.RSPOT (RESELL_RNO,MEMBERNO,RAFFLENAME,USERNAME,POST,ADDR1,ADDR2,PHONE,SPOT,VIEWCNT) values (1,1,'CT8012-005','1','1','1','1','1',2,0);
Insert into RAFFLE.RSPOT (RESELL_RNO,MEMBERNO,RAFFLENAME,USERNAME,POST,ADDR1,ADDR2,PHONE,SPOT,VIEWCNT) values (1,2,'CT8012-005','2','2','2','2','2',0,0);
Insert into RAFFLE.RSPOT (RESELL_RNO,MEMBERNO,RAFFLENAME,USERNAME,POST,ADDR1,ADDR2,PHONE,SPOT,VIEWCNT) values (1,2,'CT8012-005','2','2','2','2','2',0,0);
Insert into RAFFLE.RSPOT (RESELL_RNO,MEMBERNO,RAFFLENAME,USERNAME,POST,ADDR1,ADDR2,PHONE,SPOT,VIEWCNT) values (4,2,'DD1391-100','2','2','2','2','2',1,0);
Insert into RAFFLE.RSPOT (RESELL_RNO,MEMBERNO,RAFFLENAME,USERNAME,POST,ADDR1,ADDR2,PHONE,SPOT,VIEWCNT) values (11,1,'GZ6984','1','1','1','1','1',1,0);
Insert into RAFFLE.RSPOT (RESELL_RNO,MEMBERNO,RAFFLENAME,USERNAME,POST,ADDR1,ADDR2,PHONE,SPOT,VIEWCNT) values (3,2,'DC7294-103','2','2','2','2','2',1,0);
REM INSERTING into RAFFLE.RWINNING
SET DEFINE OFF;
REM INSERTING into RAFFLE.SELL_R
SET DEFINE OFF;
Insert into RAFFLE.SELL_R (SELL_RNO,MEMBERNO,NICKNAME,RAFFLENAME,RAFFLEPRICE,RAFFLEAMOUNT,VIEWCNT,TEXT,DEADLINE,IMAGE) values (4,1,'에어 조던 13 델 솔','414571-167','239000','1',null,'에어조던 델 솔 13 은 한정판입니다.',to_date('01/06/22','RR/MM/DD'),'img-pro-3');
Insert into RAFFLE.SELL_R (SELL_RNO,MEMBERNO,NICKNAME,RAFFLENAME,RAFFLEPRICE,RAFFLEAMOUNT,VIEWCNT,TEXT,DEADLINE,IMAGE) values (6,1,'오프화이트 X 에어 조던 1 레트로 하이 유니버시티 블루','AQ0818-148','229000','1',null,'
버질 아블로의 오프 화이트와 나이키 조던 브랜드가
만나 탄생한 콜라보 시리즈 중 조던1 하이 유니버시티 블루 모델입니다.
조던의 모교인 노스 캐롤라이나 대학의 팀 컬러를 적용하여
조던1 OG 모델의 디테일 그대로를 살려 디자인 되었습니다.',to_date('01/06/22','RR/MM/DD'),'img-pro-5');
Insert into RAFFLE.SELL_R (SELL_RNO,MEMBERNO,NICKNAME,RAFFLENAME,RAFFLEPRICE,RAFFLEAMOUNT,VIEWCNT,TEXT,DEADLINE,IMAGE) values (7,1,'뉴발란스 550 코트 바스켓 버건디','BB550WBG','140000','1',null,'1989년도 뉴발란스의 로우탑 농구화 BB550 인라인 모델이 국내 첫 출시됩니다. 80년대 빈티지 농구화를 재해석한 ‘코트바스켓 BB550’은 80년대 바스켓슈 특유의 무드인 풀레더 어퍼와 지금은 보기 어려운 빅 사이즈 텅 라벨에 89년에 사용되었던 그래픽이 그대로 재현되어 레트로한 무드를 강조하는 것이 특징입니다.',to_date('01/06/22','RR/MM/DD'),'img-pro-6');
Insert into RAFFLE.SELL_R (SELL_RNO,MEMBERNO,NICKNAME,RAFFLENAME,RAFFLEPRICE,RAFFLEAMOUNT,VIEWCNT,TEXT,DEADLINE,IMAGE) values (9,1,'Nike SB Dunk Low Bart Simpson','BQ6817-602','120000','1',null,'2004년 호머 덩크 로우 그리고 2008년의 마지 덩크 하이에 이어서,나이키 SB에서 또다른 심슨 캐릭터인 바트 심슨으로부터 영향을 받은 나이키 덩크로우를 출시할 예정입니다. 바트 심슨의 옷으로부터 영감을 받아 제작되었습니다.',to_date('01/06/22','RR/MM/DD'),'img-pro-8');
Insert into RAFFLE.SELL_R (SELL_RNO,MEMBERNO,NICKNAME,RAFFLENAME,RAFFLEPRICE,RAFFLEAMOUNT,VIEWCNT,TEXT,DEADLINE,IMAGE) values (10,1,'아디다스 이지 부스트 350 V2 블랙 레드 2020','CP9652','289000','1',null,'다가오는 12월 아디다스 이지부스트 350 브레드 컬러웨이가 공식 재발매될 예정입니다. 2017년 발매되며 무난한 블랙 컬러 어퍼에 레드 컬러 레터링이 새겨져 대장급 컬러웨이로 불렸던 모델입니다.',to_date('01/06/22','RR/MM/DD'),'img-pro-9');
Insert into RAFFLE.SELL_R (SELL_RNO,MEMBERNO,NICKNAME,RAFFLENAME,RAFFLEPRICE,RAFFLEAMOUNT,VIEWCNT,TEXT,DEADLINE,IMAGE) values (11,1,'NIKE ADAPT HUARACHE','CT4142-710','300000','1',null,'나이키의 미래지향적인 디자인과 기술의 집약체로
계속해서 다양한 시리즈로 출시되고 있는 어댑트 시리즈.
디자인과 착화감으로 매니아층이 많은 허라치 모델로
어댑트 앱을 활용해 핏 조절 등이 가능합니다.',to_date('01/06/22','RR/MM/DD'),'img-pro-10');
REM INSERTING into RAFFLE.SSPOT
SET DEFINE OFF;
Insert into RAFFLE.SSPOT (SELL_RNO,MEMBERNO,RAFFLENAME,USERNAME,POST,ADDR1,ADDR2,PHONE) values (11,1,'CT4142-710','1','1','1','1','1');
Insert into RAFFLE.SSPOT (SELL_RNO,MEMBERNO,RAFFLENAME,USERNAME,POST,ADDR1,ADDR2,PHONE) values (10,2,'CP9652','2','2','2','2','2');
Insert into RAFFLE.SSPOT (SELL_RNO,MEMBERNO,RAFFLENAME,USERNAME,POST,ADDR1,ADDR2,PHONE) values (11,1,'CT4142-710','1','1','1','1','1');
REM INSERTING into RAFFLE.SWINNING
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index SYS_C007600
--------------------------------------------------------

  CREATE UNIQUE INDEX "RAFFLE"."SYS_C007600" ON "RAFFLE"."NOTICE" ("BNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007604
--------------------------------------------------------

  CREATE UNIQUE INDEX "RAFFLE"."SYS_C007604" ON "RAFFLE"."FORUM" ("BNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007667
--------------------------------------------------------

  CREATE UNIQUE INDEX "RAFFLE"."SYS_C007667" ON "RAFFLE"."MEMBER" ("MEMBERNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007673
--------------------------------------------------------

  CREATE UNIQUE INDEX "RAFFLE"."SYS_C007673" ON "RAFFLE"."RESELL_R" ("RESELL_RNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007679
--------------------------------------------------------

  CREATE UNIQUE INDEX "RAFFLE"."SYS_C007679" ON "RAFFLE"."SELL_R" ("SELL_RNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007604
--------------------------------------------------------

  CREATE UNIQUE INDEX "RAFFLE"."SYS_C007604" ON "RAFFLE"."FORUM" ("BNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007667
--------------------------------------------------------

  CREATE UNIQUE INDEX "RAFFLE"."SYS_C007667" ON "RAFFLE"."MEMBER" ("MEMBERNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007600
--------------------------------------------------------

  CREATE UNIQUE INDEX "RAFFLE"."SYS_C007600" ON "RAFFLE"."NOTICE" ("BNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007673
--------------------------------------------------------

  CREATE UNIQUE INDEX "RAFFLE"."SYS_C007673" ON "RAFFLE"."RESELL_R" ("RESELL_RNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007679
--------------------------------------------------------

  CREATE UNIQUE INDEX "RAFFLE"."SYS_C007679" ON "RAFFLE"."SELL_R" ("SELL_RNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table FORUM
--------------------------------------------------------

  ALTER TABLE "RAFFLE"."FORUM" MODIFY ("MEMBERNO" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."FORUM" ADD PRIMARY KEY ("BNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "RAFFLE"."FORUM" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."FORUM" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."FORUM" MODIFY ("TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "RAFFLE"."MEMBER" ADD PRIMARY KEY ("MEMBERNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "RAFFLE"."MEMBER" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."MEMBER" MODIFY ("BIRTH" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."MEMBER" MODIFY ("PHONE" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."MEMBER" MODIFY ("ADDR2" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."MEMBER" MODIFY ("ADDR1" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."MEMBER" MODIFY ("POST" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."MEMBER" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."MEMBER" MODIFY ("PASSWD" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."MEMBER" MODIFY ("USERID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "RAFFLE"."NOTICE" MODIFY ("MEMBERNO" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."NOTICE" ADD PRIMARY KEY ("BNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "RAFFLE"."NOTICE" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."NOTICE" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."NOTICE" MODIFY ("TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RESELL_R
--------------------------------------------------------

  ALTER TABLE "RAFFLE"."RESELL_R" MODIFY ("MEMBERNO" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."RESELL_R" MODIFY ("DEADLINE" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."RESELL_R" MODIFY ("TEXT" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."RESELL_R" ADD PRIMARY KEY ("RESELL_RNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "RAFFLE"."RESELL_R" MODIFY ("PER_PRICE" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."RESELL_R" MODIFY ("ATTEND_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."RESELL_R" MODIFY ("TOTAL_PRICE" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."RESELL_R" MODIFY ("RAFFLENAME" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."RESELL_R" MODIFY ("NICKNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RSPOT
--------------------------------------------------------

  ALTER TABLE "RAFFLE"."RSPOT" MODIFY ("SPOT" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."RSPOT" MODIFY ("PHONE" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."RSPOT" MODIFY ("ADDR2" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."RSPOT" MODIFY ("ADDR1" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."RSPOT" MODIFY ("POST" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."RSPOT" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."RSPOT" MODIFY ("RAFFLENAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RWINNING
--------------------------------------------------------

  ALTER TABLE "RAFFLE"."RWINNING" MODIFY ("PHONE" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."RWINNING" MODIFY ("ADDR2" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."RWINNING" MODIFY ("ADDR1" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."RWINNING" MODIFY ("POST" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."RWINNING" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."RWINNING" MODIFY ("NICKNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SELL_R
--------------------------------------------------------

  ALTER TABLE "RAFFLE"."SELL_R" MODIFY ("DEADLINE" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."SELL_R" ADD PRIMARY KEY ("SELL_RNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "RAFFLE"."SELL_R" MODIFY ("TEXT" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."SELL_R" MODIFY ("RAFFLEAMOUNT" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."SELL_R" MODIFY ("RAFFLEPRICE" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."SELL_R" MODIFY ("RAFFLENAME" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."SELL_R" MODIFY ("NICKNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SSPOT
--------------------------------------------------------

  ALTER TABLE "RAFFLE"."SSPOT" MODIFY ("PHONE" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."SSPOT" MODIFY ("ADDR2" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."SSPOT" MODIFY ("ADDR1" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."SSPOT" MODIFY ("POST" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."SSPOT" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."SSPOT" MODIFY ("RAFFLENAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SWINNING
--------------------------------------------------------

  ALTER TABLE "RAFFLE"."SWINNING" MODIFY ("PHONE" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."SWINNING" MODIFY ("ADDR2" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."SWINNING" MODIFY ("ADDR1" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."SWINNING" MODIFY ("POST" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."SWINNING" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "RAFFLE"."SWINNING" MODIFY ("NICKNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table FORUM
--------------------------------------------------------

  ALTER TABLE "RAFFLE"."FORUM" ADD CONSTRAINT "FORUM_MEMBERNO_FK" FOREIGN KEY ("MEMBERNO")
	  REFERENCES "RAFFLE"."MEMBER" ("MEMBERNO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "RAFFLE"."NOTICE" ADD CONSTRAINT "NOTICE_MEMBERNO_FK" FOREIGN KEY ("MEMBERNO")
	  REFERENCES "RAFFLE"."MEMBER" ("MEMBERNO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESELL_R
--------------------------------------------------------

  ALTER TABLE "RAFFLE"."RESELL_R" ADD CONSTRAINT "RESELL_R_RESELL_RNO_FK" FOREIGN KEY ("MEMBERNO")
	  REFERENCES "RAFFLE"."MEMBER" ("MEMBERNO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RWINNING
--------------------------------------------------------

  ALTER TABLE "RAFFLE"."RWINNING" ADD CONSTRAINT "RWINNING_RESELL_RNO_FK" FOREIGN KEY ("RESELL_RNO")
	  REFERENCES "RAFFLE"."RESELL_R" ("RESELL_RNO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SELL_R
--------------------------------------------------------

  ALTER TABLE "RAFFLE"."SELL_R" ADD CONSTRAINT "SELL_R_MEMBERNO_FK" FOREIGN KEY ("MEMBERNO")
	  REFERENCES "RAFFLE"."MEMBER" ("MEMBERNO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SWINNING
--------------------------------------------------------

  ALTER TABLE "RAFFLE"."SWINNING" ADD CONSTRAINT "SWINNING_SELL_RNO_FK" FOREIGN KEY ("SELL_RNO")
	  REFERENCES "RAFFLE"."SELL_R" ("SELL_RNO") ON DELETE CASCADE ENABLE;
