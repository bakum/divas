--------------------------------------------------------
--  DDL for Sequence ORDERS_NUM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "DBA_DIVAS"."ORDERS_NUM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  CYCLE ;
--------------------------------------------------------
--  DDL for Sequence PS_TXN_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "DBA_DIVAS"."PS_TXN_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 50 START WITH 75051 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ASTER_SETTINGS
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."ASTER_SETTINGS" 
   (	"ID" VARCHAR2(50 CHAR), 
	"SERVER" VARCHAR2(100 CHAR), 
	"PORT" VARCHAR2(20 CHAR) DEFAULT 5030
   ) ;
--------------------------------------------------------
--  DDL for Table CALL_LOG
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."CALL_LOG" 
   (	"ID" VARCHAR2(50 CHAR), 
	"CALL_STATUS" VARCHAR2(50 CHAR), 
	"CONTACT_ID" VARCHAR2(50 CHAR), 
	"COMP_DET_ID" VARCHAR2(50 CHAR), 
	"MEMO" VARCHAR2(2000 CHAR), 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp, 
	"DAT" DATE DEFAULT current_timestamp
   ) ;
--------------------------------------------------------
--  DDL for Table CALL_RESULTS
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."CALL_RESULTS" 
   (	"ID" VARCHAR2(50 CHAR), 
	"NAME" VARCHAR2(20 CHAR), 
	"FULLNAME" VARCHAR2(25 CHAR)
   ) ;
--------------------------------------------------------
--  DDL for Table CALL_STATUS
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."CALL_STATUS" 
   (	"ID" VARCHAR2(50 CHAR), 
	"NAME" VARCHAR2(50 CHAR), 
	"FULLNAME" VARCHAR2(50 CHAR)
   ) ;
--------------------------------------------------------
--  DDL for Table COMPAIGNS
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."COMPAIGNS" 
   (	"ID" VARCHAR2(50 CHAR), 
	"NAME" VARCHAR2(100 CHAR), 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp, 
	"ENABLED" NUMBER(1,0) DEFAULT 1, 
	"PREDEFINED" NUMBER(1,0) DEFAULT 0, 
	"DELETED" NUMBER(1,0) DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table COMPAIGNS_DETAILS
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."COMPAIGNS_DETAILS" 
   (	"ID" VARCHAR2(50 CHAR), 
	"COMPAIGN_ID" VARCHAR2(50 CHAR), 
	"KONTRAG_ID" VARCHAR2(50 CHAR), 
	"CONTACT_ID" VARCHAR2(50 CHAR), 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp
   ) ;
--------------------------------------------------------
--  DDL for Table CONTACT_DETAILS
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."CONTACT_DETAILS" 
   (	"ID" VARCHAR2(50 CHAR), 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp, 
	"KONTRAG_ID" VARCHAR2(50 CHAR), 
	"ADRESS" VARCHAR2(1000 CHAR), 
	"PHONE" VARCHAR2(15 CHAR), 
	"EMAIL" VARCHAR2(100 CHAR)
   ) ;
--------------------------------------------------------
--  DDL for Table CURRENCY
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."CURRENCY" 
   (	"ID" VARCHAR2(50 CHAR), 
	"IS_GROUP" NUMBER(1,0) DEFAULT 0, 
	"PARENT_ID" VARCHAR2(50 CHAR), 
	"DELETED" NUMBER(1,0) DEFAULT 0, 
	"FULLNAME" VARCHAR2(5 CHAR), 
	"CODE" VARCHAR2(3 CHAR), 
	"NAMEFULL" VARCHAR2(50 CHAR), 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp, 
	"PREDEFINED" NUMBER(1,0) DEFAULT 0, 
	"ID_XML" VARCHAR2(3 CHAR) DEFAULT '0'
   ) ;
--------------------------------------------------------
--  DDL for Table DIVISIONS
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."DIVISIONS" 
   (	"ID" VARCHAR2(50 CHAR), 
	"FULLNAME" VARCHAR2(150 CHAR), 
	"DELETED" NUMBER(1,0) DEFAULT 0, 
	"IS_GROUP" NUMBER(1,0) DEFAULT 0, 
	"PARENT_ID" VARCHAR2(50 CHAR), 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp, 
	"PREDEFINED" NUMBER(1,0) DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table DIVISION_SOTR
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."DIVISION_SOTR" 
   (	"ID" VARCHAR2(50 CHAR), 
	"DIV_ID" VARCHAR2(50 CHAR), 
	"USER_ID" VARCHAR2(50 CHAR), 
	"DESCRIPTION" VARCHAR2(1000 CHAR)
   ) ;
--------------------------------------------------------
--  DDL for Table ENTRY_SETTINGS
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."ENTRY_SETTINGS" 
   (	"ID" VARCHAR2(50 CHAR), 
	"TYPEDEF_ID" VARCHAR2(50 CHAR), 
	"PLAN_ACC_DEB_ID" VARCHAR2(50 CHAR), 
	"PLAN_ACC_KRED_ID" VARCHAR2(50 CHAR), 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp
   ) ;
 

   COMMENT ON TABLE "DBA_DIVAS"."ENTRY_SETTINGS"  IS 'Настройки проводок';
--------------------------------------------------------
--  DDL for Table ENUM_ACCOUNT_TYPE
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."ENUM_ACCOUNT_TYPE" 
   (	"ID" VARCHAR2(50 CHAR), 
	"FULLNAME" VARCHAR2(20 CHAR), 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp
   ) ;
--------------------------------------------------------
--  DDL for Table EX_RATES_SETTINGS
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."EX_RATES_SETTINGS" 
   (	"ID" VARCHAR2(50 CHAR), 
	"CURR_ID" VARCHAR2(50 CHAR), 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp
   ) ;
--------------------------------------------------------
--  DDL for Table FIRMS
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."FIRMS" 
   (	"ID" VARCHAR2(50 CHAR), 
	"FULLNAME" VARCHAR2(150 CHAR), 
	"PRINTNAME" VARCHAR2(200 CHAR), 
	"UR_FIZ" NUMBER(1,0) DEFAULT 0, 
	"INN" VARCHAR2(50 CHAR), 
	"OKPO" VARCHAR2(50 CHAR), 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp, 
	"DELETED" NUMBER(1,0) DEFAULT 0, 
	"PREDEFINED" NUMBER(1,0) DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table GROUPMEMBERS
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."GROUPMEMBERS" 
   (	"ID" VARCHAR2(50 CHAR), 
	"G_NAME" VARCHAR2(50 CHAR), 
	"G_MEMBER" VARCHAR2(30 CHAR)
   ) ;
--------------------------------------------------------
--  DDL for Table GROUPS
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."GROUPS" 
   (	"ID" VARCHAR2(50 CHAR), 
	"FULLNAME" VARCHAR2(50 CHAR), 
	"G_DESCRIPTION" VARCHAR2(1000 CHAR)
   ) ;
--------------------------------------------------------
--  DDL for Table IMPORTED_PRICE
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."IMPORTED_PRICE" 
   (	"ID" VARCHAR2(50 CHAR), 
	"DAT" DATE DEFAULT sysdate, 
	"ARTIKUL" VARCHAR2(50 CHAR), 
	"GROUPS" VARCHAR2(50 CHAR), 
	"NOM_NAME" VARCHAR2(1000 CHAR), 
	"ED_IZM" VARCHAR2(20 CHAR), 
	"PRICE_USL" NUMBER(10,2), 
	"PRICE_GOODS" NUMBER(10,2), 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp
   ) ;
--------------------------------------------------------
--  DDL for Table KASSA
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."KASSA" 
   (	"ID" VARCHAR2(50 CHAR), 
	"FULLNAME" VARCHAR2(100 CHAR), 
	"IS_GROUP" NUMBER(1,0) DEFAULT 0, 
	"PARENT_ID" VARCHAR2(50 CHAR), 
	"CURR_ID" VARCHAR2(50 CHAR), 
	"DIVISION_ID" VARCHAR2(50 CHAR), 
	"DELETED" NUMBER(1,0) DEFAULT 0, 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp, 
	"PREDEFINED" NUMBER(1,0) DEFAULT 0, 
	"FIRMA_ID" VARCHAR2(50 CHAR)
   ) ;
--------------------------------------------------------
--  DDL for Table KONTRAGENTS
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."KONTRAGENTS" 
   (	"ID" VARCHAR2(50 CHAR), 
	"IS_GROUP" NUMBER(1,0) DEFAULT 0, 
	"PARENT_ID" VARCHAR2(50 CHAR), 
	"FULLNAME" VARCHAR2(150 CHAR), 
	"DELETED" NUMBER(1,0) DEFAULT 0, 
	"INN" VARCHAR2(50 CHAR), 
	"OKPO" VARCHAR2(50 CHAR), 
	"KPP" VARCHAR2(50 CHAR), 
	"NAMEFULL" VARCHAR2(150 CHAR), 
	"UR_FIZ" NUMBER(1,0) DEFAULT 0, 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp, 
	"PREDEFINED" NUMBER(1,0) DEFAULT 0, 
	"IS_SUPPLIER" NUMBER(1,0) DEFAULT 0, 
	"IS_BUYER" NUMBER(1,0) DEFAULT 0, 
	"IS_MEASURER" NUMBER(1,0) DEFAULT 0, 
	"USER_ID" VARCHAR2(50 CHAR)
   ) ;
--------------------------------------------------------
--  DDL for Table MEASURE_UNIT
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."MEASURE_UNIT" 
   (	"ID" VARCHAR2(50 CHAR), 
	"FULLNAME" VARCHAR2(20 CHAR), 
	"CODE" VARCHAR2(3 CHAR) DEFAULT '000', 
	"DELETED" NUMBER(1,0) DEFAULT 0, 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp
   ) ;
--------------------------------------------------------
--  DDL for Table MOVES
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."MOVES" 
   (	"ID" VARCHAR2(50 CHAR), 
	"PERIOD" TIMESTAMP (6), 
	"REGISTRATOR_TYPE" VARCHAR2(50 CHAR), 
	"REGISTRATOR_ID" VARCHAR2(50 CHAR), 
	"PLAN_ACC_DEB_ID" VARCHAR2(50 CHAR), 
	"SUBCONTO1_DEB" VARCHAR2(50 CHAR), 
	"SUBCONTO2_DEB" VARCHAR2(50 CHAR), 
	"SUBCONTO3_DEB" VARCHAR2(50 CHAR), 
	"QUANTITY_DEB" NUMBER(10,4), 
	"CURR_DEB" VARCHAR2(50 CHAR), 
	"SUMM_VAL_DEB" NUMBER(10,2), 
	"PLAN_ACC_KRED_ID" VARCHAR2(50 CHAR), 
	"SUBCONTO1_KRED" VARCHAR2(50 CHAR), 
	"SUBCONTO2_KRED" VARCHAR2(50 CHAR), 
	"SUBCONTO3_KRED" VARCHAR2(50 CHAR), 
	"QUANTITY_KRED" NUMBER(10,4), 
	"CURR_KRED" VARCHAR2(50 CHAR), 
	"SUMM_VAL_KREDIT" NUMBER(10,2), 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp, 
	"SUMM_UPR_DEB" NUMBER(10,2), 
	"SUMM_UPR_KRED" NUMBER(10,2), 
	"ACTIVITIES_ID" VARCHAR2(50 CHAR)
   ) ;
--------------------------------------------------------
--  DDL for Table NOMENKLATURA
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."NOMENKLATURA" 
   (	"ID" VARCHAR2(50 BYTE), 
	"FULLNAME" VARCHAR2(150 CHAR), 
	"DELETED" NUMBER(1,0) DEFAULT 0, 
	"IS_GROUP" NUMBER(1,0) DEFAULT 0, 
	"PARENT_ID" VARCHAR2(50 CHAR), 
	"USLUGA" NUMBER(1,0) DEFAULT 1, 
	"PREDEFINED" NUMBER(1,0) DEFAULT 0, 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp, 
	"ARTIKUL" VARCHAR2(50 CHAR)
   ) ;
--------------------------------------------------------
--  DDL for Table NUMERATOR
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."NUMERATOR" 
   (	"ID" VARCHAR2(50 CHAR), 
	"TYPEDEF_ID" VARCHAR2(50 CHAR), 
	"PREFIX" VARCHAR2(20 CHAR), 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp
   ) ;
--------------------------------------------------------
--  DDL for Table ORDERS
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."ORDERS" 
   (	"ID" VARCHAR2(50 CHAR), 
	"DAT" DATE DEFAULT current_timestamp, 
	"NUM" VARCHAR2(50 CHAR), 
	"KONTRAG_ID" VARCHAR2(50 CHAR), 
	"CURR_ID" VARCHAR2(50 CHAR), 
	"KASSA_ID" VARCHAR2(50 CHAR), 
	"DIVISION_ID" VARCHAR2(50 CHAR), 
	"USER_ID" VARCHAR2(50 CHAR), 
	"KURS" NUMBER(10,6) DEFAULT 1, 
	"KRATNOST" NUMBER(10,0) DEFAULT 1, 
	"DISCRIPTION" VARCHAR2(2000 CHAR), 
	"DELETED" NUMBER(1,0) DEFAULT 0, 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp, 
	"POSTED" NUMBER(1,0) DEFAULT 0, 
	"FIRM_ID" VARCHAR2(50 CHAR), 
	"ACTIVITIES_ID" VARCHAR2(50 CHAR), 
	"STATUS_ID" VARCHAR2(50 CHAR), 
	"ZAMER_ID" VARCHAR2(50 CHAR)
   ) ;
--------------------------------------------------------
--  DDL for Table ORDERS_TP_USLUGI
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."ORDERS_TP_USLUGI" 
   (	"ID" VARCHAR2(50 CHAR), 
	"ORDER_ID" VARCHAR2(50 CHAR), 
	"NOM_ID" VARCHAR2(50 CHAR), 
	"PRICE" NUMBER(10,3), 
	"SUMM" NUMBER(10,2), 
	"DAT_COMPLETE" DATE DEFAULT sysdate, 
	"SOTR_ID" VARCHAR2(50 CHAR), 
	"DAT_TO_PAY" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table ORDER_STATUS
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."ORDER_STATUS" 
   (	"ID" VARCHAR2(50 CHAR), 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp, 
	"NAME" VARCHAR2(50 CHAR), 
	"FULLNAME" VARCHAR2(50 CHAR)
   ) ;
--------------------------------------------------------
--  DDL for Table PLAN_ACC
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."PLAN_ACC" 
   (	"ID" VARCHAR2(50 CHAR), 
	"ACC_TYPE" VARCHAR2(50 CHAR), 
	"PARENT_ID" VARCHAR2(50 CHAR), 
	"FULLNAME" VARCHAR2(3000 CHAR), 
	"ZABALANSOV" NUMBER(1,0) DEFAULT 0, 
	"VALUTN" NUMBER(1,0) DEFAULT 0, 
	"KOLISHESTV" NUMBER(1,0) DEFAULT 0, 
	"DELETED" NUMBER(1,0) DEFAULT 0, 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp, 
	"CODE" VARCHAR2(6 CHAR) DEFAULT NULL
   ) ;
--------------------------------------------------------
--  DDL for Table PLAN_ACC_SUBCONTO
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."PLAN_ACC_SUBCONTO" 
   (	"ID" VARCHAR2(50 CHAR), 
	"PLAN_ACC_ID" VARCHAR2(50 CHAR), 
	"PLAN_TYPE_SUBC" VARCHAR2(50 CHAR), 
	"OBOROT_ONLY" NUMBER(1,0) DEFAULT 0, 
	"SUMMOVOY" NUMBER(1,0) DEFAULT 1, 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp
   ) ;
--------------------------------------------------------
--  DDL for Table PLAN_TYPE_SUBCONTO
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."PLAN_TYPE_SUBCONTO" 
   (	"ID" VARCHAR2(50 CHAR), 
	"TYPE_OF_OBJ" VARCHAR2(50 BYTE), 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp, 
	"FULLNAME" VARCHAR2(100 CHAR)
   ) ;
--------------------------------------------------------
--  DDL for Table PS_TXN
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."PS_TXN" 
   (	"ID" NUMBER(20,0), 
	"PARENTID" NUMBER(20,0), 
	"COLLID" NUMBER(10,0), 
	"CONTENT" BLOB, 
	"CREATION_DATE" DATE DEFAULT sysdate
   ) ;
--------------------------------------------------------
--  DDL for Table REG_RATES
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."REG_RATES" 
   (	"CURR_ID" VARCHAR2(50 CHAR), 
	"PERIOD" DATE DEFAULT to_date('01-01-1980 00:00:00','DD-MM-YYYY HH24:MI:SS'), 
	"ID" VARCHAR2(50 CHAR), 
	"KURS" NUMBER(10,6) DEFAULT 1, 
	"KRATNOST" NUMBER(10,0) DEFAULT 1, 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp
   ) ;
--------------------------------------------------------
--  DDL for Table TYPE_DEF
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."TYPE_DEF" 
   (	"ID" VARCHAR2(50 CHAR), 
	"TABLE_NAME" VARCHAR2(100 CHAR), 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp
   ) ;
--------------------------------------------------------
--  DDL for Table TYPE_OF_ACTIVITIES
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."TYPE_OF_ACTIVITIES" 
   (	"ID" VARCHAR2(50 CHAR), 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp, 
	"FULLNAME" VARCHAR2(150 CHAR)
   ) ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."USERS" 
   (	"ID" VARCHAR2(50 CHAR), 
	"FIRST_NAME" VARCHAR2(50 CHAR) DEFAULT 'NoFirstName', 
	"LAST_NAME" VARCHAR2(50 CHAR) DEFAULT 'NoLastName', 
	"EMAIL" VARCHAR2(100 CHAR) DEFAULT 'no@email.com', 
	"IS_ADMIN" NUMBER(1,0) DEFAULT 0, 
	"PASS_WD" VARCHAR2(100 CHAR), 
	"LOGIN" VARCHAR2(30 CHAR), 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp, 
	"PREDEFINED" NUMBER(1,0) DEFAULT 0, 
	"U_DESCRIPTION" VARCHAR2(1000 CHAR)
   ) ;
--------------------------------------------------------
--  DDL for Table USER_SETTINGS
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."USER_SETTINGS" 
   (	"ID" VARCHAR2(50 CHAR), 
	"USER_ID" VARCHAR2(50 CHAR), 
	"DIVISION_ID" VARCHAR2(50 CHAR), 
	"FIRMA_ID" VARCHAR2(50 CHAR), 
	"CURRENCY_ID" VARCHAR2(50 CHAR), 
	"KASSA_ID" VARCHAR2(50 CHAR), 
	"MAIN_USLUGA" VARCHAR2(50 CHAR), 
	"ACTIVITIES_ID" VARCHAR2(50 CHAR)
   ) ;
--------------------------------------------------------
--  DDL for Table VOUCHER
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."VOUCHER" 
   (	"ID" VARCHAR2(50 CHAR), 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp, 
	"EXPIRED_BY" TIMESTAMP (6), 
	"CODE" RAW(64)
   ) ;
--------------------------------------------------------
--  DDL for Table XML_T
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."XML_T" 
   (	"ID" VARCHAR2(50 CHAR), 
	"ONE" "SYS"."XMLTYPE" , 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp
   ) ;
--------------------------------------------------------
--  DDL for Table ZATRATY
--------------------------------------------------------

  CREATE TABLE "DBA_DIVAS"."ZATRATY" 
   (	"ID" VARCHAR2(50 CHAR), 
	"IS_GROUP" NUMBER(1,0) DEFAULT 0, 
	"PARENT_ID" VARCHAR2(50 BYTE), 
	"DELETED" NUMBER(1,0) DEFAULT 0, 
	"FULLNAME" VARCHAR2(150 CHAR), 
	"VERSION" TIMESTAMP (6) DEFAULT systimestamp, 
	"PREDEFINED" NUMBER(1,0) DEFAULT 0
   ) ;
REM INSERTING into DBA_DIVAS.ASTER_SETTINGS
SET DEFINE OFF;
REM INSERTING into DBA_DIVAS.CALL_LOG
SET DEFINE OFF;
REM INSERTING into DBA_DIVAS.CALL_RESULTS
SET DEFINE OFF;
Insert into DBA_DIVAS.CALL_RESULTS (ID,NAME,FULLNAME) values ('c69fed32-8c74-4e8b-8f23-243fe74b9997','Sales','Продажа');
Insert into DBA_DIVAS.CALL_RESULTS (ID,NAME,FULLNAME) values ('515ac158-3652-4dbd-a9fc-28f3459811a0','WrongNumber','Неверный номер');
Insert into DBA_DIVAS.CALL_RESULTS (ID,NAME,FULLNAME) values ('743b2bd8-4de2-4e43-9d39-606498bd34c7','Voicemail','Голосовая почта');
Insert into DBA_DIVAS.CALL_RESULTS (ID,NAME,FULLNAME) values ('0e50ddad-980a-4421-b852-a3b26d6b9174','PowerOff','Номер отключен');
Insert into DBA_DIVAS.CALL_RESULTS (ID,NAME,FULLNAME) values ('58dd3e76-e366-4112-9fa6-1cdc8f65fbbc','NoAnswer','Нет ответа');
Insert into DBA_DIVAS.CALL_RESULTS (ID,NAME,FULLNAME) values ('61a9fac2-0eeb-4a12-8dc6-b500ac1e0472','SendFax','Отправить факс');
Insert into DBA_DIVAS.CALL_RESULTS (ID,NAME,FULLNAME) values ('451b02ef-2d31-40e8-9b67-0162f30d271d','SendMail','Отправить почту');
Insert into DBA_DIVAS.CALL_RESULTS (ID,NAME,FULLNAME) values ('27d86d14-512d-4bfa-be14-873a23bea632','Success','Успешно');
Insert into DBA_DIVAS.CALL_RESULTS (ID,NAME,FULLNAME) values ('1f6f45e1-00a4-4e50-887d-80771e36f2b7','Fail','Неудача');
Insert into DBA_DIVAS.CALL_RESULTS (ID,NAME,FULLNAME) values ('424a7248-a5b8-49c5-b344-c776d7a8c666','AnswerMachine','Автоответчик');
Insert into DBA_DIVAS.CALL_RESULTS (ID,NAME,FULLNAME) values ('ffb2d80a-d1c5-41de-87ce-4fc02b6290dd','DontCallAgain','Больше не звонить');
Insert into DBA_DIVAS.CALL_RESULTS (ID,NAME,FULLNAME) values ('514f54b0-0a6a-459a-ac03-e28b61d30902','NotInterested','Не интересует');
Insert into DBA_DIVAS.CALL_RESULTS (ID,NAME,FULLNAME) values ('c5c0bd5f-5f95-44c0-8572-533e071a8d8e','CallLater','Перезвонить позже');
Insert into DBA_DIVAS.CALL_RESULTS (ID,NAME,FULLNAME) values ('6217c569-28eb-459e-bf8d-8ab27611ed07','Measuring','Вызов на замер');
REM INSERTING into DBA_DIVAS.CALL_STATUS
SET DEFINE OFF;
Insert into DBA_DIVAS.CALL_STATUS (ID,NAME,FULLNAME) values ('745de747-b65d-48f1-8f0b-b39288ced39a','New','Новый');
Insert into DBA_DIVAS.CALL_STATUS (ID,NAME,FULLNAME) values ('8e550f3f-f070-4dc2-a960-fce0087f6f3f','Pending','В ожидании');
Insert into DBA_DIVAS.CALL_STATUS (ID,NAME,FULLNAME) values ('f507e3cc-8164-4e8f-a879-d5f632cd5377','FailedSubmit','Неудачный');
REM INSERTING into DBA_DIVAS.COMPAIGNS
SET DEFINE OFF;
Insert into DBA_DIVAS.COMPAIGNS (ID,NAME,VERSION,ENABLED,PREDEFINED,DELETED) values ('a880b60d-6c68-4286-ad68-526fc51ae01a','hot',to_timestamp('13-AUG-14 05.18.33.404459000 PM','DD-MON-RR HH.MI.SSXFF AM'),1,1,0);
Insert into DBA_DIVAS.COMPAIGNS (ID,NAME,VERSION,ENABLED,PREDEFINED,DELETED) values ('5222047c-7548-4552-8c98-42dcd7fd344d','cold',to_timestamp('13-AUG-14 05.18.33.413547000 PM','DD-MON-RR HH.MI.SSXFF AM'),1,1,0);
REM INSERTING into DBA_DIVAS.COMPAIGNS_DETAILS
SET DEFINE OFF;
Insert into DBA_DIVAS.COMPAIGNS_DETAILS (ID,COMPAIGN_ID,KONTRAG_ID,CONTACT_ID,VERSION) values ('ae036666-f628-4ece-9160-88aac5dd4d3c','5222047c-7548-4552-8c98-42dcd7fd344d','6ec66d9a-66de-40cd-a30d-ccbc69439d0c','04c6e371-05bb-426f-b2b9-7df47cea12c9',to_timestamp('15-SEP-14 12.41.53.474717000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.COMPAIGNS_DETAILS (ID,COMPAIGN_ID,KONTRAG_ID,CONTACT_ID,VERSION) values ('3b1bcddb-01cd-4753-b907-404ef5d90a9b','a880b60d-6c68-4286-ad68-526fc51ae01a','b9e3a32a-fea4-494c-90f4-965c0c355b7c','1f01df1b-2f17-469f-9750-44ad9bef2081',to_timestamp('15-SEP-14 12.42.45.444385000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.COMPAIGNS_DETAILS (ID,COMPAIGN_ID,KONTRAG_ID,CONTACT_ID,VERSION) values ('89f9c8f5-3168-4fdf-9020-b94814cedc2b','a880b60d-6c68-4286-ad68-526fc51ae01a','76f5a5f6-2c97-4df2-bc08-df0c1ea20f60','3f1fb6c4-6687-4530-8342-e4dbe207be05',to_timestamp('15-SEP-14 12.42.54.933605000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.COMPAIGNS_DETAILS (ID,COMPAIGN_ID,KONTRAG_ID,CONTACT_ID,VERSION) values ('67f404c7-7edd-46fa-b9bd-0aa3267e91b5','a880b60d-6c68-4286-ad68-526fc51ae01a','ad01ee8e-beb8-4270-9773-4692856ff696','b235772e-ac20-4ae6-b35d-bce0b48c25b9',to_timestamp('15-SEP-14 12.43.04.961628000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.COMPAIGNS_DETAILS (ID,COMPAIGN_ID,KONTRAG_ID,CONTACT_ID,VERSION) values ('16021d22-5069-4fa2-b329-cd46301d0be7','5222047c-7548-4552-8c98-42dcd7fd344d','b9e3a32a-fea4-494c-90f4-965c0c355b7c','1f01df1b-2f17-469f-9750-44ad9bef2081',to_timestamp('16-SEP-14 11.25.30.320451000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.COMPAIGNS_DETAILS (ID,COMPAIGN_ID,KONTRAG_ID,CONTACT_ID,VERSION) values ('d480e900-823a-4e73-936b-9200a8a0f029','a880b60d-6c68-4286-ad68-526fc51ae01a','86a820c8-a04a-47c9-9237-61e6f200f5af','0f36fab6-3804-4411-b0e4-44c9efbe5864',to_timestamp('17-SEP-14 02.34.11.506990000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.COMPAIGNS_DETAILS (ID,COMPAIGN_ID,KONTRAG_ID,CONTACT_ID,VERSION) values ('7f1ed30f-e4a1-408e-8ae4-0305e78d765c','a880b60d-6c68-4286-ad68-526fc51ae01a','e8a6719c-830a-42c4-86f1-d63c62c83aa1','7e0bf133-a1da-44c4-b3db-e10550d4b9a9',to_timestamp('17-SEP-14 02.33.58.609020000 PM','DD-MON-RR HH.MI.SSXFF AM'));
REM INSERTING into DBA_DIVAS.CONTACT_DETAILS
SET DEFINE OFF;
Insert into DBA_DIVAS.CONTACT_DETAILS (ID,VERSION,KONTRAG_ID,ADRESS,PHONE,EMAIL) values ('7be31b45-eece-4b13-92ba-4197e9b06ed2',to_timestamp('02-NOV-14 07.37.46.388072000 PM','DD-MON-RR HH.MI.SSXFF AM'),'60cbccc9-103e-4676-9d4f-52f8856427b8','г. Кривой Рог','+380975632145',null);
Insert into DBA_DIVAS.CONTACT_DETAILS (ID,VERSION,KONTRAG_ID,ADRESS,PHONE,EMAIL) values ('9d35ea8a-37a5-4ddd-a49e-5848c3c6e282',to_timestamp('27-AUG-14 05.40.50.326539000 PM','DD-MON-RR HH.MI.SSXFF AM'),'4aada2fe-2aa9-46d2-a664-88143a07a06a','г. Кривой Рог','38067',null);
Insert into DBA_DIVAS.CONTACT_DETAILS (ID,VERSION,KONTRAG_ID,ADRESS,PHONE,EMAIL) values ('0f36fab6-3804-4411-b0e4-44c9efbe5864',to_timestamp('02-NOV-14 12.47.57.923822000 PM','DD-MON-RR HH.MI.SSXFF AM'),'86a820c8-a04a-47c9-9237-61e6f200f5af','г. Днепропетровск, ж.м Фрунзенский','380504517191',null);
Insert into DBA_DIVAS.CONTACT_DETAILS (ID,VERSION,KONTRAG_ID,ADRESS,PHONE,EMAIL) values ('04c6e371-05bb-426f-b2b9-7df47cea12c9',to_timestamp('08-SEP-14 03.15.51.698035000 PM','DD-MON-RR HH.MI.SSXFF AM'),'6ec66d9a-66de-40cd-a30d-ccbc69439d0c','г. Харьков','380503421214',null);
Insert into DBA_DIVAS.CONTACT_DETAILS (ID,VERSION,KONTRAG_ID,ADRESS,PHONE,EMAIL) values ('1f01df1b-2f17-469f-9750-44ad9bef2081',to_timestamp('08-SEP-14 09.59.15.080666000 PM','DD-MON-RR HH.MI.SSXFF AM'),'b9e3a32a-fea4-494c-90f4-965c0c355b7c','г. Днепропетровск','380509178843',null);
Insert into DBA_DIVAS.CONTACT_DETAILS (ID,VERSION,KONTRAG_ID,ADRESS,PHONE,EMAIL) values ('b235772e-ac20-4ae6-b35d-bce0b48c25b9',to_timestamp('15-OCT-14 08.58.38.753726000 PM','DD-MON-RR HH.MI.SSXFF AM'),'ad01ee8e-beb8-4270-9773-4692856ff696','Днепропетровск, пер. Возрождения, 100','380970867375','bakum@bmexp.com');
Insert into DBA_DIVAS.CONTACT_DETAILS (ID,VERSION,KONTRAG_ID,ADRESS,PHONE,EMAIL) values ('c74686f2-5945-4f4e-8e0e-692cafd5c7a6',to_timestamp('07-NOV-14 12.31.46.032803000 AM','DD-MON-RR HH.MI.SSXFF AM'),'80d3d4f4-f340-4699-ac5b-00c4c5867adc','г. Киев','380636867808','godness@gmail.com');
Insert into DBA_DIVAS.CONTACT_DETAILS (ID,VERSION,KONTRAG_ID,ADRESS,PHONE,EMAIL) values ('7f2859cf-4cc7-43a3-b57a-b6cec4671137',to_timestamp('27-AUG-14 05.34.03.829924000 PM','DD-MON-RR HH.MI.SSXFF AM'),'f7220d45-f53e-4598-a651-7cfbdcc7a304','г. Павлоград, ул. Степного фронта, д. 12, кв. 49','380503610910',null);
Insert into DBA_DIVAS.CONTACT_DETAILS (ID,VERSION,KONTRAG_ID,ADRESS,PHONE,EMAIL) values ('7e0bf133-a1da-44c4-b3db-e10550d4b9a9',to_timestamp('27-AUG-14 05.36.02.146416000 PM','DD-MON-RR HH.MI.SSXFF AM'),'e8a6719c-830a-42c4-86f1-d63c62c83aa1','г. Днепропетровск','380503610554',null);
Insert into DBA_DIVAS.CONTACT_DETAILS (ID,VERSION,KONTRAG_ID,ADRESS,PHONE,EMAIL) values ('be941861-7615-41f8-91a8-9f98f3e90cc0',to_timestamp('14-SEP-14 01.47.06.560595000 PM','DD-MON-RR HH.MI.SSXFF AM'),'7940ab4a-6d47-43fd-b6d3-3457eb31604d','г. Днепропетровск','097055123456',null);
Insert into DBA_DIVAS.CONTACT_DETAILS (ID,VERSION,KONTRAG_ID,ADRESS,PHONE,EMAIL) values ('3f1fb6c4-6687-4530-8342-e4dbe207be05',to_timestamp('08-SEP-14 03.38.36.956444000 PM','DD-MON-RR HH.MI.SSXFF AM'),'76f5a5f6-2c97-4df2-bc08-df0c1ea20f60','Днепропетровск','380504202759',null);
Insert into DBA_DIVAS.CONTACT_DETAILS (ID,VERSION,KONTRAG_ID,ADRESS,PHONE,EMAIL) values ('8fb38491-db54-43d1-abca-52d55f1fe823',to_timestamp('15-OCT-14 08.58.38.755233000 PM','DD-MON-RR HH.MI.SSXFF AM'),'ad01ee8e-beb8-4270-9773-4692856ff696',null,'380504209764',null);
Insert into DBA_DIVAS.CONTACT_DETAILS (ID,VERSION,KONTRAG_ID,ADRESS,PHONE,EMAIL) values ('4f6678ec-bd59-421c-aca0-4d0f5bb04aad',to_timestamp('08-SEP-14 09.52.20.263346000 PM','DD-MON-RR HH.MI.SSXFF AM'),'94a30d4e-12d8-4207-b99b-dd3c12451ba0','г. Днепропетровск','380504534010','manoylo@bmexp.com');
Insert into DBA_DIVAS.CONTACT_DETAILS (ID,VERSION,KONTRAG_ID,ADRESS,PHONE,EMAIL) values ('28a43be0-7c43-4151-8967-b19f2f9b1ca8',to_timestamp('08-SEP-14 09.52.20.264745000 PM','DD-MON-RR HH.MI.SSXFF AM'),'94a30d4e-12d8-4207-b99b-dd3c12451ba0',null,'380675774010',null);
Insert into DBA_DIVAS.CONTACT_DETAILS (ID,VERSION,KONTRAG_ID,ADRESS,PHONE,EMAIL) values ('9c9923e7-793a-4624-b430-3942a981e0a2',to_timestamp('08-SEP-14 03.38.53.188228000 PM','DD-MON-RR HH.MI.SSXFF AM'),'99a37c69-19a0-4ead-aec2-532b270bf648','г. Днепропетровск','380503618486',null);
Insert into DBA_DIVAS.CONTACT_DETAILS (ID,VERSION,KONTRAG_ID,ADRESS,PHONE,EMAIL) values ('d790ea03-0b95-4ccc-be4e-7f85893a0c89',to_timestamp('02-NOV-14 02.12.25.638207000 PM','DD-MON-RR HH.MI.SSXFF AM'),'dd90b568-4248-4f7f-be72-e5750b92ffcc','пыпывапывпывпвыпаывпаыкпупыукп','45645646',null);
Insert into DBA_DIVAS.CONTACT_DETAILS (ID,VERSION,KONTRAG_ID,ADRESS,PHONE,EMAIL) values ('d63470d8-9f37-4aab-82ab-e50f2854adee',to_timestamp('02-NOV-14 06.57.09.710311000 PM','DD-MON-RR HH.MI.SSXFF AM'),'eaf15ecd-da58-4a1b-8292-554cbf0a151c','г. Днепропетровск','+380504209764',null);
REM INSERTING into DBA_DIVAS.CURRENCY
SET DEFINE OFF;
Insert into DBA_DIVAS.CURRENCY (ID,IS_GROUP,PARENT_ID,DELETED,FULLNAME,CODE,NAMEFULL,VERSION,PREDEFINED,ID_XML) values ('ae6d0171-45cb-4b99-8d1a-1b039df274ca',0,null,0,'грн','980','Гривна',to_timestamp('18-OCT-14 11.47.29.727273000 AM','DD-MON-RR HH.MI.SSXFF AM'),1,'0');
Insert into DBA_DIVAS.CURRENCY (ID,IS_GROUP,PARENT_ID,DELETED,FULLNAME,CODE,NAMEFULL,VERSION,PREDEFINED,ID_XML) values ('3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',0,null,0,'USD','840','Доллар США',to_timestamp('15-SEP-14 04.51.57.035561000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,'6');
Insert into DBA_DIVAS.CURRENCY (ID,IS_GROUP,PARENT_ID,DELETED,FULLNAME,CODE,NAMEFULL,VERSION,PREDEFINED,ID_XML) values ('74df5375-fd11-4c78-b0b7-b23484e8a348',0,null,0,'EUR','978','Евро',to_timestamp('07-SEP-14 10.22.32.344933000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,'8');
Insert into DBA_DIVAS.CURRENCY (ID,IS_GROUP,PARENT_ID,DELETED,FULLNAME,CODE,NAMEFULL,VERSION,PREDEFINED,ID_XML) values ('7b270952-9cb5-490e-a7c3-2eecfb5d7204',0,null,0,'RUB','643','Рубль',to_timestamp('27-MAY-14 09.41.28.695816000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,'17');
REM INSERTING into DBA_DIVAS.DIVISIONS
SET DEFINE OFF;
Insert into DBA_DIVAS.DIVISIONS (ID,FULLNAME,DELETED,IS_GROUP,PARENT_ID,VERSION,PREDEFINED) values ('682c21df-d817-4324-9093-002599ddcc0d','Киев',1,0,'bcebe387-8faa-457d-8aa8-bdc1f7caf849',to_timestamp('17-SEP-14 02.14.42.628779000 PM','DD-MON-RR HH.MI.SSXFF AM'),0);
Insert into DBA_DIVAS.DIVISIONS (ID,FULLNAME,DELETED,IS_GROUP,PARENT_ID,VERSION,PREDEFINED) values ('4a6f1aca-015f-4f97-ad06-650def877167','Старостина',0,0,'dbcf65ca-a015-49a7-a928-af09fc2d0d2e',to_timestamp('17-SEP-14 02.39.40.894538000 PM','DD-MON-RR HH.MI.SSXFF AM'),0);
Insert into DBA_DIVAS.DIVISIONS (ID,FULLNAME,DELETED,IS_GROUP,PARENT_ID,VERSION,PREDEFINED) values ('dbcf65ca-a015-49a7-a928-af09fc2d0d2e','Бакум',0,0,'bcebe387-8faa-457d-8aa8-bdc1f7caf849',to_timestamp('17-SEP-14 02.26.37.988424000 PM','DD-MON-RR HH.MI.SSXFF AM'),0);
Insert into DBA_DIVAS.DIVISIONS (ID,FULLNAME,DELETED,IS_GROUP,PARENT_ID,VERSION,PREDEFINED) values ('286735a5-27e3-45f3-a03b-35111bdb371d','Леонова',0,0,'4a6f1aca-015f-4f97-ad06-650def877167',to_timestamp('10-OCT-14 06.40.45.922083000 PM','DD-MON-RR HH.MI.SSXFF AM'),0);
Insert into DBA_DIVAS.DIVISIONS (ID,FULLNAME,DELETED,IS_GROUP,PARENT_ID,VERSION,PREDEFINED) values ('1bcfc035-7a48-4e97-9ee6-2117e2cdb783','Еремеев',0,0,'c65a7abc-73a3-40a8-a605-f98b54d8384e',to_timestamp('13-OCT-14 05.27.35.649021000 PM','DD-MON-RR HH.MI.SSXFF AM'),0);
Insert into DBA_DIVAS.DIVISIONS (ID,FULLNAME,DELETED,IS_GROUP,PARENT_ID,VERSION,PREDEFINED) values ('321dbe32-e8ff-4197-a02e-a506921078f3','Подразделения',0,1,null,to_timestamp('27-MAY-14 09.41.28.699452000 PM','DD-MON-RR HH.MI.SSXFF AM'),1);
Insert into DBA_DIVAS.DIVISIONS (ID,FULLNAME,DELETED,IS_GROUP,PARENT_ID,VERSION,PREDEFINED) values ('bcebe387-8faa-457d-8aa8-bdc1f7caf849','Украина',0,1,'321dbe32-e8ff-4197-a02e-a506921078f3',to_timestamp('27-MAY-14 09.41.28.700656000 PM','DD-MON-RR HH.MI.SSXFF AM'),0);
Insert into DBA_DIVAS.DIVISIONS (ID,FULLNAME,DELETED,IS_GROUP,PARENT_ID,VERSION,PREDEFINED) values ('bd67037c-73b8-4dcc-90cb-c6eea3f5f309','Днепропетровск',1,0,'bcebe387-8faa-457d-8aa8-bdc1f7caf849',to_timestamp('17-SEP-14 02.13.57.871618000 PM','DD-MON-RR HH.MI.SSXFF AM'),0);
Insert into DBA_DIVAS.DIVISIONS (ID,FULLNAME,DELETED,IS_GROUP,PARENT_ID,VERSION,PREDEFINED) values ('f8dc3550-386e-4879-8da5-54d2a0b140c6','Бакум',1,0,'bd67037c-73b8-4dcc-90cb-c6eea3f5f309',to_timestamp('17-SEP-14 02.14.19.790426000 PM','DD-MON-RR HH.MI.SSXFF AM'),0);
Insert into DBA_DIVAS.DIVISIONS (ID,FULLNAME,DELETED,IS_GROUP,PARENT_ID,VERSION,PREDEFINED) values ('2298ca88-7f5e-46bd-86f8-d74bf345b33f','Cтаростина',0,0,'f8dc3550-386e-4879-8da5-54d2a0b140c6',to_timestamp('17-SEP-14 01.46.53.383219000 PM','DD-MON-RR HH.MI.SSXFF AM'),0);
Insert into DBA_DIVAS.DIVISIONS (ID,FULLNAME,DELETED,IS_GROUP,PARENT_ID,VERSION,PREDEFINED) values ('991628ec-0d01-470b-b9b1-3d9304c7272a','Манойло',0,0,'2298ca88-7f5e-46bd-86f8-d74bf345b33f',to_timestamp('17-SEP-14 01.45.22.103601000 PM','DD-MON-RR HH.MI.SSXFF AM'),0);
Insert into DBA_DIVAS.DIVISIONS (ID,FULLNAME,DELETED,IS_GROUP,PARENT_ID,VERSION,PREDEFINED) values ('c65a7abc-73a3-40a8-a605-f98b54d8384e','Близнюк',0,0,'dbcf65ca-a015-49a7-a928-af09fc2d0d2e',to_timestamp('13-OCT-14 05.27.11.695049000 PM','DD-MON-RR HH.MI.SSXFF AM'),0);
REM INSERTING into DBA_DIVAS.DIVISION_SOTR
SET DEFINE OFF;
Insert into DBA_DIVAS.DIVISION_SOTR (ID,DIV_ID,USER_ID,DESCRIPTION) values ('70a51159-4e3e-40a2-9f64-1f65e8972fa4','4a6f1aca-015f-4f97-ad06-650def877167','af4777ce-ae18-429a-a4b9-34cd6f0be725',null);
Insert into DBA_DIVAS.DIVISION_SOTR (ID,DIV_ID,USER_ID,DESCRIPTION) values ('beb596b9-c35d-4fa5-bc6a-4b4e4db26836','1bcfc035-7a48-4e97-9ee6-2117e2cdb783','304bb7f5-015a-42c6-9250-82e19d856d8f',null);
Insert into DBA_DIVAS.DIVISION_SOTR (ID,DIV_ID,USER_ID,DESCRIPTION) values ('c1298991-d3b3-4056-bb26-99803edd8459','dbcf65ca-a015-49a7-a928-af09fc2d0d2e','6b78e738-a620-420f-90e2-c3613ba91a19',null);
Insert into DBA_DIVAS.DIVISION_SOTR (ID,DIV_ID,USER_ID,DESCRIPTION) values ('34e33f12-0286-4063-965a-4d7ea17b9d1f','dbcf65ca-a015-49a7-a928-af09fc2d0d2e','7667fba7-1df5-45e6-a6fa-414fdb1f8168',null);
REM INSERTING into DBA_DIVAS.ENTRY_SETTINGS
SET DEFINE OFF;
Insert into DBA_DIVAS.ENTRY_SETTINGS (ID,TYPEDEF_ID,PLAN_ACC_DEB_ID,PLAN_ACC_KRED_ID,VERSION) values ('445bfe67-953d-4957-a1c6-79f686a80e1d','5dc3ad18-8201-4463-8c25-aded8b3e8fdb','79632fe5-2815-4312-9cd0-fc015558d1e4','8af62ee0-f9e0-4580-9585-7f07d29244fe',to_timestamp('27-MAY-14 09.41.28.748520000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.ENTRY_SETTINGS (ID,TYPEDEF_ID,PLAN_ACC_DEB_ID,PLAN_ACC_KRED_ID,VERSION) values ('59b32b14-24d8-45c7-932e-f4f0079d53f0','5dc3ad18-8201-4463-8c25-aded8b3e8fdb','647c9a20-d279-420b-a206-57570dd79aef','ac4b3605-4053-11d8-9685-0050ba83c28e',to_timestamp('27-MAY-14 09.41.28.754463000 PM','DD-MON-RR HH.MI.SSXFF AM'));
REM INSERTING into DBA_DIVAS.ENUM_ACCOUNT_TYPE
SET DEFINE OFF;
Insert into DBA_DIVAS.ENUM_ACCOUNT_TYPE (ID,FULLNAME,VERSION) values ('805a840f-f592-45f7-822a-28fab7880503','Активный',to_timestamp('27-MAY-14 09.41.11.665715000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.ENUM_ACCOUNT_TYPE (ID,FULLNAME,VERSION) values ('d5e5accd-f0f0-4d1f-8031-a26161f280cc','Пассивный',to_timestamp('27-MAY-14 09.41.11.685218000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.ENUM_ACCOUNT_TYPE (ID,FULLNAME,VERSION) values ('bc169722-1c3d-4788-8a9f-2099e176e17f','Активный/Пассивный',to_timestamp('27-MAY-14 09.41.11.685908000 PM','DD-MON-RR HH.MI.SSXFF AM'));
REM INSERTING into DBA_DIVAS.EX_RATES_SETTINGS
SET DEFINE OFF;
Insert into DBA_DIVAS.EX_RATES_SETTINGS (ID,CURR_ID,VERSION) values ('cb150239-6168-4c68-9877-6f5cae89efe5','74df5375-fd11-4c78-b0b7-b23484e8a348',to_timestamp('27-MAY-14 09.41.28.694871000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.EX_RATES_SETTINGS (ID,CURR_ID,VERSION) values ('2bb5bb6e-62d5-4173-a6bc-7d0a5fefc531','7b270952-9cb5-490e-a7c3-2eecfb5d7204',to_timestamp('22-JUN-14 11.25.19.483979000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.EX_RATES_SETTINGS (ID,CURR_ID,VERSION) values ('8992c518-3397-4468-b6b8-4dfb7dfe34cd','3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',to_timestamp('22-JUN-14 11.28.01.730656000 PM','DD-MON-RR HH.MI.SSXFF AM'));
REM INSERTING into DBA_DIVAS.FIRMS
SET DEFINE OFF;
Insert into DBA_DIVAS.FIRMS (ID,FULLNAME,PRINTNAME,UR_FIZ,INN,OKPO,VERSION,DELETED,PREDEFINED) values ('dec1bdd1-50d8-4333-8b8a-6fb465903a1f','fvcvcv','cvcvcvc',0,null,null,to_timestamp('15-SEP-14 08.02.32.276341000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,0);
Insert into DBA_DIVAS.FIRMS (ID,FULLNAME,PRINTNAME,UR_FIZ,INN,OKPO,VERSION,DELETED,PREDEFINED) values ('4853ba5a-226d-49eb-9654-b01ab5861381','Дивас','ООО Дивас',1,'1234567','111',to_timestamp('16-SEP-14 05.11.23.586907000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,0);
Insert into DBA_DIVAS.FIRMS (ID,FULLNAME,PRINTNAME,UR_FIZ,INN,OKPO,VERSION,DELETED,PREDEFINED) values ('8d2a079e-5b69-4974-b9b9-acffcb9ebf0b','hjhjh','hjhjhjhjhj',0,null,null,to_timestamp('15-SEP-14 07.55.31.019719000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,0);
REM INSERTING into DBA_DIVAS.GROUPMEMBERS
SET DEFINE OFF;
Insert into DBA_DIVAS.GROUPMEMBERS (ID,G_NAME,G_MEMBER) values ('55c9370c-9a3e-4725-bdb7-f75d4633e95f','administrator','sysdba');
Insert into DBA_DIVAS.GROUPMEMBERS (ID,G_NAME,G_MEMBER) values ('1a09861b-046a-455c-ae1e-a713101b27a5','director','test');
Insert into DBA_DIVAS.GROUPMEMBERS (ID,G_NAME,G_MEMBER) values ('27b10573-4540-4847-a737-018faf60513a','director','starka');
Insert into DBA_DIVAS.GROUPMEMBERS (ID,G_NAME,G_MEMBER) values ('3b084e89-77b8-4121-af69-535ad2c35dc2','manager','zd');
Insert into DBA_DIVAS.GROUPMEMBERS (ID,G_NAME,G_MEMBER) values ('66ae6637-2e3a-4dce-bd4f-d112b9adf592','manager','zd');
REM INSERTING into DBA_DIVAS.GROUPS
SET DEFINE OFF;
Insert into DBA_DIVAS.GROUPS (ID,FULLNAME,G_DESCRIPTION) values ('005bdcf5-71c6-4b41-9b1c-08ea3367c510','administrator',null);
Insert into DBA_DIVAS.GROUPS (ID,FULLNAME,G_DESCRIPTION) values ('f8d8b5fb-1d94-4c62-b999-2383f0420499','director',null);
Insert into DBA_DIVAS.GROUPS (ID,FULLNAME,G_DESCRIPTION) values ('a33a782f-8946-4a83-8310-f19fc69760fa','manager',null);
Insert into DBA_DIVAS.GROUPS (ID,FULLNAME,G_DESCRIPTION) values ('32090e07-6103-4295-a2db-6560a7f00689','cc_manager',null);
Insert into DBA_DIVAS.GROUPS (ID,FULLNAME,G_DESCRIPTION) values ('626411ce-6e95-4dba-b430-ba63339d47ee','cc_director',null);
REM INSERTING into DBA_DIVAS.IMPORTED_PRICE
SET DEFINE OFF;
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('8d3cdda6-0b52-4cae-8292-45e4a4d9494c',to_date('06-NOV-14','DD-MON-RR'),'Дн0000430','Кровля','Монтаж мягкой кровли','м.кв.',135,50,to_timestamp('06-NOV-14 06.15.55.045217000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('fe044487-f9c4-4bed-bc90-1f2e4f3afa70',to_date('06-NOV-14','DD-MON-RR'),'Дн0000431','Кровля','Монтаж битумной черепицы','м.кв.',225,100,to_timestamp('06-NOV-14 06.15.55.046195000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('5fa0c669-44eb-4bb2-8e87-04b39da1f706',to_date('06-NOV-14','DD-MON-RR'),'Дн0000432','Кровля','Утепление','м.кв.',105,70,to_timestamp('06-NOV-14 06.15.55.047279000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('c18130c7-6e91-4c86-9056-a3f2cf46e306',to_date('06-NOV-14','DD-MON-RR'),'Дн0000433','Кровля','Гидробарьер','м.кв.',35,5,to_timestamp('06-NOV-14 06.15.55.048146000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('13703225-1bc3-4183-9529-e35fba1ad85f',to_date('06-NOV-14','DD-MON-RR'),'Дн0000434','Кровля','Водосточка желоб','м.п.',125,70,to_timestamp('06-NOV-14 06.15.55.049035000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('d5d3db04-d4a3-4b69-ae14-59830fbd8771',to_date('06-NOV-14','DD-MON-RR'),'Дн0000435','Кровля','Водосточка труба','м.п.',115,80,to_timestamp('06-NOV-14 06.15.55.049666000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('178ffa81-bf36-4ab8-8c4f-37a3c677c414',to_date('06-NOV-14','DD-MON-RR'),'Дн0000436','Сантехника (в комплексе)','Монтаж канализации и водопровода  (разводка по ванной комнате)','точка',420,0,to_timestamp('06-NOV-14 06.15.55.050341000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('d6d9c850-a9d1-4025-9578-2ecec77cf65b',to_date('06-NOV-14','DD-MON-RR'),'Дн0000437','Сантехника (в комплексе)','Монтаж сантех приборов  (ванна  душ кабина)','шт.',610,0,to_timestamp('06-NOV-14 06.15.55.051040000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('d2ea5c4d-9312-4c7c-9e3d-83cf208df2c8',to_date('06-NOV-14','DD-MON-RR'),'Дн0000438','Сантехника (в комплексе)','Монтаж сантех. приборов (умывальник  унитаз  мойка  бойлер  полотенцесушитель)','шт.',310,0,to_timestamp('06-NOV-14 06.15.55.051619000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('af33d46d-2a87-4399-a764-c54390d129eb',to_date('06-NOV-14','DD-MON-RR'),'Дн0000439','Сантехника (в комплексе)','Установка смесителей','шт.',100,0,to_timestamp('06-NOV-14 06.15.55.052261000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('70ba239a-0a34-4efb-b031-38397364645c',to_date('06-NOV-14','DD-MON-RR'),'Дн0000440','Сантехника (в комплексе)','Монтаж стояков отопления и водоснабжения','шт.',660,0,to_timestamp('06-NOV-14 06.15.55.052900000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('06c3d209-3b06-4e68-9a7e-7325b70619b5',to_date('06-NOV-14','DD-MON-RR'),'Дн0000441','Сантехника (в комплексе)','Монтаж (замена) стояка канализации(действующего)','шт.',1050,0,to_timestamp('06-NOV-14 06.15.55.053870000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('f1262b72-e8a9-4cd1-80e5-eba016cdffbb',to_date('06-NOV-14','DD-MON-RR'),'Дн0000442','Сантехника (в комплексе)','Штробовка по бетону','шт.',65,0,to_timestamp('06-NOV-14 06.15.55.054687000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('8462e0a0-8f4e-419a-8450-b31814f5416d',to_date('06-NOV-14','DD-MON-RR'),'Дн0000443','Сантехника (в комплексе)','Установка счетчика воды','шт.',255,0,to_timestamp('06-NOV-14 06.15.55.055464000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('0b53da31-e7eb-4352-8558-53e50e86335a',to_date('06-NOV-14','DD-MON-RR'),'Дн0000444','Сантехника (в комплексе)','Монтаж радиаторов','шт.',370,0,to_timestamp('06-NOV-14 06.15.55.056133000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('4ffc2811-36f2-47b9-a5a8-9822520bd1dc',to_date('06-NOV-14','DD-MON-RR'),'Дн0000445','Сантехника (в комплексе)','Подключение стиральной машины','шт.',100,0,to_timestamp('06-NOV-14 06.15.55.056766000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('1901a679-f4df-4caf-97e3-3b4f378c1189',to_date('06-NOV-14','DD-MON-RR'),'Дн0000446','Электрика (в комплексе)','Мотаж электроразводки с установкой розетки  выключателя','точка',80,0,to_timestamp('06-NOV-14 06.15.55.057407000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('6748bdc8-7b82-4e9d-883a-de6b23c723fe',to_date('06-NOV-14','DD-MON-RR'),'Дн0000447','Электрика (в комплексе)','Монтаж электрощитка','шт.',260,0,to_timestamp('06-NOV-14 06.15.55.058055000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('0d19c783-24cb-4037-b4c5-43510e5630ff',to_date('06-NOV-14','DD-MON-RR'),'Дн0000448','Электрика (в комплексе)','Штробовка ','м/п',55,0,to_timestamp('06-NOV-14 06.15.55.059488000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('85b8a3bf-f7db-4377-b38e-b488f90f7773',to_date('06-NOV-14','DD-MON-RR'),'Дн0000449','Электрика (в комплексе)','Замена электроарматуры','шт.',50,0,to_timestamp('06-NOV-14 06.15.55.060165000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('9ae66491-dafc-4384-b383-f3040f0b2416',to_date('06-NOV-14','DD-MON-RR'),'Дн0000450','Электрика (в комплексе)','Протяжка проводов','м.п.',10,0,to_timestamp('06-NOV-14 06.15.55.060792000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('c9cb27b1-6bf9-4c5b-8a27-2ec8606bbd26',to_date('06-NOV-14','DD-MON-RR'),'Дн0000451','Электрика (в комплексе)','Монтаж коробов для наружной разводки','м.п.',30,0,to_timestamp('06-NOV-14 06.15.55.061457000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('ce1c2764-2f9a-4744-989e-798fbeb30a2e',to_date('06-NOV-14','DD-MON-RR'),'Дн0000452','Балкон','Дерево демонтаж','м2',15,0,to_timestamp('06-NOV-14 06.15.55.062122000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('b95da3cc-1113-4612-9c02-d934eccfb20a',to_date('06-NOV-14','DD-MON-RR'),'Дн0000453','Балкон','Сложная расчистка с сохранением дерево','м2',45,0,to_timestamp('06-NOV-14 06.15.55.062774000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('7473a242-a1aa-4e89-b570-2bc69cac68c5',to_date('06-NOV-14','DD-MON-RR'),'Дн0000454','Балкон','Сложная расчистка с особой осторожностью дерево','м2',45,0,to_timestamp('06-NOV-14 06.15.55.063419000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('debc8e4d-9a04-4ffd-aee5-294d84a80afd',to_date('06-NOV-14','DD-MON-RR'),'Дн0000455','Балкон','Стекло демонтаж','м2',25,0,to_timestamp('06-NOV-14 06.15.55.064089000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('f2936ff3-45fe-4a0f-a7ec-72c46083eb0c',to_date('06-NOV-14','DD-MON-RR'),'Дн0000456','Балкон','Сложная расчистка с сохранением стекло','м2',75,0,to_timestamp('06-NOV-14 06.15.55.064616000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('16205b55-c22c-4297-9de5-082d5d9b37d1',to_date('06-NOV-14','DD-MON-RR'),'Дн0000457','Балкон','Сложная расчистка с особой осторожностью стекло','м2',75,0,to_timestamp('06-NOV-14 06.15.55.065333000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('8be52512-7947-4641-8ed0-1ce44b6a0cad',to_date('06-NOV-14','DD-MON-RR'),'Дн0000458','Балкон','Метал демонтаж','м2',40,0,to_timestamp('06-NOV-14 06.15.55.066068000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('6d7a4ee3-e82e-489a-a63f-482fbb99da67',to_date('06-NOV-14','DD-MON-RR'),'Дн0000459','Балкон','Сложная расчистка с сохранением метал','м2',120,0,to_timestamp('06-NOV-14 06.15.55.066596000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('d2a5df9e-49ce-4041-ae0d-08fd5ec80a18',to_date('06-NOV-14','DD-MON-RR'),'Дн0000460','Балкон','Сложная расчистка с особой осторожностью метал','м2',120,0,to_timestamp('06-NOV-14 06.15.55.067346000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('2fe1fd27-37d0-421a-b583-ef3c09727615',to_date('06-NOV-14','DD-MON-RR'),'Дн0000461','Балкон','Бетон демонтаж','м2',150,0,to_timestamp('06-NOV-14 06.15.55.067930000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('12118404-2da1-4870-b575-d2649df335bf',to_date('06-NOV-14','DD-MON-RR'),'Дн0000462','Балкон','Другое демонтаж','м2',25,0,to_timestamp('06-NOV-14 06.15.55.068487000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('5ac45df9-7310-4f72-b577-12167e76ef14',to_date('06-NOV-14','DD-MON-RR'),'Дн0000463','Балкон','Сложная расчистка с сохранением другое','м2',75,0,to_timestamp('06-NOV-14 06.15.55.069079000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('114b6faa-5346-43e9-b4df-0c1466f02441',to_date('06-NOV-14','DD-MON-RR'),'Дн0000464','Балкон','Сложная расчистка с особой осторожностью другое','м2',75,0,to_timestamp('06-NOV-14 06.15.55.069473000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('1873d0b1-b469-410b-920d-39312e62e1c6',to_date('06-NOV-14','DD-MON-RR'),'Дн0000465','Балкон','Конструкции внутри балкона ( разобрать)','шт.',240,0,to_timestamp('06-NOV-14 06.15.55.070092000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('45e73f11-f382-4602-a637-b03203829317',to_date('06-NOV-14','DD-MON-RR'),'Дн0000466','Балкон','Очистка балкона от мебели','шт.',120,0,to_timestamp('06-NOV-14 06.15.55.070836000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('81831b1b-6fce-4fb0-81c8-bb1c1967c6b3',to_date('06-NOV-14','DD-MON-RR'),'Дн0000467','Балкон','Металоподготовка','м.п.',115,35,to_timestamp('06-NOV-14 06.15.55.071367000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('f74832a4-89b2-4866-bfa7-d71deb9eb337',to_date('06-NOV-14','DD-MON-RR'),'Дн0000468','Балкон','Профлист кровля','м2',250,120,to_timestamp('06-NOV-14 06.15.55.071888000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('5b538016-ec52-4b26-98d5-1680e7263eac',to_date('06-NOV-14','DD-MON-RR'),'Дн0000469','Балкон','Обесшумка','м2',60,20,to_timestamp('06-NOV-14 06.15.55.072403000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('2f1a7e61-3a37-49f4-8213-85d15528caeb',to_date('06-NOV-14','DD-MON-RR'),'Дн0000470','Балкон','OSB+гидробарьер','м2',105,65,to_timestamp('06-NOV-14 06.15.55.073343000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('4cb77b51-9b04-43e9-a4f0-ed78b61f582b',to_date('06-NOV-14','DD-MON-RR'),'Дн0000471','Балкон','Нащельник','м2',250,80,to_timestamp('06-NOV-14 06.15.55.073907000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('12420504-41b3-4753-94e9-e8874c626eb5',to_date('06-NOV-14','DD-MON-RR'),'Дн0000472','Балкон','Изовер','м2',65,25,to_timestamp('06-NOV-14 06.15.55.074419000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('1487e827-f621-4dc6-92fe-6aa7f4204994',to_date('06-NOV-14','DD-MON-RR'),'Дн0000473','Балкон','Гидробарьер','м2',25,7,to_timestamp('06-NOV-14 06.15.55.074970000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('92189f81-c44b-4225-be1c-5bd4ca3ba520',to_date('06-NOV-14','DD-MON-RR'),'Дн0000474','Балкон','Высотные работы','м2',50,0,to_timestamp('06-NOV-14 06.15.55.075502000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('d8cfcc23-b088-4f9f-9872-b289e273a710',to_date('06-NOV-14','DD-MON-RR'),'Дн0000475','Балкон','Сайдинг','м2',260,130,to_timestamp('06-NOV-14 06.15.55.076040000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('ea7d74eb-8f78-4f7d-816e-7e58af56cd38',to_date('06-NOV-14','DD-MON-RR'),'Дн0000476','Балкон','Утепление','м2',60,25,to_timestamp('06-NOV-14 06.15.55.076485000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('7c2981fc-72cd-4c22-985f-b04575f07fd0',to_date('06-NOV-14','DD-MON-RR'),'Дн0000477','Балкон','Выравнивание пола','м2',185,140,to_timestamp('06-NOV-14 06.15.55.077012000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('95bbc6ce-460a-4bc9-993d-a557a431a926',to_date('06-NOV-14','DD-MON-RR'),'Дн0000478','Балкон','Укладка линолиум','м2',115,85,to_timestamp('06-NOV-14 06.15.55.078301000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('8a72c03f-b165-4727-8988-b893253d9ca7',to_date('06-NOV-14','DD-MON-RR'),'Дн0000479','Балкон','Укладка ламината с подложкой ( матер клиента) ','м2',115,0,to_timestamp('06-NOV-14 06.15.55.078819000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('74562393-e48f-4279-944e-e41e82e33f76',to_date('06-NOV-14','DD-MON-RR'),'Дн0000480','Балкон','Покрытие пола плиткой (материал клиента)','м2',205,0,to_timestamp('06-NOV-14 06.15.55.079384000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('e7e752f4-7c10-42fd-b043-2e23e74c0453',to_date('06-NOV-14','DD-MON-RR'),'Дн0000481','Балкон','Плинтус','м.п.',30,15,to_timestamp('06-NOV-14 06.15.55.079910000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('01e04a7f-3ae3-4eed-9219-4ce31b9fc420',to_date('06-NOV-14','DD-MON-RR'),'Дн0000482','Балкон','Пластик','м2',230,120,to_timestamp('06-NOV-14 06.15.55.080436000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('5155e73e-d28d-4f07-93c5-b9335d5c3ddb',to_date('06-NOV-14','DD-MON-RR'),'Дн0000483','Балкон','Пластик откосы','м.п.',50,20,to_timestamp('06-NOV-14 06.15.55.080949000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('3f3dae93-211c-406e-bcde-92b714c2fd68',to_date('06-NOV-14','DD-MON-RR'),'Дн0000484','Балкон','Гипсокартон','м2',185,70,to_timestamp('06-NOV-14 06.15.55.081461000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('5db3307b-4b76-4734-998c-750cccafc6d7',to_date('06-NOV-14','DD-MON-RR'),'Дн0000485','Балкон','Гипсокартон шпаклевка под покраску','м2',85,20,to_timestamp('06-NOV-14 06.15.55.082059000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('7e059151-eba8-46ac-b9a4-2870a26bcb7f',to_date('06-NOV-14','DD-MON-RR'),'Дн0000486','Балкон','Гипсокартон шпаклевка под обои','м2',70,15,to_timestamp('06-NOV-14 06.15.55.082524000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('b926fd0c-73fd-49f7-9f8b-3aa517cddfa1',to_date('06-NOV-14','DD-MON-RR'),'Дн0000487','Балкон','Гипсокартон покраска','м2',40,10,to_timestamp('06-NOV-14 06.15.55.083334000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('58fe8901-15bf-483c-8e5e-cd5f706cc779',to_date('06-NOV-14','DD-MON-RR'),'Дн0000488','Балкон','Гипсокартон поклейка обоев','м2',60,0,to_timestamp('06-NOV-14 06.15.55.084167000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('6f3fa57b-32b6-4c63-8073-ec09b18656da',to_date('06-NOV-14','DD-MON-RR'),'Дн0000489','Балкон','Утепление','м2',45,10,to_timestamp('06-NOV-14 06.15.55.085135000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('da12dd78-0b29-4f7d-948c-a19f9e39ba06',to_date('06-NOV-14','DD-MON-RR'),'Дн0000490','Балкон','Подоконник с матер до 0 5м','м.п.',70,70,to_timestamp('06-NOV-14 06.15.55.085797000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('05b4916f-e3d9-45a1-86fb-245da172ecf2',to_date('06-NOV-14','DD-MON-RR'),'Дн0000491','Балкон','Точка электрики','точка',85,0,to_timestamp('06-NOV-14 06.15.55.086537000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('d262dcdf-3787-4c1f-a273-bc19ba1c7543',to_date('06-NOV-14','DD-MON-RR'),'Дн0000492','Балкон','Протяжка проводов','м.п.',10,0,to_timestamp('06-NOV-14 06.15.55.087320000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('fc097b80-f3bf-4bd5-a1ae-33212c8a3895',to_date('06-NOV-14','DD-MON-RR'),'Дн0000493','Балкон','Веревка потолочная','шт.',500,200,to_timestamp('06-NOV-14 06.15.55.088295000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('6399de1f-f135-49c2-a680-228654f6aecf',to_date('06-NOV-14','DD-MON-RR'),'Дн0000494','Балкон','Веревка настенная','шт.',500,200,to_timestamp('06-NOV-14 06.15.55.089188000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('f469b76a-aa27-40b3-b6da-3730d88efa14',to_date('06-NOV-14','DD-MON-RR'),'Дн0000495','Фасад','Межпанельные швы (мин. 2000 грн)','м.п.',150,30,to_timestamp('06-NOV-14 06.15.55.089843000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('e380530d-465f-404e-bdc3-94fdf4df3f10',to_date('06-NOV-14','DD-MON-RR'),'Дн0000496','Фасад','Поклейка пенопласта (50 мм) (грунтовка+поклейка+дюбеление)','м2',110,37,to_timestamp('06-NOV-14 06.15.55.090711000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('26387a79-04df-4929-80ca-9a8c6d90e6d9',to_date('06-NOV-14','DD-MON-RR'),'Дн0000497','Фасад','Поклейка пенопласта (100 мм) (грунтовка+поклейка+дюбеление)','м2',117,60,to_timestamp('06-NOV-14 06.15.55.091783000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('3b235518-b9fc-4c76-b086-427997913ad4',to_date('06-NOV-14','DD-MON-RR'),'Дн0000498','Фасад','Армировка (штукатурка+армировка+штукатурка)','м2',105,18,to_timestamp('06-NOV-14 06.15.55.092765000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('00d2ec33-04d5-43a1-bb6a-3db3ecc7577d',to_date('06-NOV-14','DD-MON-RR'),'Дн0000499','Фасад','Покраска','м2',35,10,to_timestamp('06-NOV-14 06.15.55.093666000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('83b44837-8e85-4a8a-bf5a-d538f2d77475',to_date('06-NOV-14','DD-MON-RR'),'Дн0000500','Фасад','Грунт краска (декоративн штукатурка)','м2',35,10,to_timestamp('06-NOV-14 06.15.55.094556000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('7bb7b688-e51b-4bb2-92c9-93cc2ed5de87',to_date('06-NOV-14','DD-MON-RR'),'Дн0000501','Фасад','Декоративная штукатурка (2 5 зерно)','м2',120,66,to_timestamp('06-NOV-14 06.15.55.095602000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('e505f0d1-14b2-499a-82d0-24e758cad850',to_date('06-NOV-14','DD-MON-RR'),'Дн0000502','Фасад','Декоративная штукатурка (1 5 зерно)','м2',105,40,to_timestamp('06-NOV-14 06.15.55.096518000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('26cf678e-4a1c-46a0-8704-198c89a1180d',to_date('06-NOV-14','DD-MON-RR'),'Дн0000503','Фасад','Грунт контакт для балкона','м2',40,15,to_timestamp('06-NOV-14 06.15.55.097470000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('b5b8e2e1-0c21-4e9e-bddd-0103c49fa1f7',to_date('06-NOV-14','DD-MON-RR'),'Дн0000504','Фасад','Клей пена на балкон','м2',40,10,to_timestamp('06-NOV-14 06.15.55.098357000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('bd2524d3-9e42-4a62-a488-3e23014a3366',to_date('06-NOV-14','DD-MON-RR'),'Дн0000505','Фасад','Высотные работы','м2',50,0,to_timestamp('06-NOV-14 06.15.55.099256000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('78206cc4-62d0-4985-a6a9-efa58b83790a',to_date('06-NOV-14','DD-MON-RR'),'Дн0000506','Решетки  двери','Изготовление двери (метал) с 2х сторон карточки мдф утепление пенопласт. Эконом','шт.',3500,1300,to_timestamp('06-NOV-14 06.15.55.100117000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('a83c83a9-2dd4-4e66-b0ec-54ff760e2820',to_date('06-NOV-14','DD-MON-RR'),'Дн0000507','Решетки  двери','Изготовление двери (метал) с 2х сторон карточки мдф утепление пенопласт. Норма','шт.',3900,1500,to_timestamp('06-NOV-14 06.15.55.100770000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('33cc7041-c567-4271-98ed-c0f248b16891',to_date('06-NOV-14','DD-MON-RR'),'Дн0000508','Решетки  двери','Изготовление решетки (простая из круглой арматуры)','м2',330,100,to_timestamp('06-NOV-14 06.15.55.101658000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('12cf12a3-b027-40a2-92d3-00e27c857414',to_date('06-NOV-14','DD-MON-RR'),'Дн0000509','Решетки  двери','Изготовление решетки (дутая из квадрата)','м2',460,150,to_timestamp('06-NOV-14 06.15.55.102642000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('2314d09b-277c-4e76-adca-5674725ff8eb',to_date('06-NOV-14','DD-MON-RR'),'Дн0000510','Решетки  двери','Решетки открывной элемент (петли  замок)','шт.',310,60,to_timestamp('06-NOV-14 06.15.55.103622000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('c491cfd4-cb21-499e-95ac-34ea24b87b84',to_date('06-NOV-14','DD-MON-RR'),'Дн0000511','Решетки  двери','Установка решетки','шт.',300,0,to_timestamp('06-NOV-14 06.15.55.104566000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('4114bf31-00d6-4b38-9a98-8bb3def09d0d',to_date('06-NOV-14','DD-MON-RR'),'Дн0000512','Решетки  двери','Установка дверей межкомнатных одинарные с ручкой','шт.',450,0,to_timestamp('06-NOV-14 06.15.55.105508000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('70d2bf1f-eb7f-4ed0-a0f2-9ea873764565',to_date('06-NOV-14','DD-MON-RR'),'Дн0000513','Решетки  двери','Установка дверей межкомнатных двойные','шт.',450,0,to_timestamp('06-NOV-14 06.15.55.106474000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('da362b90-ad6b-4ebc-8a8c-c0381d3ffc9c',to_date('06-NOV-14','DD-MON-RR'),'Дн0000514','Решетки  двери','Установка дверей раздвижные распашные','шт.',550,0,to_timestamp('06-NOV-14 06.15.55.107547000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('b8aafd8d-5da0-4211-bd4c-62c12f8714fe',to_date('06-NOV-14','DD-MON-RR'),'Дн0000515','Решетки  двери','Установка дверей входные одинарные','шт.',550,0,to_timestamp('06-NOV-14 06.15.55.108452000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('3a20fb36-2228-4203-baae-c6c3926124fe',to_date('06-NOV-14','DD-MON-RR'),'Дн0000516','Решетки  двери','Установка дверей входные двойные','шт.',600,0,to_timestamp('06-NOV-14 06.15.55.109363000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('83027e4c-b313-4059-ab70-f0289b173ea2',to_date('06-NOV-14','DD-MON-RR'),'Дн0000517','Натяжной потолок (в комплексе)','Потолок натяжной ( < 5 м2 ) глянец','м2',1650,0,to_timestamp('06-NOV-14 06.15.55.110231000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('ad769a56-c0e2-4d4a-8d30-568305213db4',to_date('06-NOV-14','DD-MON-RR'),'Дн0000518','Натяжной потолок (в комплексе)','Потолок натяжной ( < 5 м2 ) мат','м2',1450,0,to_timestamp('06-NOV-14 06.15.55.111187000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('e4370efa-352e-4641-9fa1-f4e513607330',to_date('06-NOV-14','DD-MON-RR'),'Дн0000519','Натяжной потолок (в комплексе)','Потолок натяжной ( 5 - 10 м2) глянец','м2',260,0,to_timestamp('06-NOV-14 06.15.55.112082000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('1fd35e66-ee8d-4130-9911-9dd20e3eb8a6',to_date('06-NOV-14','DD-MON-RR'),'Дн0000299','ОБОИ','Снятие старых обоев','м.кв',30,0,to_timestamp('06-NOV-14 06.15.54.917582000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('727a6485-afe7-4012-a554-69696823beb7',to_date('06-NOV-14','DD-MON-RR'),'Дн0000300','ОБОИ','Смывка краски соскабливание','м.кв',50,0,to_timestamp('06-NOV-14 06.15.54.933362000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('4b3cda12-90ca-47e5-b11d-4fea61df3d66',to_date('06-NOV-14','DD-MON-RR'),'Дн0000301','ОБОИ','Штукатурка стен маячная','м.кв',165,40,to_timestamp('06-NOV-14 06.15.54.934344000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('96143a6f-c6db-4cec-9ecc-bec2967b9fe2',to_date('06-NOV-14','DD-MON-RR'),'Дн0000302','ОБОИ','Набивка сетки','м.кв',30,10,to_timestamp('06-NOV-14 06.15.54.935138000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('1ba6f548-d0c4-455b-a815-503c6d4eaa1a',to_date('06-NOV-14','DD-MON-RR'),'Дн0000303','ОБОИ','Установка перфоугла','м.п.',20,7,to_timestamp('06-NOV-14 06.15.54.935738000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('9c0d9a27-2de1-4acd-822c-036e7a2a359c',to_date('06-NOV-14','DD-MON-RR'),'Дн0000304','ОБОИ','Установка наклонного перфоугла','м.п.',25,7,to_timestamp('06-NOV-14 06.15.54.936385000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('db23e1d4-88c0-4e63-bf72-e7ead0b3d178',to_date('06-NOV-14','DD-MON-RR'),'Дн0000305','ОБОИ','Шпаклевка стен под обои','м.кв.',65,30,to_timestamp('06-NOV-14 06.15.54.937007000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('9c7ba27d-fafd-4585-bab4-4e5669d62299',to_date('06-NOV-14','DD-MON-RR'),'Дн0000306','ОБОИ','Шпаклевка радиусных стен под обои','м.кв.',100,30,to_timestamp('06-NOV-14 06.15.54.938147000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('751ea01d-d9c2-4edb-9c8d-453a0bab70a9',to_date('06-NOV-14','DD-MON-RR'),'Дн0000307','ОБОИ','Поклейка флизелина на стены и потолок','м.кв.',65,25,to_timestamp('06-NOV-14 06.15.54.938986000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('db13b31e-d498-4d64-8d3c-f4cfb097b6cc',to_date('06-NOV-14','DD-MON-RR'),'Дн0000308','ОБОИ','Поклейка декоплинтуса пенопластового до 10см','м.п.',35,10,to_timestamp('06-NOV-14 06.15.54.940412000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('641a2a16-da0f-4323-a7cf-3d4b9e50ec44',to_date('06-NOV-14','DD-MON-RR'),'Дн0000309','ОБОИ','Поклейка декоплинтуса пенопластового свыше 10см','м.п.',55,15,to_timestamp('06-NOV-14 06.15.54.941046000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('a821b398-c69b-4164-8e16-1795e34d7e69',to_date('06-NOV-14','DD-MON-RR'),'Дн0000310','ОБОИ','Установка пенополиуретанового декоплинтуса','м.п.',115,50,to_timestamp('06-NOV-14 06.15.54.941485000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('6cd6e3c6-4851-4572-b781-1cdb5cd4f7c3',to_date('06-NOV-14','DD-MON-RR'),'Дн0000311','ОБОИ','Грунтовка стен и потолков','м.кв.',23,2,to_timestamp('06-NOV-14 06.15.54.942060000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('cf65150f-b2c3-4293-9d16-eb0264f7468d',to_date('06-NOV-14','DD-MON-RR'),'Дн0000312','ОБОИ','Поклейка обоев под покраску','м.кв.',65,0,to_timestamp('06-NOV-14 06.15.54.942554000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('9ad483ae-7fe6-443a-9c6a-079792e39fec',to_date('06-NOV-14','DD-MON-RR'),'Дн0000313','ОБОИ','Поклейка обоев виниловых','м.кв.',65,0,to_timestamp('06-NOV-14 06.15.54.943198000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('5022ffdf-a0b0-4bcf-97fe-520973371997',to_date('06-NOV-14','DD-MON-RR'),'Дн0000314','ОБОИ','Поклейка обоев структурных','м.кв.',65,0,to_timestamp('06-NOV-14 06.15.54.943809000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('7641a2ec-527d-4a30-81c6-3f9158b6fb9c',to_date('06-NOV-14','DD-MON-RR'),'Дн0000315','ОБОИ','Поклейка обоев тканевых','м.кв.',140,0,to_timestamp('06-NOV-14 06.15.54.944414000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('e26c8f7a-bcd0-4375-9f4b-aef1ee697f12',to_date('06-NOV-14','DD-MON-RR'),'Дн0000316','ОБОИ','Поклейка обоев бамбуковых','м.кв.',140,0,to_timestamp('06-NOV-14 06.15.54.945068000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('5448333c-41d8-474f-8511-b857c666f66a',to_date('06-NOV-14','DD-MON-RR'),'Дн0000317','Покраска','Снятие старых обоев','м.кв',30,0,to_timestamp('06-NOV-14 06.15.54.945644000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('318029f5-6573-42f0-8c40-93b309b4ae1b',to_date('06-NOV-14','DD-MON-RR'),'Дн0000318','Покраска','Смывка краски соскабливание','м.кв',50,0,to_timestamp('06-NOV-14 06.15.54.946557000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('9774980c-da46-4a61-ba85-ec8b10f352c0',to_date('06-NOV-14','DD-MON-RR'),'Дн0000319','Покраска','Штукатурка стен маячная','м.кв',165,40,to_timestamp('06-NOV-14 06.15.54.947786000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('aee3ec46-2cb5-467f-90b9-c1b6863c6fd3',to_date('06-NOV-14','DD-MON-RR'),'Дн0000320','Покраска','Набивка сетки','м.кв',30,10,to_timestamp('06-NOV-14 06.15.54.948738000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('5366c8cc-5688-4e05-922f-ee21f810518b',to_date('06-NOV-14','DD-MON-RR'),'Дн0000321','Покраска','Шпаклевка стен под покраску','м.кв.',110,30,to_timestamp('06-NOV-14 06.15.54.949690000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('8ca28976-f022-4133-b0f9-17126753ca1e',to_date('06-NOV-14','DD-MON-RR'),'Дн0000322','Покраска','Шпаклевка радиусных стен под покраску','м.кв.',145,30,to_timestamp('06-NOV-14 06.15.54.950855000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('84364f2e-3d4c-48ac-a700-9e3c29db35bd',to_date('06-NOV-14','DD-MON-RR'),'Дн0000323','Покраска','Шпаклевка радиусного потолка под покраску','м.п.',160,30,to_timestamp('06-NOV-14 06.15.54.951768000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('b86896aa-8446-49f9-b1f3-4bed259848ed',to_date('06-NOV-14','DD-MON-RR'),'Дн0000324','Покраска','Шпаклевка прямого потолка под покраску','м.кв.',110,30,to_timestamp('06-NOV-14 06.15.54.952641000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('2f0bd77f-2673-4f94-8d37-c42314237b65',to_date('06-NOV-14','DD-MON-RR'),'Дн0000325','Покраска','Установка перфоугла','м.п.',30,7,to_timestamp('06-NOV-14 06.15.54.953537000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('921cc3a4-9727-492a-813e-ee0e1d8561a3',to_date('06-NOV-14','DD-MON-RR'),'Дн0000326','Покраска','Установка наклонного перфоугла','м.п.',25,7,to_timestamp('06-NOV-14 06.15.54.954359000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('890130e4-17c2-46ae-85ab-5aaa6bc91bbb',to_date('06-NOV-14','DD-MON-RR'),'Дн0000327','Покраска','Покраска стен  потолков и обоев','м.кв.',60,15,to_timestamp('06-NOV-14 06.15.54.955372000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('97a27931-75a5-4946-9aa4-a14851e753dc',to_date('06-NOV-14','DD-MON-RR'),'Дн0000328','Покраска','Компресорная покраска стен и потолков','м.кв.',70,20,to_timestamp('06-NOV-14 06.15.54.956470000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('fae9c6ef-9686-4a89-80c8-1ac978ed49c8',to_date('06-NOV-14','DD-MON-RR'),'Дн0000329','Покраска','Грунтовка стен и потолков','м.кв.',23,2,to_timestamp('06-NOV-14 06.15.54.957319000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('6c0ff258-79f0-4f76-9269-29257095bc6a',to_date('06-NOV-14','DD-MON-RR'),'Дн0000330','Декоративная штукатурка и шпаклевка','Снятие старых обоев','м.кв',30,0,to_timestamp('06-NOV-14 06.15.54.960343000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('f35db199-0444-4625-8f5b-4df9a2e4f085',to_date('06-NOV-14','DD-MON-RR'),'Дн0000331','Декоративная штукатурка и шпаклевка','Смывка краски соскабливание','м.кв',50,0,to_timestamp('06-NOV-14 06.15.54.961702000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('66e4d5da-691c-49ce-b2ff-dc9cc59d35e2',to_date('06-NOV-14','DD-MON-RR'),'Дн0000332','Декоративная штукатурка и шпаклевка','Штукатурка стен маячная','м.кв',165,40,to_timestamp('06-NOV-14 06.15.54.962906000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('ff868a6c-1f20-4860-99df-0d3a835c79ea',to_date('06-NOV-14','DD-MON-RR'),'Дн0000333','Декоративная штукатурка и шпаклевка','Набивка сетки','м.кв',30,10,to_timestamp('06-NOV-14 06.15.54.963929000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('5778e7f4-50a7-4181-81ba-82496bbfd283',to_date('06-NOV-14','DD-MON-RR'),'Дн0000334','Декоративная штукатурка и шпаклевка','Грунтовка стен и потолков','м.кв.',23,2,to_timestamp('06-NOV-14 06.15.54.964979000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('62ddfeca-8b78-4c72-a03d-47e0571d6e15',to_date('06-NOV-14','DD-MON-RR'),'Дн0000335','Декоративная штукатурка и шпаклевка','Устройство декоративной шпатлёвки ','м.кв.',90,10,to_timestamp('06-NOV-14 06.15.54.965976000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('ffa7ee0c-d5cd-46d0-8c15-dd0714da9111',to_date('06-NOV-14','DD-MON-RR'),'Дн0000336','Декоративная штукатурка и шпаклевка','Устройство декоративной штукатурки ','м.кв.',95,15,to_timestamp('06-NOV-14 06.15.54.966910000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('24ebfc8b-61d8-40ba-b004-430803ea94d4',to_date('06-NOV-14','DD-MON-RR'),'Дн0000337','Пол','Демонтаж половой доски','м.кв.',55,0,to_timestamp('06-NOV-14 06.15.54.968146000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('eca528c6-2973-4bbf-ad52-a6458aab9d54',to_date('06-NOV-14','DD-MON-RR'),'Дн0000338','Пол','Демонтаж стяжки (до 50 мм)','м.кв.',55,0,to_timestamp('06-NOV-14 06.15.54.969341000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('d3c13563-8c85-4152-998f-2253ee46acdc',to_date('06-NOV-14','DD-MON-RR'),'Дн0000339','Пол','Демонтаж стяжки (свыше 50 мм)','м.кв.',85,0,to_timestamp('06-NOV-14 06.15.54.970626000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('41562e99-2c11-47aa-bd68-b863273b9681',to_date('06-NOV-14','DD-MON-RR'),'Дн0000340','Пол','Демонтаж напольных покрытий','м.кв.',40,0,to_timestamp('06-NOV-14 06.15.54.971933000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('dcaeeb5b-e4ae-4f93-8758-4d5f043e62da',to_date('06-NOV-14','DD-MON-RR'),'Дн0000341','Пол','Гидроизоляция пола','м.кв.',30,3,to_timestamp('06-NOV-14 06.15.54.973087000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('2a44a5a1-0244-4cb4-b31b-f637cac38e49',to_date('06-NOV-14','DD-MON-RR'),'Дн0000342','Пол','Осыпка пола керамзитом','м.кв.',65,100,to_timestamp('06-NOV-14 06.15.54.975639000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('980bcacc-8752-49cb-841e-5fb3aebd040c',to_date('06-NOV-14','DD-MON-RR'),'Дн0000343','Пол','Утепление пола пенопластом','м.кв.',60,50,to_timestamp('06-NOV-14 06.15.54.976791000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('cc890a94-3e36-419c-a30a-5fd986da6b99',to_date('06-NOV-14','DD-MON-RR'),'Дн0000344','Пол','Устройство цементной стяжки пола до 50 мм','м.кв.',185,120,to_timestamp('06-NOV-14 06.15.54.977738000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('b760fe8d-c2f2-469f-945e-f2fd5c5b617b',to_date('06-NOV-14','DD-MON-RR'),'Дн0000345','Пол','Устройство цементной стяжки пола до 100 мм','м.кв.',245,180,to_timestamp('06-NOV-14 06.15.54.978918000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('60a82063-130d-4353-844e-93d8ab1e5fcf',to_date('06-NOV-14','DD-MON-RR'),'Дн0000346','Пол','Заливка пола нивелирмассой','м.кв.',75,40,to_timestamp('06-NOV-14 06.15.54.979799000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('f31cd7f7-cec7-435d-8998-2f1a8bd7e566',to_date('06-NOV-14','DD-MON-RR'),'Дн0000347','Пол','Укладка OSB на пол','м.кв.',125,100,to_timestamp('06-NOV-14 06.15.54.980689000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('6b3992ca-1ab2-4cbf-a477-0f8ec62a3beb',to_date('06-NOV-14','DD-MON-RR'),'Дн0000348','Пол','Укладка паркетной доски на клей','м.кв.',155,0,to_timestamp('06-NOV-14 06.15.54.981417000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('f61a4780-d7be-4a0f-8be0-27353c33332d',to_date('06-NOV-14','DD-MON-RR'),'Дн0000349','Пол','Укладка ламината','м.кв.',65,0,to_timestamp('06-NOV-14 06.15.54.982063000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('0f9e4156-5ba7-460b-8054-76414b53ddd9',to_date('06-NOV-14','DD-MON-RR'),'Дн0000350','Пол','Укладка линолеума','м.кв.',110,85,to_timestamp('06-NOV-14 06.15.54.982596000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('96ef92a1-8067-4f5e-8beb-c0076ff4d291',to_date('06-NOV-14','DD-MON-RR'),'Дн0000351','Пол','Укладка ковролина','м.кв.',105,85,to_timestamp('06-NOV-14 06.15.54.983290000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('006d0d1f-cb02-405f-9189-aed416745cf1',to_date('06-NOV-14','DD-MON-RR'),'Дн0000352','Пол','Установка пластикового плинтуса','м.п.',50,20,to_timestamp('06-NOV-14 06.15.54.983966000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('d068ee57-c08a-406a-8f42-113afb466e42',to_date('06-NOV-14','DD-MON-RR'),'Дн0000353','Пол','Установка деревяного плинтуса','м.п.',75,35,to_timestamp('06-NOV-14 06.15.54.984558000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('68589a5b-ebc4-4514-9473-7441e794d244',to_date('06-NOV-14','DD-MON-RR'),'Дн0000354','Пол','Монтаж  плитки ( с клеем)','м.кв.',170,20,to_timestamp('06-NOV-14 06.15.54.985241000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('dab20cd6-9eab-4b19-b05a-cc86413fc8b6',to_date('06-NOV-14','DD-MON-RR'),'Дн0000355','Пол','Установка порожка','м.п.',90,30,to_timestamp('06-NOV-14 06.15.54.985898000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('37cec6e4-daca-4f1b-8d80-ef19945c46bb',to_date('06-NOV-14','DD-MON-RR'),'Дн0000356','Гипсокартон','Монтаж горизонтальго потолка г/к','м.кв.',125,70,to_timestamp('06-NOV-14 06.15.54.986710000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('1bcd23ae-12d0-4adc-a9dd-dea4b5b0ffa1',to_date('06-NOV-14','DD-MON-RR'),'Дн0000357','Гипсокартон',' Монтаж наклонного потолка г/к','м.кв.',140,70,to_timestamp('06-NOV-14 06.15.54.987394000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('af507cb1-f6fa-42ba-a501-f9550c0cad78',to_date('06-NOV-14','DD-MON-RR'),'Дн0000358','Гипсокартон',' Монтаж радиусного потолка г/к','м.п.',210,105,to_timestamp('06-NOV-14 06.15.54.988068000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('54498c98-17ca-4979-9646-975695e9a74b',to_date('06-NOV-14','DD-MON-RR'),'Дн0000359','Гипсокартон',' Монтаж вертикальных стен г/к','м.кв.',135,70,to_timestamp('06-NOV-14 06.15.54.988571000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('433c2bc6-94f6-4892-92e3-6870d3aa782c',to_date('06-NOV-14','DD-MON-RR'),'Дн0000360','Гипсокартон',' Монтаж наклонных стен г/к','м.кв.',140,70,to_timestamp('06-NOV-14 06.15.54.989218000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('c265cbf3-b012-4872-b266-67b0dc88a8fe',to_date('06-NOV-14','DD-MON-RR'),'Дн0000361','Гипсокартон',' Монтаж радиусных стен г/к','м.кв.',210,105,to_timestamp('06-NOV-14 06.15.54.989848000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('62c29352-893c-4e0e-98c7-0a1261634eb8',to_date('06-NOV-14','DD-MON-RR'),'Дн0000362','Гипсокартон','Монтаж вертикальных перегородок г/к  (две стороны)','м.кв.',220,120,to_timestamp('06-NOV-14 06.15.54.990539000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('43024ed0-1087-4160-aa66-efabfa058fdd',to_date('06-NOV-14','DD-MON-RR'),'Дн0000363','Гипсокартон',' Монтаж радиусных перегородок г/к','м.кв.',260,180,to_timestamp('06-NOV-14 06.15.54.991198000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('561c487d-5758-4896-813f-dca433edc30b',to_date('06-NOV-14','DD-MON-RR'),'Дн0000364','Гипсокартон',' Дошивка второго слоя г/к','м.кв.',75,70,to_timestamp('06-NOV-14 06.15.54.991861000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('3b679134-cea8-477d-8241-7a4195f45869',to_date('06-NOV-14','DD-MON-RR'),'Дн0000365','Гипсокартон',' Утепление стен  перегородок','м.кв.',45,25,to_timestamp('06-NOV-14 06.15.54.992494000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('e9851b8c-f399-40a5-93fb-758d83f4711b',to_date('06-NOV-14','DD-MON-RR'),'Дн0000366','Гипсокартон','Утепление потолка','м.кв.',55,25,to_timestamp('06-NOV-14 06.15.54.993152000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('68263918-2501-46c4-9e5e-1583d009241b',to_date('06-NOV-14','DD-MON-RR'),'Дн0000367','Гипсокартон','Монтаж паро-гидробарьера','м.кв.',35,10,to_timestamp('06-NOV-14 06.15.54.993784000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('fb859057-f90b-43f2-af82-0b0590aa25f2',to_date('06-NOV-14','DD-MON-RR'),'Дн0000368','Гипсокартон','Шпаклевка стен под обои','м.кв.',65,30,to_timestamp('06-NOV-14 06.15.54.994486000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('99c046c7-66bc-4f8e-ab77-0517119e0020',to_date('06-NOV-14','DD-MON-RR'),'Дн0000369','Гипсокартон','Поклейка флизелина на стены и потолок','м.кв.',65,25,to_timestamp('06-NOV-14 06.15.54.995114000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('f5683d12-4bfd-4aac-8e3c-341db8c35b23',to_date('06-NOV-14','DD-MON-RR'),'Дн0000370','Гипсокартон','Поклейка декоплинтуса пенопластового до 10см','м.п.',35,10,to_timestamp('06-NOV-14 06.15.54.995718000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('a2c22e2b-7a03-4fdb-b920-122b052737dd',to_date('06-NOV-14','DD-MON-RR'),'Дн0000371','Гипсокартон','Поклейка декоплинтуса пенопластового свыше 10см','м.п.',55,15,to_timestamp('06-NOV-14 06.15.54.996340000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('85663dea-b8c0-4149-a727-0054573839f3',to_date('06-NOV-14','DD-MON-RR'),'Дн0000372','Гипсокартон','Установка пенополиуретанового декоплинтуса','м.п.',115,50,to_timestamp('06-NOV-14 06.15.55.002811000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('3bab09c4-eade-402a-add2-edef58e430b1',to_date('06-NOV-14','DD-MON-RR'),'Дн0000373','Гипсокартон','Грунтовка стен и потолков','м.кв.',23,2,to_timestamp('06-NOV-14 06.15.55.004222000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('e7593e94-4588-4613-8efc-e4691c52cafe',to_date('06-NOV-14','DD-MON-RR'),'Дн0000374','Гипсокартон','Поклейка обоев под покраску','м.кв.',65,0,to_timestamp('06-NOV-14 06.15.55.005202000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('fcb83a58-c32b-4abc-b784-3a981d0cb553',to_date('06-NOV-14','DD-MON-RR'),'Дн0000375','Гипсокартон','Поклейка обоев виниловых','м.кв.',65,0,to_timestamp('06-NOV-14 06.15.55.006174000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('7066f703-7999-4554-9609-1c6dad57ef43',to_date('06-NOV-14','DD-MON-RR'),'Дн0000376','Гипсокартон','Поклейка обоев структурных','м.кв.',65,0,to_timestamp('06-NOV-14 06.15.55.007138000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('18aef4cc-eb1b-433c-8c58-d267411d8dc0',to_date('06-NOV-14','DD-MON-RR'),'Дн0000377','Гипсокартон','Поклейка обоев тканевых','м.кв.',140,0,to_timestamp('06-NOV-14 06.15.55.008706000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('3b7953a9-ad46-473c-a44f-de63673c5808',to_date('06-NOV-14','DD-MON-RR'),'Дн0000378','Гипсокартон','Поклейка обоев бамбуковых','м.кв.',140,0,to_timestamp('06-NOV-14 06.15.55.009463000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('c5072033-4643-40f9-8935-a689fcf95fef',to_date('06-NOV-14','DD-MON-RR'),'Дн0000379','Гипсокартон','Шпаклевка стен под покраску','м.кв.',80,30,to_timestamp('06-NOV-14 06.15.55.010144000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('45d379f9-28b6-449d-8d51-795f0cca97e0',to_date('06-NOV-14','DD-MON-RR'),'Дн0000380','Гипсокартон','Покраска стен  потолков и обоев','м.кв.',40,15,to_timestamp('06-NOV-14 06.15.55.010835000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('d2ca5923-4d55-4f24-bc9e-ecd3d792e724',to_date('06-NOV-14','DD-MON-RR'),'Дн0000381','Гипсокартон','Компресорная покраска стен и потолков','м.кв.',55,20,to_timestamp('06-NOV-14 06.15.55.011634000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('30117b6d-2394-40ae-a787-340b304834e6',to_date('06-NOV-14','DD-MON-RR'),'Дн0000382','Гипсокартон','Облицовка стен и полов керамической плиткой (с клеем)','м.кв.',180,20,to_timestamp('06-NOV-14 06.15.55.012384000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('103fe483-a158-4403-bd4a-b4bbcfb54418',to_date('06-NOV-14','DD-MON-RR'),'Дн0000383','Гипсокартон','Облицовка стен и полов мозаикой (с клеем)','м.кв.',280,20,to_timestamp('06-NOV-14 06.15.55.013106000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('a5060e7e-a4ce-4ab4-ad93-622aaad442ff',to_date('06-NOV-14','DD-MON-RR'),'Дн0000384','Гипсокартон','Облицовка фризом (с клеем)','м.п.',155,5,to_timestamp('06-NOV-14 06.15.55.013807000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('cd7baec2-71cb-4c28-954d-dafbe622e39f',to_date('06-NOV-14','DD-MON-RR'),'Дн0000385','Гипсокартон','Облицовка стен и полов природным камнем','м.кв.',245,20,to_timestamp('06-NOV-14 06.15.55.014532000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('46db0f26-beb3-40a6-9ca6-0b4de1e94502',to_date('06-NOV-14','DD-MON-RR'),'Дн0000386','Кафель','Снятие старых обоев','м.кв',30,0,to_timestamp('06-NOV-14 06.15.55.015257000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('6b338ba3-20f9-4199-bfb9-87746bb23810',to_date('06-NOV-14','DD-MON-RR'),'Дн0000387','Кафель','Смывка краски соскабливание','м.кв',50,0,to_timestamp('06-NOV-14 06.15.55.015929000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('4c02f569-4f9d-44e9-899f-11bfa8261f9a',to_date('06-NOV-14','DD-MON-RR'),'Дн0000388','Кафель','Штукатурка стен маячная','м.кв',120,40,to_timestamp('06-NOV-14 06.15.55.016573000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('c15e7ff2-7536-4286-8caa-9b2ac5979a04',to_date('06-NOV-14','DD-MON-RR'),'Дн0000389','Кафель','Набивка сетки','м.кв',30,10,to_timestamp('06-NOV-14 06.15.55.017238000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('9762a4b2-2cf9-4763-8208-c3179462d075',to_date('06-NOV-14','DD-MON-RR'),'Дн0000390','Кафель','Грунтовка стен и потолков','м.кв.',15,2,to_timestamp('06-NOV-14 06.15.55.017926000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('a818e82f-57a8-44a7-b271-2336f66af0b5',to_date('06-NOV-14','DD-MON-RR'),'Дн0000391','Кафель','Облицовка стен и полов керамической плиткой (с клеем)','м.кв.',180,20,to_timestamp('06-NOV-14 06.15.55.018603000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('605e9106-5536-4e7c-91d5-fe733b6ffc87',to_date('06-NOV-14','DD-MON-RR'),'Дн0000392','Кафель','Облицовка стен и полов мозаикой (с клеем)','м.кв.',280,20,to_timestamp('06-NOV-14 06.15.55.019345000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('f0c923a1-4e45-4fcc-8259-35a7f27ddf67',to_date('06-NOV-14','DD-MON-RR'),'Дн0000393','Кафель','Облицовка фризом (с клеем)','м.п.',155,5,to_timestamp('06-NOV-14 06.15.55.020013000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('71aa55e7-1641-4039-81e0-dd5fa1c5e44d',to_date('06-NOV-14','DD-MON-RR'),'Дн0000394','Кафель','Облицовка стен и полов природным камнем','м.кв.',245,20,to_timestamp('06-NOV-14 06.15.55.020679000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('d72f926b-db70-4c2e-b483-58bdc99cd603',to_date('06-NOV-14','DD-MON-RR'),'Дн0000395','Армстронг','Армстронг','м.кв',120,60,to_timestamp('06-NOV-14 06.15.55.021457000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('4b6787b3-4090-4f0d-8f17-1c6dfad88087',to_date('06-NOV-14','DD-MON-RR'),'Дн0000396','Обшивка стен  потолка','Обшивка стен и потолков пластиком','м.кв.',155,90,to_timestamp('06-NOV-14 06.15.55.022265000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('21b0a75f-283a-4826-b2da-3464d1c0dd29',to_date('06-NOV-14','DD-MON-RR'),'Дн0000397','Обшивка стен  потолка','Обшивка стен и потолков МДФ-панелями','м.кв.',175,80,to_timestamp('06-NOV-14 06.15.55.023069000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('70d2ae60-de3c-4197-a3c6-22bbe32b7eca',to_date('06-NOV-14','DD-MON-RR'),'Дн0000398','Обшивка стен  потолка',' Обшивка стен и потолков деревяной вагонкой','м.кв.',235,120,to_timestamp('06-NOV-14 06.15.55.023619000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('2c41160f-ce03-4373-87a4-ec3c955937ea',to_date('06-NOV-14','DD-MON-RR'),'Дн0000399','Монолитные работы','Разработка песчаного грунта','м.куб.',155,0,to_timestamp('06-NOV-14 06.15.55.024382000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('aeca8104-59fc-4108-864e-eb20f47464ee',to_date('06-NOV-14','DD-MON-RR'),'Дн0000400','Монолитные работы','Разработка сложного грунта','м.куб.',260,0,to_timestamp('06-NOV-14 06.15.55.025052000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('4853bea8-2762-42bb-82ea-e9eaa1dc32a3',to_date('06-NOV-14','DD-MON-RR'),'Дн0000401','Монолитные работы','Изготовление  установка и разборка опалобки','м.кв',320,250,to_timestamp('06-NOV-14 06.15.55.025635000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('5f315725-9f93-4d41-8e55-d35550da1eca',to_date('06-NOV-14','DD-MON-RR'),'Дн0000402','Монолитные работы','Изготовление и монтаж арматуры','м.п.',25,10,to_timestamp('06-NOV-14 06.15.55.026336000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('e223359a-60c6-4461-82e5-4a4d5d3b4089',to_date('06-NOV-14','DD-MON-RR'),'Дн0000403','Монолитные работы','Укладка бетона в опалобку','м.куб.',520,0,to_timestamp('06-NOV-14 06.15.55.027038000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('ea336b4f-03a2-402a-8516-842d9884f02c',to_date('06-NOV-14','DD-MON-RR'),'Дн0000404','Монолитные работы','Приготовление бетона','м.куб.',920,1000,to_timestamp('06-NOV-14 06.15.55.027596000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('f7bf2e8a-ce79-4b6d-b374-ad39c7501dd9',to_date('06-NOV-14','DD-MON-RR'),'Дн0000405','Покраска эмалью (в комплексе)','Покраска труб','м.п.',40,3,to_timestamp('06-NOV-14 06.15.55.028286000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('f5f22449-996f-42ea-8226-0faff7a8e0ac',to_date('06-NOV-14','DD-MON-RR'),'Дн0000406','Покраска эмалью (в комплексе)','Покраска батарей','сек.',50,10,to_timestamp('06-NOV-14 06.15.55.028921000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('69290c39-ebef-4ecf-b8a2-637f95111708',to_date('06-NOV-14','DD-MON-RR'),'Дн0000407','Покраска эмалью (в комплексе)','Покраска окон  дверей','шт',270,40,to_timestamp('06-NOV-14 06.15.55.029599000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('0a832636-027a-44d0-be44-1fc7f5e98b18',to_date('06-NOV-14','DD-MON-RR'),'Дн0000408','Кладка','Кирпичная кладка под штукатурку','м.куб.',1200,1050,to_timestamp('06-NOV-14 06.15.55.030284000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('e1bf0011-31b4-4607-ba6d-2c97a8e05c05',to_date('06-NOV-14','DD-MON-RR'),'Дн0000409','Кладка','Кирпичная кладка стен облицовочным кирпичем','м.кв.',460,160,to_timestamp('06-NOV-14 06.15.55.030982000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('9bb577e0-e1df-4a26-a367-d7cdf93d6583',to_date('06-NOV-14','DD-MON-RR'),'Дн0000410','Кладка','Перегородка 1/2 кирпича под штукатурку','м.кв.',260,140,to_timestamp('06-NOV-14 06.15.55.031638000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('9cac32f5-af20-4fd1-ab03-5bfd2abbc6ec',to_date('06-NOV-14','DD-MON-RR'),'Дн0000411','Кладка','Устройство перегородок из пено-гибсо-газоблоков','м.кв.',310,200,to_timestamp('06-NOV-14 06.15.55.032368000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('005310ee-214a-4751-98b1-85a9fd9ec3d3',to_date('06-NOV-14','DD-MON-RR'),'Дн0000412','Забор  ворота  калитка','Разработка песчаного грунта','м.куб.',155,0,to_timestamp('06-NOV-14 06.15.55.033022000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('00e8c17b-fda0-4725-a9c5-03cb1da9fe4b',to_date('06-NOV-14','DD-MON-RR'),'Дн0000413','Забор  ворота  калитка','Разработка сложного грунта','м.куб.',260,0,to_timestamp('06-NOV-14 06.15.55.033561000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('6ad7a8f5-f60e-4797-aa79-1531f5db97b9',to_date('06-NOV-14','DD-MON-RR'),'Дн0000414','Забор  ворота  калитка','Изготовление  установка и разборка опалобки','м.кв',320,250,to_timestamp('06-NOV-14 06.15.55.034175000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('379db785-db29-45da-bbe7-9fd4e551509d',to_date('06-NOV-14','DD-MON-RR'),'Дн0000415','Забор  ворота  калитка','Изготовление и монтаж арматуры','м.п.',25,10,to_timestamp('06-NOV-14 06.15.55.034997000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('c054e4d3-49da-4d21-9e61-9903851dbce1',to_date('06-NOV-14','DD-MON-RR'),'Дн0000416','Забор  ворота  калитка','Укладка бетона в опалобку','м.куб.',520,0,to_timestamp('06-NOV-14 06.15.55.036375000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('2b757ade-6b88-4f16-acef-8af4b6439fe4',to_date('06-NOV-14','DD-MON-RR'),'Дн0000417','Забор  ворота  калитка','Приготовление бетона','м.куб.',920,1000,to_timestamp('06-NOV-14 06.15.55.037000000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('97e9df05-40f4-4864-b271-be9133c176df',to_date('06-NOV-14','DD-MON-RR'),'Дн0000418','Забор  ворота  калитка','Забор профлист','м. кв',300,270,to_timestamp('06-NOV-14 06.15.55.037566000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('921b11e4-9ce3-4902-a19f-f222d9bf887b',to_date('06-NOV-14','DD-MON-RR'),'Дн0000419','Забор  ворота  калитка','Еврозабор','сек',500,390,to_timestamp('06-NOV-14 06.15.55.038242000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('47682b57-73ed-48ed-bf32-7bd99f3daab5',to_date('06-NOV-14','DD-MON-RR'),'Дн0000420','Забор  ворота  калитка','Кирпичная колонна','м.п.',550,200,to_timestamp('06-NOV-14 06.15.55.038754000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('60e7d9b2-5653-48e2-85b5-5e44243012ee',to_date('06-NOV-14','DD-MON-RR'),'Дн0000421','Забор  ворота  калитка','Кирпичная кладка стен облицовочным кирпичем','м.кв.',450,160,to_timestamp('06-NOV-14 06.15.55.039406000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('1f2903bb-e3a6-42f5-aefd-8f03759a80d2',to_date('06-NOV-14','DD-MON-RR'),'Дн0000422','Забор  ворота  калитка','Ворота 3*2 м стандарт профлист','шт',5200,0,to_timestamp('06-NOV-14 06.15.55.040010000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('4f4904ae-77b3-46b6-a616-ae7e2da30111',to_date('06-NOV-14','DD-MON-RR'),'Дн0000423','Забор  ворота  калитка','Калитка 1*2 м стандарт профлист','шт',2100,0,to_timestamp('06-NOV-14 06.15.55.040548000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('b52ffeb2-9bac-4954-b685-4a624a9d7039',to_date('06-NOV-14','DD-MON-RR'),'Дн0000424','Кровля','Демонтаж кровли','м.кв.',65,0,to_timestamp('06-NOV-14 06.15.55.041171000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('aad42917-c7bb-4ee5-af88-efc3a0e9acf8',to_date('06-NOV-14','DD-MON-RR'),'Дн0000425','Кровля','Стропила ','м.кв.',190,50,to_timestamp('06-NOV-14 06.15.55.041843000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('d9258502-1930-4870-8888-36e830ad821d',to_date('06-NOV-14','DD-MON-RR'),'Дн0000426','Кровля','Монтаж обрешотки','м.кв.',105,60,to_timestamp('06-NOV-14 06.15.55.042479000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('172653c9-8593-4c43-bbbd-9beb98282ab3',to_date('06-NOV-14','DD-MON-RR'),'Дн0000427','Кровля','Обрешотка под битумную черепицу','м.кв.',145,80,to_timestamp('06-NOV-14 06.15.55.043102000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('9483e81a-53f5-466f-bc66-5a340c73e103',to_date('06-NOV-14','DD-MON-RR'),'Дн0000428','Кровля','Монтаж шифера','м.кв.',150,70,to_timestamp('06-NOV-14 06.15.55.043683000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('a946d908-48c2-4aad-887e-355d4c469823',to_date('06-NOV-14','DD-MON-RR'),'Дн0000429','Кровля','Монтаж металочерепицы','м.кв.',155,85,to_timestamp('06-NOV-14 06.15.55.044409000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('91e7e24f-9f79-4520-90b6-51807ad20864',to_date('06-NOV-14','DD-MON-RR'),'Дн0000520','Натяжной потолок (в комплексе)','Потолок натяжной ( 5 - 10 м2) мат','м2',220,0,to_timestamp('06-NOV-14 06.15.55.113645000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('fc8bfc50-eacc-4711-899a-a6e1d83fba3d',to_date('06-NOV-14','DD-MON-RR'),'Дн0000521','Натяжной потолок (в комплексе)','Потолок натяжной (10 - 15 м2) глянец','м2',235,0,to_timestamp('06-NOV-14 06.15.55.115860000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('da178753-390c-41e4-8ce8-84280ee0e232',to_date('06-NOV-14','DD-MON-RR'),'Дн0000522','Натяжной потолок (в комплексе)','Потолок натяжной ( 10 - 15 м2) мат','м2',195,0,to_timestamp('06-NOV-14 06.15.55.116895000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('3e3e2dd6-d95d-4817-b4f3-82c9b5a42d84',to_date('06-NOV-14','DD-MON-RR'),'Дн0000523','Натяжной потолок (в комплексе)','Потолок натяжной ( 15 - 25 м2) глянец','м2',225,0,to_timestamp('06-NOV-14 06.15.55.117842000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('4f63081d-ee8e-4105-929f-bcdfab78b76b',to_date('06-NOV-14','DD-MON-RR'),'Дн0000524','Натяжной потолок (в комплексе)','Потолок натяжной ( 15 - 25 м2) мат','м2',185,0,to_timestamp('06-NOV-14 06.15.55.118790000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('c2940496-7860-4ecf-9e7b-2222199dcee5',to_date('06-NOV-14','DD-MON-RR'),'Дн0000525','Натяжной потолок (в комплексе)','Каждый 5-ый угол','шт',50,0,to_timestamp('06-NOV-14 06.15.55.119903000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('3cd67a81-32ea-4df2-9705-3ea0fff66c4b',to_date('06-NOV-14','DD-MON-RR'),'Дн0000526','Натяжной потолок (в комплексе)','Точка електрики','точка',85,0,to_timestamp('06-NOV-14 06.15.55.120874000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('f2811a22-9a20-4fae-9643-f2f796a70c29',to_date('06-NOV-14','DD-MON-RR'),'Дн0000527','Натяжной потолок (в комплексе)','Кривая','м.п.',90,0,to_timestamp('06-NOV-14 06.15.55.121869000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('941af528-d982-4ff8-9bbc-b617e3cacada',to_date('06-NOV-14','DD-MON-RR'),'Дн0000528','Натяжной потолок (в комплексе)','2-х уровн по прямой части','услуга',300,0,to_timestamp('06-NOV-14 06.15.55.122916000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('de188bc9-cdd1-4bfa-ab61-3584e65fdb64',to_date('06-NOV-14','DD-MON-RR'),'Дн0000529','Натяжной потолок (в комплексе)','2-х уровн кривая','услуга',400,0,to_timestamp('06-NOV-14 06.15.55.123880000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('3d422796-ff87-4201-a1be-471dd8656b42',to_date('06-NOV-14','DD-MON-RR'),'Дн0000530','Откосы','Г/к откосы','м.п.',155,0,to_timestamp('06-NOV-14 06.15.55.124877000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.IMPORTED_PRICE (ID,DAT,ARTIKUL,GROUPS,NOM_NAME,ED_IZM,PRICE_USL,PRICE_GOODS,VERSION) values ('22e1d89b-a9e0-4874-b406-16705ee6b809',to_date('06-NOV-14','DD-MON-RR'),'Дн0000531','Откосы','Пластиковые откосы','м.п.',205,0,to_timestamp('06-NOV-14 06.15.55.125875000 PM','DD-MON-RR HH.MI.SSXFF AM'));
REM INSERTING into DBA_DIVAS.KASSA
SET DEFINE OFF;
Insert into DBA_DIVAS.KASSA (ID,FULLNAME,IS_GROUP,PARENT_ID,CURR_ID,DIVISION_ID,DELETED,VERSION,PREDEFINED,FIRMA_ID) values ('5ca0edeb-890a-4e07-a1db-fb36cad6024f','Касса Бакум, грн',0,null,'ae6d0171-45cb-4b99-8d1a-1b039df274ca','dbcf65ca-a015-49a7-a928-af09fc2d0d2e',0,to_timestamp('16-OCT-14 06.05.55.451927000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,null);
Insert into DBA_DIVAS.KASSA (ID,FULLNAME,IS_GROUP,PARENT_ID,CURR_ID,DIVISION_ID,DELETED,VERSION,PREDEFINED,FIRMA_ID) values ('e660fee0-0981-4c57-b4c6-d7edf5e1f073','Касса Еремеев, грн',0,null,'ae6d0171-45cb-4b99-8d1a-1b039df274ca','1bcfc035-7a48-4e97-9ee6-2117e2cdb783',0,to_timestamp('16-OCT-14 06.05.55.459407000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,null);
REM INSERTING into DBA_DIVAS.KONTRAGENTS
SET DEFINE OFF;
Insert into DBA_DIVAS.KONTRAGENTS (ID,IS_GROUP,PARENT_ID,FULLNAME,DELETED,INN,OKPO,KPP,NAMEFULL,UR_FIZ,VERSION,PREDEFINED,IS_SUPPLIER,IS_BUYER,IS_MEASURER,USER_ID) values ('6ec66d9a-66de-40cd-a30d-ccbc69439d0c',0,'71c815a1-3c72-477d-9523-efea6b0e13f1','Крятова Светлана Николаевна',0,null,null,null,null,0,to_timestamp('02-NOV-14 07.12.35.590670000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,0,1,0,'6b78e738-a620-420f-90e2-c3613ba91a19');
Insert into DBA_DIVAS.KONTRAGENTS (ID,IS_GROUP,PARENT_ID,FULLNAME,DELETED,INN,OKPO,KPP,NAMEFULL,UR_FIZ,VERSION,PREDEFINED,IS_SUPPLIER,IS_BUYER,IS_MEASURER,USER_ID) values ('94a30d4e-12d8-4207-b99b-dd3c12451ba0',0,'71c815a1-3c72-477d-9523-efea6b0e13f1','Манойло Артем Васильевич',0,null,null,null,null,0,to_timestamp('02-NOV-14 07.12.35.592524000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,0,1,0,'6b78e738-a620-420f-90e2-c3613ba91a19');
Insert into DBA_DIVAS.KONTRAGENTS (ID,IS_GROUP,PARENT_ID,FULLNAME,DELETED,INN,OKPO,KPP,NAMEFULL,UR_FIZ,VERSION,PREDEFINED,IS_SUPPLIER,IS_BUYER,IS_MEASURER,USER_ID) values ('99a37c69-19a0-4ead-aec2-532b270bf648',0,'71c815a1-3c72-477d-9523-efea6b0e13f1','Старостина Екатерина Сергеевна',0,null,null,null,null,0,to_timestamp('02-NOV-14 07.12.35.594780000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,0,1,0,'6b78e738-a620-420f-90e2-c3613ba91a19');
Insert into DBA_DIVAS.KONTRAGENTS (ID,IS_GROUP,PARENT_ID,FULLNAME,DELETED,INN,OKPO,KPP,NAMEFULL,UR_FIZ,VERSION,PREDEFINED,IS_SUPPLIER,IS_BUYER,IS_MEASURER,USER_ID) values ('86a820c8-a04a-47c9-9237-61e6f200f5af',0,'71c815a1-3c72-477d-9523-efea6b0e13f1','Великий Олег Геннадьевич',0,null,null,null,null,0,to_timestamp('02-NOV-14 07.12.35.596522000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,0,1,0,'6b78e738-a620-420f-90e2-c3613ba91a19');
Insert into DBA_DIVAS.KONTRAGENTS (ID,IS_GROUP,PARENT_ID,FULLNAME,DELETED,INN,OKPO,KPP,NAMEFULL,UR_FIZ,VERSION,PREDEFINED,IS_SUPPLIER,IS_BUYER,IS_MEASURER,USER_ID) values ('60cbccc9-103e-4676-9d4f-52f8856427b8',0,'71c815a1-3c72-477d-9523-efea6b0e13f1','Полякова Валентина',0,null,null,null,'Полякова Валентина Степановна',0,to_timestamp('02-NOV-14 07.36.54.033939000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,0,1,0,null);
Insert into DBA_DIVAS.KONTRAGENTS (ID,IS_GROUP,PARENT_ID,FULLNAME,DELETED,INN,OKPO,KPP,NAMEFULL,UR_FIZ,VERSION,PREDEFINED,IS_SUPPLIER,IS_BUYER,IS_MEASURER,USER_ID) values ('b2c84e24-1ee1-4c94-b3db-7dbf9a09321d',1,'3cd80452-e3f6-4e89-9130-1b17a59da263','Замерщики',0,null,null,null,null,0,to_timestamp('02-NOV-14 07.12.35.598206000 PM','DD-MON-RR HH.MI.SSXFF AM'),1,0,0,0,'6b78e738-a620-420f-90e2-c3613ba91a19');
Insert into DBA_DIVAS.KONTRAGENTS (ID,IS_GROUP,PARENT_ID,FULLNAME,DELETED,INN,OKPO,KPP,NAMEFULL,UR_FIZ,VERSION,PREDEFINED,IS_SUPPLIER,IS_BUYER,IS_MEASURER,USER_ID) values ('b9e3a32a-fea4-494c-90f4-965c0c355b7c',0,'71c815a1-3c72-477d-9523-efea6b0e13f1','Леонова Юлия Васильевна',0,null,null,null,null,0,to_timestamp('02-NOV-14 07.12.35.599848000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,0,1,0,'6b78e738-a620-420f-90e2-c3613ba91a19');
Insert into DBA_DIVAS.KONTRAGENTS (ID,IS_GROUP,PARENT_ID,FULLNAME,DELETED,INN,OKPO,KPP,NAMEFULL,UR_FIZ,VERSION,PREDEFINED,IS_SUPPLIER,IS_BUYER,IS_MEASURER,USER_ID) values ('7940ab4a-6d47-43fd-b6d3-3457eb31604d',0,'71c815a1-3c72-477d-9523-efea6b0e13f1','Чардымов Юрий Геннадиевич',0,null,null,null,null,0,to_timestamp('02-NOV-14 07.12.35.601660000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,0,1,0,'6b78e738-a620-420f-90e2-c3613ba91a19');
Insert into DBA_DIVAS.KONTRAGENTS (ID,IS_GROUP,PARENT_ID,FULLNAME,DELETED,INN,OKPO,KPP,NAMEFULL,UR_FIZ,VERSION,PREDEFINED,IS_SUPPLIER,IS_BUYER,IS_MEASURER,USER_ID) values ('76f5a5f6-2c97-4df2-bc08-df0c1ea20f60',0,'71c815a1-3c72-477d-9523-efea6b0e13f1','Старостина Дина Васильевна',0,null,null,null,null,0,to_timestamp('02-NOV-14 07.12.35.603334000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,0,1,0,'6b78e738-a620-420f-90e2-c3613ba91a19');
Insert into DBA_DIVAS.KONTRAGENTS (ID,IS_GROUP,PARENT_ID,FULLNAME,DELETED,INN,OKPO,KPP,NAMEFULL,UR_FIZ,VERSION,PREDEFINED,IS_SUPPLIER,IS_BUYER,IS_MEASURER,USER_ID) values ('3cd80452-e3f6-4e89-9130-1b17a59da263',1,null,'Контрагенты',0,null,null,null,null,0,to_timestamp('02-NOV-14 07.12.35.605032000 PM','DD-MON-RR HH.MI.SSXFF AM'),1,0,0,0,'6b78e738-a620-420f-90e2-c3613ba91a19');
Insert into DBA_DIVAS.KONTRAGENTS (ID,IS_GROUP,PARENT_ID,FULLNAME,DELETED,INN,OKPO,KPP,NAMEFULL,UR_FIZ,VERSION,PREDEFINED,IS_SUPPLIER,IS_BUYER,IS_MEASURER,USER_ID) values ('369e4ba9-e462-4d88-9e4a-554644b53581',1,'3cd80452-e3f6-4e89-9130-1b17a59da263','Поставщики',0,null,null,null,null,0,to_timestamp('02-NOV-14 07.12.35.606826000 PM','DD-MON-RR HH.MI.SSXFF AM'),1,0,0,0,'6b78e738-a620-420f-90e2-c3613ba91a19');
Insert into DBA_DIVAS.KONTRAGENTS (ID,IS_GROUP,PARENT_ID,FULLNAME,DELETED,INN,OKPO,KPP,NAMEFULL,UR_FIZ,VERSION,PREDEFINED,IS_SUPPLIER,IS_BUYER,IS_MEASURER,USER_ID) values ('71c815a1-3c72-477d-9523-efea6b0e13f1',1,'3cd80452-e3f6-4e89-9130-1b17a59da263','Покупатели',0,null,null,null,null,0,to_timestamp('02-NOV-14 07.12.35.608859000 PM','DD-MON-RR HH.MI.SSXFF AM'),1,0,0,0,'6b78e738-a620-420f-90e2-c3613ba91a19');
Insert into DBA_DIVAS.KONTRAGENTS (ID,IS_GROUP,PARENT_ID,FULLNAME,DELETED,INN,OKPO,KPP,NAMEFULL,UR_FIZ,VERSION,PREDEFINED,IS_SUPPLIER,IS_BUYER,IS_MEASURER,USER_ID) values ('80d3d4f4-f340-4699-ac5b-00c4c5867adc',0,'71c815a1-3c72-477d-9523-efea6b0e13f1','Бакум Анастасия Вячеславовна',0,null,null,null,null,1,to_timestamp('03-NOV-14 04.27.11.987152000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,0,1,0,'6b78e738-a620-420f-90e2-c3613ba91a19');
Insert into DBA_DIVAS.KONTRAGENTS (ID,IS_GROUP,PARENT_ID,FULLNAME,DELETED,INN,OKPO,KPP,NAMEFULL,UR_FIZ,VERSION,PREDEFINED,IS_SUPPLIER,IS_BUYER,IS_MEASURER,USER_ID) values ('e8a6719c-830a-42c4-86f1-d63c62c83aa1',0,'71c815a1-3c72-477d-9523-efea6b0e13f1','Близнюк Владислав Николаевич',0,null,null,null,null,0,to_timestamp('02-NOV-14 07.12.35.614119000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,0,1,0,'6b78e738-a620-420f-90e2-c3613ba91a19');
Insert into DBA_DIVAS.KONTRAGENTS (ID,IS_GROUP,PARENT_ID,FULLNAME,DELETED,INN,OKPO,KPP,NAMEFULL,UR_FIZ,VERSION,PREDEFINED,IS_SUPPLIER,IS_BUYER,IS_MEASURER,USER_ID) values ('4aada2fe-2aa9-46d2-a664-88143a07a06a',0,'71c815a1-3c72-477d-9523-efea6b0e13f1','Тарелка Василий Сергеевич',1,null,null,null,null,0,to_timestamp('02-NOV-14 07.12.35.616894000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,0,1,0,'6b78e738-a620-420f-90e2-c3613ba91a19');
Insert into DBA_DIVAS.KONTRAGENTS (ID,IS_GROUP,PARENT_ID,FULLNAME,DELETED,INN,OKPO,KPP,NAMEFULL,UR_FIZ,VERSION,PREDEFINED,IS_SUPPLIER,IS_BUYER,IS_MEASURER,USER_ID) values ('f7220d45-f53e-4598-a651-7cfbdcc7a304',0,'71c815a1-3c72-477d-9523-efea6b0e13f1','Бакум Валентина Ивановна',0,'123456',null,null,null,0,to_timestamp('02-NOV-14 07.12.35.619270000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,0,1,0,'6b78e738-a620-420f-90e2-c3613ba91a19');
Insert into DBA_DIVAS.KONTRAGENTS (ID,IS_GROUP,PARENT_ID,FULLNAME,DELETED,INN,OKPO,KPP,NAMEFULL,UR_FIZ,VERSION,PREDEFINED,IS_SUPPLIER,IS_BUYER,IS_MEASURER,USER_ID) values ('26184c09-7f22-4255-9039-c70ed421425a',0,'b2c84e24-1ee1-4c94-b3db-7dbf9a09321d','Замерщик1',0,null,null,null,null,0,to_timestamp('02-NOV-14 07.12.35.621512000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,0,0,1,'6b78e738-a620-420f-90e2-c3613ba91a19');
Insert into DBA_DIVAS.KONTRAGENTS (ID,IS_GROUP,PARENT_ID,FULLNAME,DELETED,INN,OKPO,KPP,NAMEFULL,UR_FIZ,VERSION,PREDEFINED,IS_SUPPLIER,IS_BUYER,IS_MEASURER,USER_ID) values ('ad01ee8e-beb8-4270-9773-4692856ff696',0,'71c815a1-3c72-477d-9523-efea6b0e13f1','Бакум Вячеслав Александрович',0,null,null,null,null,0,to_timestamp('02-NOV-14 07.12.35.622888000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,0,1,0,'6b78e738-a620-420f-90e2-c3613ba91a19');
Insert into DBA_DIVAS.KONTRAGENTS (ID,IS_GROUP,PARENT_ID,FULLNAME,DELETED,INN,OKPO,KPP,NAMEFULL,UR_FIZ,VERSION,PREDEFINED,IS_SUPPLIER,IS_BUYER,IS_MEASURER,USER_ID) values ('dd90b568-4248-4f7f-be72-e5750b92ffcc',0,'71c815a1-3c72-477d-9523-efea6b0e13f1','Тарелка Василий',0,null,null,null,null,0,to_timestamp('02-NOV-14 07.35.12.716891000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,0,1,0,'6b78e738-a620-420f-90e2-c3613ba91a19');
Insert into DBA_DIVAS.KONTRAGENTS (ID,IS_GROUP,PARENT_ID,FULLNAME,DELETED,INN,OKPO,KPP,NAMEFULL,UR_FIZ,VERSION,PREDEFINED,IS_SUPPLIER,IS_BUYER,IS_MEASURER,USER_ID) values ('eaf15ecd-da58-4a1b-8292-554cbf0a151c',0,'71c815a1-3c72-477d-9523-efea6b0e13f1','Бешкенадзе Владимир',0,null,null,null,'Бешкенадзе Владимир Сергеевич',0,to_timestamp('02-NOV-14 07.12.35.625888000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,0,1,0,'6b78e738-a620-420f-90e2-c3613ba91a19');
Insert into DBA_DIVAS.KONTRAGENTS (ID,IS_GROUP,PARENT_ID,FULLNAME,DELETED,INN,OKPO,KPP,NAMEFULL,UR_FIZ,VERSION,PREDEFINED,IS_SUPPLIER,IS_BUYER,IS_MEASURER,USER_ID) values ('5c402533-7c85-4772-9a94-2ba11bdbd972',0,'71c815a1-3c72-477d-9523-efea6b0e13f1','qwerty',0,null,null,null,null,0,to_timestamp('03-NOV-14 05.11.16.727162000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,0,1,0,'6b78e738-a620-420f-90e2-c3613ba91a19');
Insert into DBA_DIVAS.KONTRAGENTS (ID,IS_GROUP,PARENT_ID,FULLNAME,DELETED,INN,OKPO,KPP,NAMEFULL,UR_FIZ,VERSION,PREDEFINED,IS_SUPPLIER,IS_BUYER,IS_MEASURER,USER_ID) values ('e9393ae0-f791-4126-8ee0-8296a1ed9c8f',0,'b2c84e24-1ee1-4c94-b3db-7dbf9a09321d','замерщик2',0,null,null,null,null,0,to_timestamp('03-NOV-14 05.12.14.402122000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,0,0,1,'6b78e738-a620-420f-90e2-c3613ba91a19');
REM INSERTING into DBA_DIVAS.MEASURE_UNIT
SET DEFINE OFF;
Insert into DBA_DIVAS.MEASURE_UNIT (ID,FULLNAME,CODE,DELETED,VERSION) values ('6e7643b2-ec29-45e2-ab6f-8a0a9d086723','шт','796',0,to_timestamp('27-MAY-14 09.41.28.521392000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.MEASURE_UNIT (ID,FULLNAME,CODE,DELETED,VERSION) values ('75534afa-62af-4166-951f-ad33b5c71138','кг','166',0,to_timestamp('27-MAY-14 09.41.28.526213000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.MEASURE_UNIT (ID,FULLNAME,CODE,DELETED,VERSION) values ('4a5e18ed-030f-4503-8827-c26ca23cfb32','услуга','808',0,to_timestamp('27-MAY-14 09.41.28.529062000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.MEASURE_UNIT (ID,FULLNAME,CODE,DELETED,VERSION) values ('0e9feb01-2186-43e0-a1cf-705928b2ebc9','м','006',0,to_timestamp('27-MAY-14 09.41.28.532043000 PM','DD-MON-RR HH.MI.SSXFF AM'));
REM INSERTING into DBA_DIVAS.MOVES
SET DEFINE OFF;
REM INSERTING into DBA_DIVAS.NOMENKLATURA
SET DEFINE OFF;
Insert into DBA_DIVAS.NOMENKLATURA (ID,FULLNAME,DELETED,IS_GROUP,PARENT_ID,USLUGA,PREDEFINED,VERSION,ARTIKUL) values ('234a2840-cb7e-451a-b8fd-526e07ca0d1d','Поклейка обоев',0,0,'95f6b738-bb20-42b1-9453-c0ed1fee340f',1,0,to_timestamp('16-OCT-14 09.28.02.622971000 PM','DD-MON-RR HH.MI.SSXFF AM'),null);
Insert into DBA_DIVAS.NOMENKLATURA (ID,FULLNAME,DELETED,IS_GROUP,PARENT_ID,USLUGA,PREDEFINED,VERSION,ARTIKUL) values ('0cceb2ea-9d46-4c1d-bdbb-ece5fec04396','Покраска стен',0,0,'95f6b738-bb20-42b1-9453-c0ed1fee340f',1,0,to_timestamp('16-OCT-14 09.24.12.887406000 PM','DD-MON-RR HH.MI.SSXFF AM'),null);
Insert into DBA_DIVAS.NOMENKLATURA (ID,FULLNAME,DELETED,IS_GROUP,PARENT_ID,USLUGA,PREDEFINED,VERSION,ARTIKUL) values ('aa58872e-b256-44e6-bbc4-4f79951e3d75','Шпаклевка стен',0,0,'95f6b738-bb20-42b1-9453-c0ed1fee340f',1,0,to_timestamp('16-OCT-14 09.33.17.811086000 PM','DD-MON-RR HH.MI.SSXFF AM'),null);
Insert into DBA_DIVAS.NOMENKLATURA (ID,FULLNAME,DELETED,IS_GROUP,PARENT_ID,USLUGA,PREDEFINED,VERSION,ARTIKUL) values ('4084f064-0a05-40c6-83a8-ffa0ce353fbd','Выравнивание стен',0,0,'95f6b738-bb20-42b1-9453-c0ed1fee340f',1,0,to_timestamp('16-OCT-14 09.53.21.270361000 PM','DD-MON-RR HH.MI.SSXFF AM'),null);
Insert into DBA_DIVAS.NOMENKLATURA (ID,FULLNAME,DELETED,IS_GROUP,PARENT_ID,USLUGA,PREDEFINED,VERSION,ARTIKUL) values ('17b0101a-bcbf-4ad1-9ccc-144fe908cff2','Удаление краски',0,0,'95f6b738-bb20-42b1-9453-c0ed1fee340f',1,0,to_timestamp('16-OCT-14 10.01.50.960796000 PM','DD-MON-RR HH.MI.SSXFF AM'),null);
Insert into DBA_DIVAS.NOMENKLATURA (ID,FULLNAME,DELETED,IS_GROUP,PARENT_ID,USLUGA,PREDEFINED,VERSION,ARTIKUL) values ('59d5994b-7852-4d8e-9c13-287759c86cd0','Номенклатура',0,1,null,0,1,to_timestamp('27-MAY-14 09.41.28.703873000 PM','DD-MON-RR HH.MI.SSXFF AM'),null);
Insert into DBA_DIVAS.NOMENKLATURA (ID,FULLNAME,DELETED,IS_GROUP,PARENT_ID,USLUGA,PREDEFINED,VERSION,ARTIKUL) values ('95f6b738-bb20-42b1-9453-c0ed1fee340f','Услуги',0,1,'59d5994b-7852-4d8e-9c13-287759c86cd0',0,0,to_timestamp('27-MAY-14 09.41.28.705772000 PM','DD-MON-RR HH.MI.SSXFF AM'),null);
REM INSERTING into DBA_DIVAS.NUMERATOR
SET DEFINE OFF;
Insert into DBA_DIVAS.NUMERATOR (ID,TYPEDEF_ID,PREFIX,VERSION) values ('72abc2a7-4b01-4ba9-aa5f-31d5ac21606e','5dc3ad18-8201-4463-8c25-aded8b3e8fdb','OR-',to_timestamp('27-MAY-14 09.41.28.512077000 PM','DD-MON-RR HH.MI.SSXFF AM'));
REM INSERTING into DBA_DIVAS.ORDERS
SET DEFINE OFF;
Insert into DBA_DIVAS.ORDERS (ID,DAT,NUM,KONTRAG_ID,CURR_ID,KASSA_ID,DIVISION_ID,USER_ID,KURS,KRATNOST,DISCRIPTION,DELETED,VERSION,POSTED,FIRM_ID,ACTIVITIES_ID,STATUS_ID,ZAMER_ID) values ('77118862-70b4-4ba6-9fb8-c90a1d79e564',to_date('02-NOV-14','DD-MON-RR'),'OR-61','60cbccc9-103e-4676-9d4f-52f8856427b8','ae6d0171-45cb-4b99-8d1a-1b039df274ca','5ca0edeb-890a-4e07-a1db-fb36cad6024f','dbcf65ca-a015-49a7-a928-af09fc2d0d2e','6b78e738-a620-420f-90e2-c3613ba91a19',1,1,null,0,to_timestamp('06-NOV-14 01.46.38.647258000 AM','DD-MON-RR HH.MI.SSXFF AM'),0,'4853ba5a-226d-49eb-9654-b01ab5861381','b9958408-ecea-4de6-9c75-0433a4baeb45','6f3d1fa7-6f68-441e-af1b-520d86c40126',null);
Insert into DBA_DIVAS.ORDERS (ID,DAT,NUM,KONTRAG_ID,CURR_ID,KASSA_ID,DIVISION_ID,USER_ID,KURS,KRATNOST,DISCRIPTION,DELETED,VERSION,POSTED,FIRM_ID,ACTIVITIES_ID,STATUS_ID,ZAMER_ID) values ('9120d0f0-5702-4e03-8068-17a3d9028c55',to_date('18-OCT-14','DD-MON-RR'),'OR-21','80d3d4f4-f340-4699-ac5b-00c4c5867adc','ae6d0171-45cb-4b99-8d1a-1b039df274ca','5ca0edeb-890a-4e07-a1db-fb36cad6024f','dbcf65ca-a015-49a7-a928-af09fc2d0d2e','6b78e738-a620-420f-90e2-c3613ba91a19',1,1,null,0,to_timestamp('02-NOV-14 12.52.42.973860000 AM','DD-MON-RR HH.MI.SSXFF AM'),0,'4853ba5a-226d-49eb-9654-b01ab5861381','b9958408-ecea-4de6-9c75-0433a4baeb45','ca43635d-c39f-4f1c-aa2a-99f21489cbfc',null);
Insert into DBA_DIVAS.ORDERS (ID,DAT,NUM,KONTRAG_ID,CURR_ID,KASSA_ID,DIVISION_ID,USER_ID,KURS,KRATNOST,DISCRIPTION,DELETED,VERSION,POSTED,FIRM_ID,ACTIVITIES_ID,STATUS_ID,ZAMER_ID) values ('8ec210a0-9ef9-4ee3-a086-256b48fd31bc',to_date('17-OCT-14','DD-MON-RR'),'1','6ec66d9a-66de-40cd-a30d-ccbc69439d0c','ae6d0171-45cb-4b99-8d1a-1b039df274ca','5ca0edeb-890a-4e07-a1db-fb36cad6024f','dbcf65ca-a015-49a7-a928-af09fc2d0d2e','6b78e738-a620-420f-90e2-c3613ba91a19',1,1,null,0,to_timestamp('17-OCT-14 11.36.57.053715000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,'4853ba5a-226d-49eb-9654-b01ab5861381','b9958408-ecea-4de6-9c75-0433a4baeb45','ca43635d-c39f-4f1c-aa2a-99f21489cbfc',null);
Insert into DBA_DIVAS.ORDERS (ID,DAT,NUM,KONTRAG_ID,CURR_ID,KASSA_ID,DIVISION_ID,USER_ID,KURS,KRATNOST,DISCRIPTION,DELETED,VERSION,POSTED,FIRM_ID,ACTIVITIES_ID,STATUS_ID,ZAMER_ID) values ('433cd60a-67b4-4e13-a170-7794b5f6c78a',to_date('18-OCT-14','DD-MON-RR'),'OR-22','86a820c8-a04a-47c9-9237-61e6f200f5af','ae6d0171-45cb-4b99-8d1a-1b039df274ca','5ca0edeb-890a-4e07-a1db-fb36cad6024f','dbcf65ca-a015-49a7-a928-af09fc2d0d2e','6b78e738-a620-420f-90e2-c3613ba91a19',1,1,null,0,to_timestamp('06-NOV-14 01.54.21.445845000 AM','DD-MON-RR HH.MI.SSXFF AM'),0,'4853ba5a-226d-49eb-9654-b01ab5861381','b9958408-ecea-4de6-9c75-0433a4baeb45','6f3d1fa7-6f68-441e-af1b-520d86c40126','e9393ae0-f791-4126-8ee0-8296a1ed9c8f');
Insert into DBA_DIVAS.ORDERS (ID,DAT,NUM,KONTRAG_ID,CURR_ID,KASSA_ID,DIVISION_ID,USER_ID,KURS,KRATNOST,DISCRIPTION,DELETED,VERSION,POSTED,FIRM_ID,ACTIVITIES_ID,STATUS_ID,ZAMER_ID) values ('ccfec198-80e0-4b84-b3aa-502b30eca0b4',to_date('18-OCT-14','DD-MON-RR'),'2','7940ab4a-6d47-43fd-b6d3-3457eb31604d','ae6d0171-45cb-4b99-8d1a-1b039df274ca','5ca0edeb-890a-4e07-a1db-fb36cad6024f','dbcf65ca-a015-49a7-a928-af09fc2d0d2e','6b78e738-a620-420f-90e2-c3613ba91a19',1,1,'Выравнивание стен, прорыв потолков, снег на голову и скидка<br/>',0,to_timestamp('18-OCT-14 04.18.53.141134000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,'4853ba5a-226d-49eb-9654-b01ab5861381','b9958408-ecea-4de6-9c75-0433a4baeb45','ca43635d-c39f-4f1c-aa2a-99f21489cbfc',null);
Insert into DBA_DIVAS.ORDERS (ID,DAT,NUM,KONTRAG_ID,CURR_ID,KASSA_ID,DIVISION_ID,USER_ID,KURS,KRATNOST,DISCRIPTION,DELETED,VERSION,POSTED,FIRM_ID,ACTIVITIES_ID,STATUS_ID,ZAMER_ID) values ('c4be50fa-0900-452d-bd75-5950498bab94',to_date('18-OCT-14','DD-MON-RR'),'OR-1','94a30d4e-12d8-4207-b99b-dd3c12451ba0','ae6d0171-45cb-4b99-8d1a-1b039df274ca','5ca0edeb-890a-4e07-a1db-fb36cad6024f','dbcf65ca-a015-49a7-a928-af09fc2d0d2e','6b78e738-a620-420f-90e2-c3613ba91a19',1,1,null,0,to_timestamp('18-OCT-14 11.21.48.637291000 AM','DD-MON-RR HH.MI.SSXFF AM'),0,'4853ba5a-226d-49eb-9654-b01ab5861381','b9958408-ecea-4de6-9c75-0433a4baeb45','ca43635d-c39f-4f1c-aa2a-99f21489cbfc',null);
Insert into DBA_DIVAS.ORDERS (ID,DAT,NUM,KONTRAG_ID,CURR_ID,KASSA_ID,DIVISION_ID,USER_ID,KURS,KRATNOST,DISCRIPTION,DELETED,VERSION,POSTED,FIRM_ID,ACTIVITIES_ID,STATUS_ID,ZAMER_ID) values ('f6d46c38-052e-40b3-b3cd-d9992c2ba3db',to_date('02-NOV-14','DD-MON-RR'),'OR-42','eaf15ecd-da58-4a1b-8292-554cbf0a151c','ae6d0171-45cb-4b99-8d1a-1b039df274ca','5ca0edeb-890a-4e07-a1db-fb36cad6024f','dbcf65ca-a015-49a7-a928-af09fc2d0d2e','6b78e738-a620-420f-90e2-c3613ba91a19',1,1,null,0,to_timestamp('06-NOV-14 12.00.26.887649000 AM','DD-MON-RR HH.MI.SSXFF AM'),0,'4853ba5a-226d-49eb-9654-b01ab5861381','b9958408-ecea-4de6-9c75-0433a4baeb45','6f3d1fa7-6f68-441e-af1b-520d86c40126','26184c09-7f22-4255-9039-c70ed421425a');
Insert into DBA_DIVAS.ORDERS (ID,DAT,NUM,KONTRAG_ID,CURR_ID,KASSA_ID,DIVISION_ID,USER_ID,KURS,KRATNOST,DISCRIPTION,DELETED,VERSION,POSTED,FIRM_ID,ACTIVITIES_ID,STATUS_ID,ZAMER_ID) values ('13f8d5a9-393f-45fc-ad78-48a500a8043e',to_date('03-NOV-14','DD-MON-RR'),'OR-81','5c402533-7c85-4772-9a94-2ba11bdbd972','ae6d0171-45cb-4b99-8d1a-1b039df274ca','5ca0edeb-890a-4e07-a1db-fb36cad6024f','dbcf65ca-a015-49a7-a928-af09fc2d0d2e','6b78e738-a620-420f-90e2-c3613ba91a19',1,1,null,0,to_timestamp('06-NOV-14 01.39.09.332351000 AM','DD-MON-RR HH.MI.SSXFF AM'),0,'4853ba5a-226d-49eb-9654-b01ab5861381','b9958408-ecea-4de6-9c75-0433a4baeb45','6f3d1fa7-6f68-441e-af1b-520d86c40126','e9393ae0-f791-4126-8ee0-8296a1ed9c8f');
REM INSERTING into DBA_DIVAS.ORDERS_TP_USLUGI
SET DEFINE OFF;
REM INSERTING into DBA_DIVAS.ORDER_STATUS
SET DEFINE OFF;
Insert into DBA_DIVAS.ORDER_STATUS (ID,VERSION,NAME,FULLNAME) values ('c9e77f56-4268-43f2-877d-23b3a926f8fc',to_timestamp('14-JUN-14 02.56.52.055508000 PM','DD-MON-RR HH.MI.SSXFF AM'),'ВРаботе','В работе');
Insert into DBA_DIVAS.ORDER_STATUS (ID,VERSION,NAME,FULLNAME) values ('eade39ed-9154-4c1e-897a-fde8f1c9ab77',to_timestamp('14-JUN-14 02.56.59.463794000 PM','DD-MON-RR HH.MI.SSXFF AM'),'ВРасчете','В расчёте');
Insert into DBA_DIVAS.ORDER_STATUS (ID,VERSION,NAME,FULLNAME) values ('51de239f-4030-49f6-8e6f-4753c1364a94',to_timestamp('14-JUN-14 02.56.59.469317000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Выполнен','Выполнен');
Insert into DBA_DIVAS.ORDER_STATUS (ID,VERSION,NAME,FULLNAME) values ('6f3d1fa7-6f68-441e-af1b-520d86c40126',to_timestamp('14-JUN-14 02.56.59.474224000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Замер','Замер');
Insert into DBA_DIVAS.ORDER_STATUS (ID,VERSION,NAME,FULLNAME) values ('ca43635d-c39f-4f1c-aa2a-99f21489cbfc',to_timestamp('14-JUN-14 02.56.59.479166000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Новый','Новый');
Insert into DBA_DIVAS.ORDER_STATUS (ID,VERSION,NAME,FULLNAME) values ('fdb61a5b-e797-4b4f-9e3a-f53ada9d6d92',to_timestamp('14-JUN-14 02.56.59.483614000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Закрыт','Закрыт');
Insert into DBA_DIVAS.ORDER_STATUS (ID,VERSION,NAME,FULLNAME) values ('d68a7339-b571-4ead-9147-290d1554d313',to_timestamp('14-JUN-14 02.56.59.488833000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Аннулирован','Аннулирован');
REM INSERTING into DBA_DIVAS.PLAN_ACC
SET DEFINE OFF;
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('c59713f3-bf44-425e-a5a4-133334302124','805a840f-f592-45f7-822a-28fab7880503','9f49d74a-9b7b-4ff9-91f7-b42871352018','Деловая репутация (гудвил), нетто',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1032');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('43570135-2b3f-4260-9adc-f4420744697a','805a840f-f592-45f7-822a-28fab7880503','c59713f3-bf44-425e-a5a4-133334302124','Деловая репутация (гудвил)',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10321');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('c7e32b79-8a1b-44e8-9cf9-f86a030c5d2e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','c59713f3-bf44-425e-a5a4-133334302124','Деловая репутация (гудвил), амортизация',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10322');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('88e12a6d-59f2-4a68-b27a-a90a8fe1722d','d5e5accd-f0f0-4d1f-8031-a26161f280cc','9f49d74a-9b7b-4ff9-91f7-b42871352018','Негативный гудвил, нетто',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1033');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('4616d016-8eec-4fbc-aa50-0492a4192120','d5e5accd-f0f0-4d1f-8031-a26161f280cc','88e12a6d-59f2-4a68-b27a-a90a8fe1722d','Негативный гудвил',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10331');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('6b080909-f900-409e-8ce8-6056c27635cb','805a840f-f592-45f7-822a-28fab7880503','88e12a6d-59f2-4a68-b27a-a90a8fe1722d','Признанный доходом негативный гудвилл',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10332');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('40bac33d-6bf1-421b-8080-1fe651190354','805a840f-f592-45f7-822a-28fab7880503','9f49d74a-9b7b-4ff9-91f7-b42871352018','Патенты, торговые марки и иные права, нетто',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1034');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('9aac11b2-486a-4369-ad2b-ab5f252ac510','805a840f-f592-45f7-822a-28fab7880503','40bac33d-6bf1-421b-8080-1fe651190354','Патенты и иные права',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10341');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('64ba68bc-2749-4685-8f5c-f24dc662e2fc','d5e5accd-f0f0-4d1f-8031-a26161f280cc','40bac33d-6bf1-421b-8080-1fe651190354','Амортизация патенты и иные права',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10342');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('a9f27bbe-0dc2-417c-b70d-fa2718d7fe58','805a840f-f592-45f7-822a-28fab7880503','9f49d74a-9b7b-4ff9-91f7-b42871352018','Компьютерное программное обеспечение, нетто',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1035');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('3a1c8036-06ac-49b1-9c43-b20088e77909','805a840f-f592-45f7-822a-28fab7880503','a9f27bbe-0dc2-417c-b70d-fa2718d7fe58','Компьютерное программное обеспечение',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10351');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('510e9876-c466-462a-b058-505230856019','d5e5accd-f0f0-4d1f-8031-a26161f280cc','a9f27bbe-0dc2-417c-b70d-fa2718d7fe58','Амортизация программного обеспечения',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10352');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('78fa22d8-6013-4e4f-a99f-0abd1a6cffdc','805a840f-f592-45f7-822a-28fab7880503','9f49d74a-9b7b-4ff9-91f7-b42871352018','Прочие нематериальные активы, нетто',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1036');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('5cf27205-fc0c-4e89-9a05-d4bf065e36ca','805a840f-f592-45f7-822a-28fab7880503','78fa22d8-6013-4e4f-a99f-0abd1a6cffdc','Прочие нематериальные активы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10361');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('12ea7fc2-448f-4aea-a118-cd47d92bfcd6','d5e5accd-f0f0-4d1f-8031-a26161f280cc','78fa22d8-6013-4e4f-a99f-0abd1a6cffdc','Прочие нематериальные активы, амортизация',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10362');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('b44e8a23-5a59-45af-bf7a-94ba87f2663d','805a840f-f592-45f7-822a-28fab7880503','9f49d74a-9b7b-4ff9-91f7-b42871352018','Приобретение нематериальных активов',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1039');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('22c7892c-9f39-4eb9-b2ee-78874dff3471','805a840f-f592-45f7-822a-28fab7880503','a839c02a-5b58-44dd-bceb-270a19db332f','Биологические активы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'104');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('efcd2d37-31a4-4494-9e61-9d22ed7f472d','805a840f-f592-45f7-822a-28fab7880503','a839c02a-5b58-44dd-bceb-270a19db332f','Инвестиции',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'105');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('e31faaea-ca81-4ca3-b453-67a648a188ed','805a840f-f592-45f7-822a-28fab7880503','efcd2d37-31a4-4494-9e61-9d22ed7f472d','Инвестиции в дочерние компании',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1051');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('1dc89d85-8430-4052-8be8-1355c041ab10','805a840f-f592-45f7-822a-28fab7880503','efcd2d37-31a4-4494-9e61-9d22ed7f472d','Инвестиции в зависимые компании',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1052');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('24c843db-78e4-4508-a0c1-2f5ac29d3f33','805a840f-f592-45f7-822a-28fab7880503','efcd2d37-31a4-4494-9e61-9d22ed7f472d','Инвестиции в совместные предприятия',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1053');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('bef20c66-1439-4f46-8cfd-db83c2a9c1d3','805a840f-f592-45f7-822a-28fab7880503','a839c02a-5b58-44dd-bceb-270a19db332f','Отложенные налоговые активы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'106');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ba7fd9ea-a330-43d6-ae25-87c4ae9a4bc5','805a840f-f592-45f7-822a-28fab7880503','a839c02a-5b58-44dd-bceb-270a19db332f','Прочие долгосрочные, финансовые активы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'107');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('b0c2ca9e-1bbc-4211-9d2c-ea9730e52516','805a840f-f592-45f7-822a-28fab7880503','ba7fd9ea-a330-43d6-ae25-87c4ae9a4bc5','Вложения для продажи, долгосрочные',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1071');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('10005614-ce6a-4390-8bea-a667e313e6ce','805a840f-f592-45f7-822a-28fab7880503','ba7fd9ea-a330-43d6-ae25-87c4ae9a4bc5','Вложения для дивидендов, долгосрочные',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1072');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('8c73240a-f946-4756-8a4e-0014fc3f9076','805a840f-f592-45f7-822a-28fab7880503','ba7fd9ea-a330-43d6-ae25-87c4ae9a4bc5','Займы выданные, долгосрочные',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1073');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ab8c71a5-08b9-4a13-926e-839330ed0cab','805a840f-f592-45f7-822a-28fab7880503','ba7fd9ea-a330-43d6-ae25-87c4ae9a4bc5','Инвестиции для продажи, долгосрочные',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1074');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('981864d3-56e9-43c2-9ed1-29548ebfcb04','805a840f-f592-45f7-822a-28fab7880503','ba7fd9ea-a330-43d6-ae25-87c4ae9a4bc5','Прочие финасовые активы, долгосрочные',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1075');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('c111674f-efae-4f00-a27b-d20cd522c3e4','805a840f-f592-45f7-822a-28fab7880503','a839c02a-5b58-44dd-bceb-270a19db332f','Дебиторская задолженность, долгосрочная',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'109');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('865c6aff-d5b6-49f0-88b5-c9484af2ea6b','805a840f-f592-45f7-822a-28fab7880503','c111674f-efae-4f00-a27b-d20cd522c3e4','Задолженность покупателей и заказчиков, долгосрочная, за вычетом резервов',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1091');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('2a738afb-2711-48bc-a676-9302a198abbc','805a840f-f592-45f7-822a-28fab7880503','865c6aff-d5b6-49f0-88b5-c9484af2ea6b','Задолженность покупателей и заказчиков, долгосрочная',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10911');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('c1b57974-8430-4a29-8224-b195e4304d60','d5e5accd-f0f0-4d1f-8031-a26161f280cc','865c6aff-d5b6-49f0-88b5-c9484af2ea6b','Резерв задолженность покупателей, долгосрочная',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10912');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('a2dccecb-75a5-4b53-ae23-e46af7a7ee88','805a840f-f592-45f7-822a-28fab7880503','c111674f-efae-4f00-a27b-d20cd522c3e4','Задолженность по расчетам со связанными сторонами, долгосрочная, за вычетом резервов',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1092');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('cfa5d9e8-78d6-4225-835f-b591650d1316','805a840f-f592-45f7-822a-28fab7880503','a2dccecb-75a5-4b53-ae23-e46af7a7ee88','Задолженность связанных сторон, долгосрочная',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10921');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('0b172e41-3314-444f-8888-5fafc6786895','805a840f-f592-45f7-822a-28fab7880503','d5ca2a82-6654-4fef-99fe-b949f09e2b19','Прочие денежные средства',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'2084');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('d90d5a63-3811-43eb-a74e-34e23f140217','805a840f-f592-45f7-822a-28fab7880503','c476b650-4f12-4b46-8720-6cc2488e54f6','Прочие текущие активы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'209');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('c0b3cec2-1a43-47f9-b3fa-f8dbc96f0506','805a840f-f592-45f7-822a-28fab7880503','d90d5a63-3811-43eb-a74e-34e23f140217','Отложенные расходы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'2091');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('3caf9143-a49b-4375-9e3b-862c7abbb8f5','bc169722-1c3d-4788-8a9f-2099e176e17f','d90d5a63-3811-43eb-a74e-34e23f140217','Налоговые обязательства, всего',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'2092');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('7b78907f-153d-46e7-88ab-d87e6d4ee2cb','805a840f-f592-45f7-822a-28fab7880503','3caf9143-a49b-4375-9e3b-862c7abbb8f5','Налоговые обязательства',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20921');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('9e9f0c30-4241-4e31-a811-96f943b57283','d5e5accd-f0f0-4d1f-8031-a26161f280cc','3caf9143-a49b-4375-9e3b-862c7abbb8f5','Налоговые обязательства неподтвержденные',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20922');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('0bf1f27c-74eb-4ba5-9b03-4f2d18912c6c','bc169722-1c3d-4788-8a9f-2099e176e17f','3caf9143-a49b-4375-9e3b-862c7abbb8f5','Корректировки налоговых обязательств',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20923');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('a8492d95-91ec-43a3-a9ad-e6503e9a6adc','bc169722-1c3d-4788-8a9f-2099e176e17f','d90d5a63-3811-43eb-a74e-34e23f140217','Налоговый кредит, всего',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'2093');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('9df35915-4f56-45f7-ab55-b756485876d4','d5e5accd-f0f0-4d1f-8031-a26161f280cc','a8492d95-91ec-43a3-a9ad-e6503e9a6adc','Налоговый кредит',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20931');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('77c42edf-af66-40f1-8da1-4d69ae4b5fbb','805a840f-f592-45f7-822a-28fab7880503','a8492d95-91ec-43a3-a9ad-e6503e9a6adc','Налоговый кредит неподтвержденный',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20932');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('612e87a1-ba43-4343-896e-f523f69a918a','bc169722-1c3d-4788-8a9f-2099e176e17f','a8492d95-91ec-43a3-a9ad-e6503e9a6adc','Корректировки налогового кредита',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20933');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('c336ade6-e1b1-4979-84dd-0f8fb5061151','d5e5accd-f0f0-4d1f-8031-a26161f280cc',null,'Собственный капитал и резервы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'300');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('f6a24e72-460e-4015-9e0e-487c9a37bfee','d5e5accd-f0f0-4d1f-8031-a26161f280cc','c336ade6-e1b1-4979-84dd-0f8fb5061151','Собственный капитал',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'301');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('40294706-bcd3-473c-9bdd-17ea3b54fc6c','d5e5accd-f0f0-4d1f-8031-a26161f280cc','f6a24e72-460e-4015-9e0e-487c9a37bfee','Акционерный капитал, обыкновенные акции',0,0,1,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'3011');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ba32e46f-aa7c-41f3-ac97-8b7cfba1ff99','d5e5accd-f0f0-4d1f-8031-a26161f280cc','f6a24e72-460e-4015-9e0e-487c9a37bfee','Эмиссионный доход, обыкновенные акции',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'3012');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('2034929c-0c6b-4a59-90df-b5a653ced063','d5e5accd-f0f0-4d1f-8031-a26161f280cc','f6a24e72-460e-4015-9e0e-487c9a37bfee','Привилегированные акции',0,0,1,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'3013');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('9db5bd58-f5cb-4c65-9716-1b039df3c228','d5e5accd-f0f0-4d1f-8031-a26161f280cc','f6a24e72-460e-4015-9e0e-487c9a37bfee','Эмиссионный доход, привилегированные акции',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'3014');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('c47e299a-8689-4145-a699-d78c286dd6a7','d5e5accd-f0f0-4d1f-8031-a26161f280cc','f6a24e72-460e-4015-9e0e-487c9a37bfee','Собственный капитал, прочее',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'3015');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('687af55b-f497-470b-8add-5e3c6dcf1d7c','d5e5accd-f0f0-4d1f-8031-a26161f280cc','c336ade6-e1b1-4979-84dd-0f8fb5061151','Резервы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'302');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('7cd7492e-c6bf-4036-931a-74a58e3490e8','d5e5accd-f0f0-4d1f-8031-a26161f280cc','687af55b-f497-470b-8add-5e3c6dcf1d7c','Резервы безнадежных потерь капитала',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'3021');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('0b0b8292-9704-4b80-8f4f-2f9593ad9a0d','d5e5accd-f0f0-4d1f-8031-a26161f280cc','687af55b-f497-470b-8add-5e3c6dcf1d7c','Резервы на слияние',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'3022');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('08f682a1-4d1a-4f5c-a8dd-47aaa4d35571','d5e5accd-f0f0-4d1f-8031-a26161f280cc','687af55b-f497-470b-8add-5e3c6dcf1d7c','Резервы по опционам',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'3023');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('9ca5eb33-befa-4da2-ae83-105078aad710','d5e5accd-f0f0-4d1f-8031-a26161f280cc','687af55b-f497-470b-8add-5e3c6dcf1d7c','Резервы по варрантам',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'3024');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('0af10ad6-704e-4153-bec5-6e35ccb37dc5','d5e5accd-f0f0-4d1f-8031-a26161f280cc','687af55b-f497-470b-8add-5e3c6dcf1d7c','Резервы на объявленные дивиденды',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'3025');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('af3a9382-c2f0-47a6-b75e-7ab8dc3e5a95','d5e5accd-f0f0-4d1f-8031-a26161f280cc','687af55b-f497-470b-8add-5e3c6dcf1d7c','Резервы на перевод',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'3026');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ec09b7c0-0eea-41d1-aeb9-1f562d6116e7','d5e5accd-f0f0-4d1f-8031-a26161f280cc','687af55b-f497-470b-8add-5e3c6dcf1d7c','Резервы на переоценку',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'3027');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('357e4f72-f658-4498-8028-99e85c820dcb','d5e5accd-f0f0-4d1f-8031-a26161f280cc','ec09b7c0-0eea-41d1-aeb9-1f562d6116e7','Резервы на переоценку ОС и инвестиционной собственности',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'30271');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('4ddab125-32c0-4659-8fcf-b6d2c5a5dfb6','d5e5accd-f0f0-4d1f-8031-a26161f280cc','ec09b7c0-0eea-41d1-aeb9-1f562d6116e7','Резервы на переоценку НМА',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'30272');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('5239aaa8-91eb-49f3-b574-85d246a17218','d5e5accd-f0f0-4d1f-8031-a26161f280cc','ec09b7c0-0eea-41d1-aeb9-1f562d6116e7','Резервы на переоценку долгосрочных фин. активов',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'30273');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('8b7868f9-bde2-4a60-a6a7-c2219b1113d0','d5e5accd-f0f0-4d1f-8031-a26161f280cc','687af55b-f497-470b-8add-5e3c6dcf1d7c','Резервы по хеджированию',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'3028');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('dd5ac50a-4390-4012-85fd-a4b1fae42282','d5e5accd-f0f0-4d1f-8031-a26161f280cc','687af55b-f497-470b-8add-5e3c6dcf1d7c','Резервы под продажу активов',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'3029');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('d537eef7-a115-4c37-9147-e963d2ebc85a','bc169722-1c3d-4788-8a9f-2099e176e17f','687af55b-f497-470b-8add-5e3c6dcf1d7c','Прочие резервы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'302X');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('5dfcd2a7-0b70-401e-9c02-17aa6a6d2164','805a840f-f592-45f7-822a-28fab7880503','c336ade6-e1b1-4979-84dd-0f8fb5061151','Собственные акции, выкупленные у акционеров',0,0,1,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'303');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('d1d89941-f6f0-42c0-995e-4b9ffb4a40af','805a840f-f592-45f7-822a-28fab7880503','5dfcd2a7-0b70-401e-9c02-17aa6a6d2164','Обыкновенные акции выкупленные',0,0,1,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'3031');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ea96fbe0-c59f-455f-b2cc-6e9eff13f54b','805a840f-f592-45f7-822a-28fab7880503','5dfcd2a7-0b70-401e-9c02-17aa6a6d2164','Привилигерованные акции выкупленные',0,0,1,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'3032');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('8cbfffa1-fb1a-4c34-b1d9-7e4e4e883537','d5e5accd-f0f0-4d1f-8031-a26161f280cc','c336ade6-e1b1-4979-84dd-0f8fb5061151','Нераспределенная прибыль (непокрытый убыток)',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'304');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('019b676e-0626-4f26-ac88-06686964ea10','d5e5accd-f0f0-4d1f-8031-a26161f280cc','c336ade6-e1b1-4979-84dd-0f8fb5061151','Размещенный капитал',0,0,1,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'305');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('a09bdd99-1155-4a8c-b6e2-7faef6fa56ee','805a840f-f592-45f7-822a-28fab7880503','cfa5d9e8-78d6-4225-835f-b591650d1316','Задолженность дочерних организаций, долгосрочная',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'109211');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('b7db6ca6-8532-4281-a0f4-04fcd944f1ed','805a840f-f592-45f7-822a-28fab7880503','cfa5d9e8-78d6-4225-835f-b591650d1316','Задолженность зависимых организаций, долгосрочная',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'109212');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('66340264-3d9e-48c1-8e7d-99987844ba6c','805a840f-f592-45f7-822a-28fab7880503','cfa5d9e8-78d6-4225-835f-b591650d1316','Задолженность совместно-контролируемых юридических лиц, долгосрочная',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'109213');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('eec46873-c39b-4635-b269-cc5b8de9a27e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','a2dccecb-75a5-4b53-ae23-e46af7a7ee88','Резерв задолженность связанных сторон, долгосрочная',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10922');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('138636c2-8a2b-44ac-a8a3-468ce3de9675','805a840f-f592-45f7-822a-28fab7880503','c111674f-efae-4f00-a27b-d20cd522c3e4','Платежи по финансовой аренде к получению, за вычетом резервов, долгосрочные',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1093');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('0d433082-7dbf-477a-97f6-6b037d031758','805a840f-f592-45f7-822a-28fab7880503','138636c2-8a2b-44ac-a8a3-468ce3de9675','Платежи по финансовой аренде к получению, долгосрочные',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10931');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('bece137d-793b-4957-b63b-f2deea767e27','d5e5accd-f0f0-4d1f-8031-a26161f280cc','138636c2-8a2b-44ac-a8a3-468ce3de9675','Резерв на неполучение платежей по финансовой аренде к получению, долгосрочных',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10932');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('37add0a0-aaba-4c27-b3c2-980f81e39145','805a840f-f592-45f7-822a-28fab7880503','c111674f-efae-4f00-a27b-d20cd522c3e4','Прочая дебиторская задолженность, долгосрочная, за вычетом резервов',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1094');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('6f4e82b9-79ec-49e8-b209-5e459ecac658','805a840f-f592-45f7-822a-28fab7880503','37add0a0-aaba-4c27-b3c2-980f81e39145','Прочая дебиторская задолженность, долгосрочная',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10941');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('80960f19-1a83-4a5b-b920-17c85c9b84dc','d5e5accd-f0f0-4d1f-8031-a26161f280cc','37add0a0-aaba-4c27-b3c2-980f81e39145','Резерв по сомнительной прочей дебиторской задолженности, долгосрочнлй',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10942');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('962e703d-0c0f-4555-a84d-197a711fe06d','805a840f-f592-45f7-822a-28fab7880503','c111674f-efae-4f00-a27b-d20cd522c3e4','Авансы выданные, долгосрочные',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1095');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('aabda711-23e1-40cc-b526-8a6ec8dbc472','805a840f-f592-45f7-822a-28fab7880503','a839c02a-5b58-44dd-bceb-270a19db332f','Денежные средства с ограничениями',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'110');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('a9a8fb3a-bb71-4893-aa01-9686bd0886b9','805a840f-f592-45f7-822a-28fab7880503','a839c02a-5b58-44dd-bceb-270a19db332f','Прочие внеоборотные активы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'111');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('c476b650-4f12-4b46-8720-6cc2488e54f6','805a840f-f592-45f7-822a-28fab7880503',null,'Текущие активы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'200');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('dbe7f602-749f-46c6-956c-3530b54679fd','805a840f-f592-45f7-822a-28fab7880503','c476b650-4f12-4b46-8720-6cc2488e54f6','Основные средства, подготовленные для продажи, текущие',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'201');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('e9ed380c-c667-41f5-aec3-5a35119daba4','805a840f-f592-45f7-822a-28fab7880503','c476b650-4f12-4b46-8720-6cc2488e54f6','Затраты по незавершенному строительству, текущие',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'202');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('c9bd33e8-4207-45a2-9f1d-bd49d9f12ed8','805a840f-f592-45f7-822a-28fab7880503','c476b650-4f12-4b46-8720-6cc2488e54f6','Запасы',0,0,1,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'203');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('4866c407-c9d6-4323-9ecf-302c802d29ed','805a840f-f592-45f7-822a-28fab7880503','c9bd33e8-4207-45a2-9f1d-bd49d9f12ed8','Сырье и материалы',0,0,1,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'2031');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('1caf2059-d80c-4e7e-9c57-651812122cf2','805a840f-f592-45f7-822a-28fab7880503','c9bd33e8-4207-45a2-9f1d-bd49d9f12ed8','Незавершенное производство',0,0,1,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'2032');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('8a8719de-f703-4fcb-980f-3a0a782723bb','805a840f-f592-45f7-822a-28fab7880503','1caf2059-d80c-4e7e-9c57-651812122cf2','Основное производство',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20321');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('f15638e9-8923-4da2-b996-17b0c24aed62','805a840f-f592-45f7-822a-28fab7880503','1caf2059-d80c-4e7e-9c57-651812122cf2','Вспомогательное производство',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20322');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('25a5503b-9934-47e5-ab7d-1575feda79a6','805a840f-f592-45f7-822a-28fab7880503','1caf2059-d80c-4e7e-9c57-651812122cf2','Общепроизводственные расходы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20323');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b35dd-4053-11d8-9685-0050ba83c28e','805a840f-f592-45f7-822a-28fab7880503','1caf2059-d80c-4e7e-9c57-651812122cf2','Обслуживающие производства',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20324');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('c3a6a2f7-a913-4060-9b36-552f386254c1','805a840f-f592-45f7-822a-28fab7880503','1caf2059-d80c-4e7e-9c57-651812122cf2','Брак в производстве',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20328');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('b24bb932-5119-406e-8c7c-f7de296c697b','805a840f-f592-45f7-822a-28fab7880503','c9bd33e8-4207-45a2-9f1d-bd49d9f12ed8','Комплектующие и полуфабрикаты',0,0,1,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'2033');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('d52ca011-faf5-4645-9f70-471eb57a18b0','805a840f-f592-45f7-822a-28fab7880503','c9bd33e8-4207-45a2-9f1d-bd49d9f12ed8','Готовая продукция',0,0,1,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'2034');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ce905d4b-6cb2-438b-ac0f-c9f93bd8e276','805a840f-f592-45f7-822a-28fab7880503','c9bd33e8-4207-45a2-9f1d-bd49d9f12ed8','Товары для перепродажи',0,0,1,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'2035');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b3605-4053-11d8-9685-0050ba83c28e','805a840f-f592-45f7-822a-28fab7880503','ce905d4b-6cb2-438b-ac0f-c9f93bd8e276','Товары на складе',0,0,1,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20351');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b364e-4053-11d8-9685-0050ba83c28e','805a840f-f592-45f7-822a-28fab7880503','ce905d4b-6cb2-438b-ac0f-c9f93bd8e276','Товары в розничной торговле (за вчетом наценки)',0,0,1,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20352');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b369a-4053-11d8-9685-0050ba83c28e','805a840f-f592-45f7-822a-28fab7880503','ac4b364e-4053-11d8-9685-0050ba83c28e','Товары в рознице',0,0,1,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'203521');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b36af-4053-11d8-9685-0050ba83c28e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','ac4b364e-4053-11d8-9685-0050ba83c28e','Торговая наценка',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'203522');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('559ca16e-61e2-401d-b886-d95d184e08b0','805a840f-f592-45f7-822a-28fab7880503','ce905d4b-6cb2-438b-ac0f-c9f93bd8e276','Тара под товарами',0,0,1,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20353');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('e79167b8-5b34-4912-9327-112d8ff0758c','805a840f-f592-45f7-822a-28fab7880503','c9bd33e8-4207-45a2-9f1d-bd49d9f12ed8','Прочие запасы',0,0,1,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'2036');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b36c6-4053-11d8-9685-0050ba83c28e','805a840f-f592-45f7-822a-28fab7880503','e79167b8-5b34-4912-9327-112d8ff0758c','Товары на комиссии',0,0,1,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20361');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b373c-4053-11d8-9685-0050ba83c28e','805a840f-f592-45f7-822a-28fab7880503','e79167b8-5b34-4912-9327-112d8ff0758c','Выполненные этапы работ',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20362');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('14f843ed-48d7-411e-90e9-e43dfa838683','805a840f-f592-45f7-822a-28fab7880503','e79167b8-5b34-4912-9327-112d8ff0758c','Малоценные и быстроизнашивающиеся предметы',0,0,1,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20363');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('72def970-de5f-426b-85d3-a01910e5ee2f','805a840f-f592-45f7-822a-28fab7880503','c476b650-4f12-4b46-8720-6cc2488e54f6','Прочие финансовые вложения, краткосрочные',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'204');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('192b8f49-8e6c-4c19-abf4-83b2b6e4e1ac','805a840f-f592-45f7-822a-28fab7880503','72def970-de5f-426b-85d3-a01910e5ee2f','Вложения для продажи, краткосрочные',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'2041');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('5a5e3e42-b2e5-45bc-b263-1ec6f0908dba','805a840f-f592-45f7-822a-28fab7880503','72def970-de5f-426b-85d3-a01910e5ee2f','Вложения для дивидендов, краткосрочные',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'2042');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('77d71a2b-c975-4a3c-9bce-e18e89f95606','805a840f-f592-45f7-822a-28fab7880503','72def970-de5f-426b-85d3-a01910e5ee2f','Займы выданные, краткосрочные',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'2043');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('9e935121-3009-46ce-84b7-a448de24f5c2','805a840f-f592-45f7-822a-28fab7880503','72def970-de5f-426b-85d3-a01910e5ee2f','Инвестиции для продажи, текущие',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'2044');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('074c108d-2088-4eae-b5d8-e1121f7b0085','805a840f-f592-45f7-822a-28fab7880503','72def970-de5f-426b-85d3-a01910e5ee2f','Прочие финасовые вложения, текущие',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'2045');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('1630d252-9a19-49eb-8f09-0f406d4c37fc','805a840f-f592-45f7-822a-28fab7880503','c476b650-4f12-4b46-8720-6cc2488e54f6','Налоги к возмещению из бюджета',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'206');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ba8ba12a-2756-4993-8053-db261e7a5ab6','805a840f-f592-45f7-822a-28fab7880503','1630d252-9a19-49eb-8f09-0f406d4c37fc','НДС к возмещению из бюджета',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'2061');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('e23a178a-66d6-4731-961f-31c39c75b961','805a840f-f592-45f7-822a-28fab7880503','c476b650-4f12-4b46-8720-6cc2488e54f6','Дебиторская задолженность, текущая',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'207');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('7e066354-988f-43d3-ba57-71f464f45e51','805a840f-f592-45f7-822a-28fab7880503','e23a178a-66d6-4731-961f-31c39c75b961','Задолженность покупателей и заказчиков, за вычетом резервов, текущая',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'2071');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('79632fe5-2815-4312-9cd0-fc015558d1e4','805a840f-f592-45f7-822a-28fab7880503','7e066354-988f-43d3-ba57-71f464f45e51','Задолженность покупателей, текущая',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20711');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('c0cf8e6f-b201-45e6-a9c4-d2ad71c49e88','d5e5accd-f0f0-4d1f-8031-a26161f280cc','7e066354-988f-43d3-ba57-71f464f45e51','Резерв задолженность покупателей, текущая',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20712');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('f78e5744-8fd4-42b5-8cbd-0ab48d89999a','805a840f-f592-45f7-822a-28fab7880503','e23a178a-66d6-4731-961f-31c39c75b961','Задолженность по расчетам со связанным сторонами, нетто, текущая',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'2072');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('2002c5bb-f0f4-4ac5-98a9-ed7a6cb6080e','805a840f-f592-45f7-822a-28fab7880503','f78e5744-8fd4-42b5-8cbd-0ab48d89999a','Задолженность связанных сторон, текущая',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20721');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('38c530e4-45b6-4c7e-b6dc-09f15873db02','805a840f-f592-45f7-822a-28fab7880503','2002c5bb-f0f4-4ac5-98a9-ed7a6cb6080e','Задолженность дочерних организаций, текущая',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'207211');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('6876a675-41a4-4da5-8009-a34aba21011e','805a840f-f592-45f7-822a-28fab7880503','2002c5bb-f0f4-4ac5-98a9-ed7a6cb6080e','Задолженность зависимых организаций, текущая',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'207212');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('6a487b53-0e49-4d10-9b17-e4c7dcfed748','805a840f-f592-45f7-822a-28fab7880503','2002c5bb-f0f4-4ac5-98a9-ed7a6cb6080e','Задолженность совместно-контролируемых юридических лиц, долгосрочная',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'207213');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('75a4e526-aaf7-4c5b-8660-7a0485004fa4','d5e5accd-f0f0-4d1f-8031-a26161f280cc','f78e5744-8fd4-42b5-8cbd-0ab48d89999a','Резерв задолженность связанных сторон, текущая',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20722');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ae68b114-cd13-4d13-b72a-1642120fadea','805a840f-f592-45f7-822a-28fab7880503','e23a178a-66d6-4731-961f-31c39c75b961','Платежи по финансовой аренде к получению, за вычетом резервов, текущие',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'2073');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('988e6363-c098-45a7-8b17-2b8fc07573ab','805a840f-f592-45f7-822a-28fab7880503','ae68b114-cd13-4d13-b72a-1642120fadea','Платежи по финансовой аренде к получению, текущие',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20731');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('b2ccb7ed-bb28-4605-9233-ee6e93f8ec8c','d5e5accd-f0f0-4d1f-8031-a26161f280cc','ae68b114-cd13-4d13-b72a-1642120fadea','Резерв на неполучение платежей по финансовой аренде к получению, текущим',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20732');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('834cf750-ce45-4fcd-a310-3619e0416fbf','805a840f-f592-45f7-822a-28fab7880503','e23a178a-66d6-4731-961f-31c39c75b961','Прочая дебиторская задолженность, текущая, за вычетом резервов',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'2074');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('6860dd61-f667-464c-a5c6-50a5bffd46b2','805a840f-f592-45f7-822a-28fab7880503','834cf750-ce45-4fcd-a310-3619e0416fbf','Прочая дебиторская задолженность, текущая',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20741');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('06a2ecdb-ba7d-42ee-b23d-10d5436b99d9','d5e5accd-f0f0-4d1f-8031-a26161f280cc','834cf750-ce45-4fcd-a310-3619e0416fbf','Резерв сомнительной прочей дебиторской задолженности, текущей',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20742');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('252919fd-5d75-4706-846f-3af3754912e1','805a840f-f592-45f7-822a-28fab7880503','834cf750-ce45-4fcd-a310-3619e0416fbf','Расчеты с подотчетными лицами',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20743');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('e964bf65-ec4b-4dba-a0fc-36f05c5e74ba','805a840f-f592-45f7-822a-28fab7880503','834cf750-ce45-4fcd-a310-3619e0416fbf','Расчеты за размещенные акции',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'20744');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('e738142d-7e00-4cbc-8df1-073308e13a84','805a840f-f592-45f7-822a-28fab7880503','e23a178a-66d6-4731-961f-31c39c75b961','Авансы выданные, текущие',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'2075');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('d5ca2a82-6654-4fef-99fe-b949f09e2b19','805a840f-f592-45f7-822a-28fab7880503','c476b650-4f12-4b46-8720-6cc2488e54f6','Денежные средства и их эквиваленты',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'208');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('81ac9325-78a1-433f-aa12-6db12418769f','805a840f-f592-45f7-822a-28fab7880503','d5ca2a82-6654-4fef-99fe-b949f09e2b19','Касса',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'2081');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('eed99afb-816f-4c6a-8c32-694275494b7b','805a840f-f592-45f7-822a-28fab7880503','d5ca2a82-6654-4fef-99fe-b949f09e2b19','Счета в банках',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'2082');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('8d4d1dfc-25cb-457b-b43c-c99826df8952','805a840f-f592-45f7-822a-28fab7880503','d5ca2a82-6654-4fef-99fe-b949f09e2b19','Краткосрочные депозиты',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'2083');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('1be4cd0e-3f90-4ccc-9544-ef68a19f7512','bc169722-1c3d-4788-8a9f-2099e176e17f',null,'Служебный',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'000');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('a839c02a-5b58-44dd-bceb-270a19db332f','805a840f-f592-45f7-822a-28fab7880503',null,'Внеоборотные активы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'100');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('7384e8ec-a8d1-4302-9345-6f05a6f08f9a','805a840f-f592-45f7-822a-28fab7880503','a839c02a-5b58-44dd-bceb-270a19db332f','Основные средства',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'101');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('e2845000-cf89-4f8c-8331-0f4b0953340f','805a840f-f592-45f7-822a-28fab7880503','7384e8ec-a8d1-4302-9345-6f05a6f08f9a','Земля',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1011');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('594a4934-5660-44dc-971f-2e0c6371d459','805a840f-f592-45f7-822a-28fab7880503','7384e8ec-a8d1-4302-9345-6f05a6f08f9a','Здания, нетто',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1012');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('99d9cb77-5fbe-475f-963d-d77a07901563','805a840f-f592-45f7-822a-28fab7880503','594a4934-5660-44dc-971f-2e0c6371d459','Здания',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10121');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('505bea7f-c1b6-4139-a7ae-dc30b0c44ffb','d5e5accd-f0f0-4d1f-8031-a26161f280cc','594a4934-5660-44dc-971f-2e0c6371d459','Накопленная амортизация, здания',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10122');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('1e690273-cdea-41fc-aa61-df5aae4c1337','805a840f-f592-45f7-822a-28fab7880503','7384e8ec-a8d1-4302-9345-6f05a6f08f9a','Сооружения и оборудование, нетто',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1013');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('087c584f-d4c6-4d3f-b15a-8e40e69c24e3','805a840f-f592-45f7-822a-28fab7880503','1e690273-cdea-41fc-aa61-df5aae4c1337','Сооружения и оборудование',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10131');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('2b078ec2-b268-489a-b904-ab6b72d5ead6','d5e5accd-f0f0-4d1f-8031-a26161f280cc','1e690273-cdea-41fc-aa61-df5aae4c1337','Накопленная амортизация, сооружения и оборудование',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10132');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('dee556ff-2b38-4bcd-b24f-a2d9ae4b16ea','805a840f-f592-45f7-822a-28fab7880503','7384e8ec-a8d1-4302-9345-6f05a6f08f9a','Машины и оборудование (кроме офисного), нетто',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1014');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('5df3ea66-934b-4fc5-b143-6bb1c3565caf','805a840f-f592-45f7-822a-28fab7880503','dee556ff-2b38-4bcd-b24f-a2d9ae4b16ea','Машины и оборудование (кроме офисного)',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10141');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('cd213ab0-25b5-4af4-86af-8050b9f62628','d5e5accd-f0f0-4d1f-8031-a26161f280cc','dee556ff-2b38-4bcd-b24f-a2d9ae4b16ea','Машины и оборудование (кроме офисного), накопленная амортизация',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10142');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('37dd24eb-e677-45b4-b69d-fecf438736e6','805a840f-f592-45f7-822a-28fab7880503','7384e8ec-a8d1-4302-9345-6f05a6f08f9a','Офисное оборудование нетто',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1015');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('11f9b806-5174-45f6-9c56-1f7a2823c2ef','805a840f-f592-45f7-822a-28fab7880503','37dd24eb-e677-45b4-b69d-fecf438736e6','Офисное оборудование',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10151');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('8ce8dbde-fbc9-49aa-bd04-b287914e736c','d5e5accd-f0f0-4d1f-8031-a26161f280cc','37dd24eb-e677-45b4-b69d-fecf438736e6','Офисное оборудование, накопленная амортизация',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10152');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('c6d50675-562b-444d-b885-45a3b4aaac88','805a840f-f592-45f7-822a-28fab7880503','7384e8ec-a8d1-4302-9345-6f05a6f08f9a','Автотранспортные средства, нетто',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1016');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('0d3172aa-93ad-44e8-8963-2e4c90820cae','805a840f-f592-45f7-822a-28fab7880503','c6d50675-562b-444d-b885-45a3b4aaac88','Автотранспортные средства',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10161');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('a4173c10-5cb7-4a2e-80dd-3f0df76b37fb','d5e5accd-f0f0-4d1f-8031-a26161f280cc','c6d50675-562b-444d-b885-45a3b4aaac88','Амортизация автотранспортных средств',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10162');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('a302c052-286d-4e15-971e-d36b48db92f9','805a840f-f592-45f7-822a-28fab7880503','7384e8ec-a8d1-4302-9345-6f05a6f08f9a','Вложения в лизинговое оборудование, нетто',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1017');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('a9948bc2-fba8-42a2-a9d7-8f257efc8cff','805a840f-f592-45f7-822a-28fab7880503','a302c052-286d-4e15-971e-d36b48db92f9','Вложения в лизинговое оборудование',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10171');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('316dc8da-6a32-48e5-bb11-5e93c0328606','d5e5accd-f0f0-4d1f-8031-a26161f280cc','a302c052-286d-4e15-971e-d36b48db92f9','Вложения в лизинговое оборудование, амортизация',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10172');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('8d35e8dd-b4b8-442e-bb70-48e682d345ca','805a840f-f592-45f7-822a-28fab7880503','7384e8ec-a8d1-4302-9345-6f05a6f08f9a','Прочие основные средства, нетто',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1018');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('5b03a7c2-3ea8-4d59-ad95-78bf10596869','805a840f-f592-45f7-822a-28fab7880503','8d35e8dd-b4b8-442e-bb70-48e682d345ca','Прочие основные средства',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10181');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('a9e51973-563e-4faa-bfbe-2d48c199cd37','d5e5accd-f0f0-4d1f-8031-a26161f280cc','8d35e8dd-b4b8-442e-bb70-48e682d345ca','Прочие основные средства, амортизация',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10182');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('f075b5ff-f7df-40ac-84d0-26ac88dd99ca','805a840f-f592-45f7-822a-28fab7880503','7384e8ec-a8d1-4302-9345-6f05a6f08f9a','Приобретение и строительство ОС',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1019');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('a67e5c4f-8bb7-4754-ace0-f6daac90090d','805a840f-f592-45f7-822a-28fab7880503','f075b5ff-f7df-40ac-84d0-26ac88dd99ca','Незавершенное строительство',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10191');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('f6bca100-5262-432c-90fa-97b14936a565','805a840f-f592-45f7-822a-28fab7880503','f075b5ff-f7df-40ac-84d0-26ac88dd99ca','Приобретение основных средств',0,0,1,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10192');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('805e9409-f61e-4c77-b813-dfb02e157cbb','805a840f-f592-45f7-822a-28fab7880503','f075b5ff-f7df-40ac-84d0-26ac88dd99ca','Оборудование к установке',0,0,1,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10193');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('79f2e624-f1ef-4b79-80c2-ead1802efaf3','805a840f-f592-45f7-822a-28fab7880503','a839c02a-5b58-44dd-bceb-270a19db332f','Инвестиционная собственность, нетто',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'102');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('0b55cc5b-99ce-44be-97d3-1105ba7adc24','805a840f-f592-45f7-822a-28fab7880503','79f2e624-f1ef-4b79-80c2-ead1802efaf3','Инвестиционная собственность',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1021');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('6054c8ed-db84-4b14-9e43-267d7149ca99','d5e5accd-f0f0-4d1f-8031-a26161f280cc','79f2e624-f1ef-4b79-80c2-ead1802efaf3','Амортизация инвестиционной собственности',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1022');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('9f49d74a-9b7b-4ff9-91f7-b42871352018','805a840f-f592-45f7-822a-28fab7880503','a839c02a-5b58-44dd-bceb-270a19db332f','Нематериальные активы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'103');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('49bf5b9d-248b-4b30-9c49-b034ce5194e0','805a840f-f592-45f7-822a-28fab7880503','9f49d74a-9b7b-4ff9-91f7-b42871352018','Расходы на разработку, нетто',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'1031');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('fcb5b99e-d3d5-40ca-89b5-e48097b9c9d0','805a840f-f592-45f7-822a-28fab7880503','49bf5b9d-248b-4b30-9c49-b034ce5194e0','Расходы на разработку',0,0,1,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10311');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('3ff9b515-8813-46a3-b6ae-e97f9fd46d85','d5e5accd-f0f0-4d1f-8031-a26161f280cc','49bf5b9d-248b-4b30-9c49-b034ce5194e0','Расходы на разработку, амортизация',0,0,1,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'10312');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('9e88ac7f-15ce-4b0c-9794-0ad916a2f706','d5e5accd-f0f0-4d1f-8031-a26161f280cc','cf2c5dd2-39dc-44e0-a5d2-bad62e2e4ace','Прибыль от ассоциированных компаний',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'80122');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('b58b5d5f-7d7c-4878-ab68-a6be0d658afa','d5e5accd-f0f0-4d1f-8031-a26161f280cc','cf2c5dd2-39dc-44e0-a5d2-bad62e2e4ace','Доход от неоперационной курсовой разницы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'80123');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('87aff527-deec-43e7-b7fd-114f4be4a74d','d5e5accd-f0f0-4d1f-8031-a26161f280cc','cf2c5dd2-39dc-44e0-a5d2-bad62e2e4ace','Доходы по инвестициям',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'80124');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('bfc606d8-5276-49cd-a6e4-92ff4c1c93c2','d5e5accd-f0f0-4d1f-8031-a26161f280cc','cf2c5dd2-39dc-44e0-a5d2-bad62e2e4ace','Прочие неоперационные доходы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'80129');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('abca30e9-3857-4652-8c30-46b706e9686e','805a840f-f592-45f7-822a-28fab7880503','0ff644ad-d235-4d27-b18b-78a284cffc69','Прочие расходы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'802');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('4db6ac58-340c-43a0-9cc6-7d1cc6051dd3','805a840f-f592-45f7-822a-28fab7880503','abca30e9-3857-4652-8c30-46b706e9686e','Операционные расходы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'8021');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('087914f6-1a02-4f4e-b302-e7f0df1971a1','805a840f-f592-45f7-822a-28fab7880503','4db6ac58-340c-43a0-9cc6-7d1cc6051dd3','Операционные расходы со связанными сторонами',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'80211');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('b4060750-00de-433c-bd72-87b71906fca1','805a840f-f592-45f7-822a-28fab7880503','4db6ac58-340c-43a0-9cc6-7d1cc6051dd3','Административные расходы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'80212');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('45e39dd8-59ad-4356-a59a-d925f97e7618','805a840f-f592-45f7-822a-28fab7880503','4db6ac58-340c-43a0-9cc6-7d1cc6051dd3','Расходы на сбыт',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'80213');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('6e3515a3-08f3-4bb8-a023-bf90ae6c31f1','805a840f-f592-45f7-822a-28fab7880503','4db6ac58-340c-43a0-9cc6-7d1cc6051dd3','Расходы на исследования и разработки',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'80214');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('3d9aaa6a-9707-453d-b4bc-82014fbddcb3','805a840f-f592-45f7-822a-28fab7880503','4db6ac58-340c-43a0-9cc6-7d1cc6051dd3','Расходы от операционной курсовой разницы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'80215');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('fdbca084-8beb-4ee8-a803-ac8173084671','805a840f-f592-45f7-822a-28fab7880503','4db6ac58-340c-43a0-9cc6-7d1cc6051dd3','Прочие операционные расходы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'80219');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('0978ec16-e078-4034-8bde-59406fd7c3a5','805a840f-f592-45f7-822a-28fab7880503','abca30e9-3857-4652-8c30-46b706e9686e','Неоперационные расходы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'8022');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('0584bee5-0b97-4a79-9a6f-ba4b59adaf17','805a840f-f592-45f7-822a-28fab7880503','0978ec16-e078-4034-8bde-59406fd7c3a5','Прочие расходы по опер. со связанными сторонами',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'80221');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('5e2cb39e-5220-4335-8f25-c6826d5b7402','805a840f-f592-45f7-822a-28fab7880503','0978ec16-e078-4034-8bde-59406fd7c3a5','Убыток от ассоциированных компаний',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'80222');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('30b6a1dc-9105-4a08-b578-134324c42e76','805a840f-f592-45f7-822a-28fab7880503','0978ec16-e078-4034-8bde-59406fd7c3a5','Расходы от снижения стоимости активов',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'80223');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('dcd96b8b-704a-450f-86ec-811362806d8d','805a840f-f592-45f7-822a-28fab7880503','0978ec16-e078-4034-8bde-59406fd7c3a5','Отчисления в оценочные резервы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'80224');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('43c13d59-e58c-4d26-8e61-8b95744b0a41','805a840f-f592-45f7-822a-28fab7880503','0978ec16-e078-4034-8bde-59406fd7c3a5','Расходы от неоперационной курсовой разницы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'80225');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('d6a54935-d5f9-4818-84be-75db699979ec','805a840f-f592-45f7-822a-28fab7880503','0978ec16-e078-4034-8bde-59406fd7c3a5','Расходы по инвестициям',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'80226');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('3dbbcf5e-1dcb-4d12-b65f-9edc93137fc2','805a840f-f592-45f7-822a-28fab7880503','0978ec16-e078-4034-8bde-59406fd7c3a5','Финансовые расходы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'80227');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('982db412-2b22-4793-8813-7a42fbe4e4b0','805a840f-f592-45f7-822a-28fab7880503','0978ec16-e078-4034-8bde-59406fd7c3a5','Прочие неоперационные расходы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'80229');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('de77cf5a-6729-424f-9268-fed79307a465','d5e5accd-f0f0-4d1f-8031-a26161f280cc',null,'Прибыли и убытки',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'900');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('44ba3d2a-bc2b-41b9-97b7-c94b8b0c4ba2','d5e5accd-f0f0-4d1f-8031-a26161f280cc','de77cf5a-6729-424f-9268-fed79307a465','Прибыль убыток до налогообложения',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'901');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('6c89d529-2525-4fd2-a512-65273fc18748','d5e5accd-f0f0-4d1f-8031-a26161f280cc','de77cf5a-6729-424f-9268-fed79307a465','Налог на прибыль',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'902');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('9535c4e4-4412-4dd2-b5e1-18c254815082','d5e5accd-f0f0-4d1f-8031-a26161f280cc','de77cf5a-6729-424f-9268-fed79307a465','Доля меньшинства',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'904');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('2113cd8b-79f9-4b47-aa05-a6a151ed712b','805a840f-f592-45f7-822a-28fab7880503','de77cf5a-6729-424f-9268-fed79307a465','Суммарные доходы и расходы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'999');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('e0dd0382-1788-45fd-bfd2-bb9d27677828','d5e5accd-f0f0-4d1f-8031-a26161f280cc','3f007eb4-989c-4ba0-bedb-4b9d9f19cca5','Счета к оплате долгосрочные',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'4081');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('cffeed83-ed19-48ac-bc38-baeb0afa12ec','d5e5accd-f0f0-4d1f-8031-a26161f280cc','3f007eb4-989c-4ba0-bedb-4b9d9f19cca5','Прочие счета к оплате, долгосрочные',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'4082');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac591542-adff-4ccb-8f7e-b8cf5d20cdd3','d5e5accd-f0f0-4d1f-8031-a26161f280cc','3f007eb4-989c-4ba0-bedb-4b9d9f19cca5','Расчеты со связанными сторонами, долгосрочные',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'4083');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('dd0dd072-6eda-4d1c-9768-c2a5811c6255','d5e5accd-f0f0-4d1f-8031-a26161f280cc','ac591542-adff-4ccb-8f7e-b8cf5d20cdd3','Задолженность дочерним организациям, долгосрочная',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'40831');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('730748dd-6011-49bc-a87e-a12540e4e342','d5e5accd-f0f0-4d1f-8031-a26161f280cc','ac591542-adff-4ccb-8f7e-b8cf5d20cdd3','Задолженность зависимым организациям, долгосрочная',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'40832');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ffe5c643-49cc-4e56-bca1-ff470b1b6ea2','d5e5accd-f0f0-4d1f-8031-a26161f280cc','ac591542-adff-4ccb-8f7e-b8cf5d20cdd3','Задолженность совместно контролируемым юридическим лицам, долгосрочная',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'40833');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('958181f5-5386-4381-ae92-837ac05da5ad','d5e5accd-f0f0-4d1f-8031-a26161f280cc','ad67cfe0-ce04-4a65-b7ea-584289f51ae2','Прочие обязательства, долгосрочные',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'409');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('df0c19f6-5334-48eb-90ac-d71a7ce71fea','d5e5accd-f0f0-4d1f-8031-a26161f280cc','958181f5-5386-4381-ae92-837ac05da5ad','Обязательства по финансовой аренде, долгосрочные',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'4091');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('bc695263-5284-409a-82c1-2528b5e0f35c','d5e5accd-f0f0-4d1f-8031-a26161f280cc',null,'Текущие обязательства',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'500');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('bf6a7a58-c0bf-43b2-b6c9-61de134ea602','d5e5accd-f0f0-4d1f-8031-a26161f280cc','bc695263-5284-409a-82c1-2528b5e0f35c','Кредиты и займы, включающие выплату процентов, текущие',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'501');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('dd0c9ace-210f-48bc-af24-bf40b33c8233','d5e5accd-f0f0-4d1f-8031-a26161f280cc','bf6a7a58-c0bf-43b2-b6c9-61de134ea602','Кредиты банков, текущие',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5011');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b3878-4053-11d8-9685-0050ba83c28e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','dd0c9ace-210f-48bc-af24-bf40b33c8233','Долгосрочные кредиты без учета процентов в валюте отчетности',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'50111');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b3892-4053-11d8-9685-0050ba83c28e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','dd0c9ace-210f-48bc-af24-bf40b33c8233','Проценты по текущим кредитам в валюте отчетности',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'50112');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b38ac-4053-11d8-9685-0050ba83c28e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','dd0c9ace-210f-48bc-af24-bf40b33c8233','Текущие кредиты без учета процентов в инвалюте',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'50113');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b38c6-4053-11d8-9685-0050ba83c28e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','dd0c9ace-210f-48bc-af24-bf40b33c8233','Проценты по текущим кредитам в инвалюте',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'50114');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('729372b6-36dc-4390-9ebe-49a2f266198f','d5e5accd-f0f0-4d1f-8031-a26161f280cc','bf6a7a58-c0bf-43b2-b6c9-61de134ea602','Займы обеспеченные, текущие',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5012');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('d2852ddd-2745-4e2a-9605-bcc86c738d42','d5e5accd-f0f0-4d1f-8031-a26161f280cc','bf6a7a58-c0bf-43b2-b6c9-61de134ea602','Конвертируемые займы, текущие',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5013');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('edbb223a-56a5-474d-8cff-2098b7f96a45','d5e5accd-f0f0-4d1f-8031-a26161f280cc','bf6a7a58-c0bf-43b2-b6c9-61de134ea602','Обязательства по выкупу акций, текущие',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5014');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('6f8acf4c-7325-43c2-b314-2aee53572034','d5e5accd-f0f0-4d1f-8031-a26161f280cc','bf6a7a58-c0bf-43b2-b6c9-61de134ea602','Текущие лизинговые платежи',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5015');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('efa3ea8a-2d00-4ed6-bc25-a85402a883f0','d5e5accd-f0f0-4d1f-8031-a26161f280cc','bf6a7a58-c0bf-43b2-b6c9-61de134ea602','Банковские овердрафты',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5016');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('c123b1b4-cf0d-4306-b5a0-3447647de58b','d5e5accd-f0f0-4d1f-8031-a26161f280cc','bf6a7a58-c0bf-43b2-b6c9-61de134ea602','Прочие текущие займы',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5017');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b38e0-4053-11d8-9685-0050ba83c28e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','c123b1b4-cf0d-4306-b5a0-3447647de58b','Займы текущие прочие без учета процентов в валюте отчетности',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'50171');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b390c-4053-11d8-9685-0050ba83c28e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','c123b1b4-cf0d-4306-b5a0-3447647de58b','Проценты по прочим текущим займам не валютные',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'50172');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b3926-4053-11d8-9685-0050ba83c28e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','c123b1b4-cf0d-4306-b5a0-3447647de58b','Займы текущие прочие без учета процентов в инвалюте',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'50173');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b3940-4053-11d8-9685-0050ba83c28e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','c123b1b4-cf0d-4306-b5a0-3447647de58b','Проценты по прочим текущим займам в инвалюте',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'50174');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('fa77a98e-3ec7-4e68-8de1-d1eb07da60c8','d5e5accd-f0f0-4d1f-8031-a26161f280cc','bc695263-5284-409a-82c1-2528b5e0f35c','Текущие займы беспроцентные',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'502');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b396c-4053-11d8-9685-0050ba83c28e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','fa77a98e-3ec7-4e68-8de1-d1eb07da60c8','Текущие займы беспроцентные в валюте отчетности',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5021');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b3986-4053-11d8-9685-0050ba83c28e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','fa77a98e-3ec7-4e68-8de1-d1eb07da60c8','Текущие займы беспроцентные в инвалюте',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5022');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('f1acf479-8031-4575-880b-e6149885395d','d5e5accd-f0f0-4d1f-8031-a26161f280cc','bc695263-5284-409a-82c1-2528b5e0f35c','Отложенные доходы, текущие',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'503');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('e7f08a5c-e5ca-440b-848a-85bbe8aa1987','d5e5accd-f0f0-4d1f-8031-a26161f280cc','f1acf479-8031-4575-880b-e6149885395d','Правительственные субсидии, текущие',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5031');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('f7e2f270-f050-414b-8f2d-02797f158f74','d5e5accd-f0f0-4d1f-8031-a26161f280cc','f1acf479-8031-4575-880b-e6149885395d','Прочие отложенные доходы, текущие',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5032');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('09e14983-1a8a-4752-a1b8-b886bbc65e93','d5e5accd-f0f0-4d1f-8031-a26161f280cc','bc695263-5284-409a-82c1-2528b5e0f35c','Резервы предстоящих платежей, текущие',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'504');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('bf838402-650f-4c5a-87a9-f98d1b2fcc00','d5e5accd-f0f0-4d1f-8031-a26161f280cc','09e14983-1a8a-4752-a1b8-b886bbc65e93','Резерв по гарантийным обязательствам, текущий',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5041');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('de9818e2-f8e0-4dd4-8c92-589d2a8c6412','d5e5accd-f0f0-4d1f-8031-a26161f280cc','09e14983-1a8a-4752-a1b8-b886bbc65e93','Резерв на реструктуризацию, текущий',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5042');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('f1ac4568-fb28-40d3-87ce-aabb369a63ba','d5e5accd-f0f0-4d1f-8031-a26161f280cc','09e14983-1a8a-4752-a1b8-b886bbc65e93','Резерв по судебным разбирательствам, текущий',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5043');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('09ed8bdf-816c-4db0-a54b-949fbc68a491','805a840f-f592-45f7-822a-28fab7880503','09e14983-1a8a-4752-a1b8-b886bbc65e93','Резерв по разовым контрактам, текущий',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5044');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('b0de3bf2-1a4a-4fbd-aaec-3a0fad1ac2c9','d5e5accd-f0f0-4d1f-8031-a26161f280cc','09e14983-1a8a-4752-a1b8-b886bbc65e93','Прочие текущие резервы предстоящих платежей',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5045');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('7b33ef4b-6e94-4e7b-87a8-0a7321a6cdf5','d5e5accd-f0f0-4d1f-8031-a26161f280cc','bc695263-5284-409a-82c1-2528b5e0f35c','Обязательства по оплате труда, текущие',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'505');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('5b153ef5-5b23-4f95-86e3-5d28fa5c0592','d5e5accd-f0f0-4d1f-8031-a26161f280cc','bc695263-5284-409a-82c1-2528b5e0f35c','Обязательства по пенсионным планам, текущие',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'506');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ea336dae-be8e-4da6-92d4-0c265523900c','d5e5accd-f0f0-4d1f-8031-a26161f280cc','bc695263-5284-409a-82c1-2528b5e0f35c','Текущие налоги к уплате',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'508');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('45d78e93-3857-4ed0-8fe3-f95aea1ee7f1','d5e5accd-f0f0-4d1f-8031-a26161f280cc','ea336dae-be8e-4da6-92d4-0c265523900c','НДС к уплате',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5081');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('56455fdd-336c-48ef-b0e6-4de05277e054','d5e5accd-f0f0-4d1f-8031-a26161f280cc','ea336dae-be8e-4da6-92d4-0c265523900c','Налог на прибыль к уплате',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5082');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('bc941100-edf0-4cce-b248-418510ba92e4','d5e5accd-f0f0-4d1f-8031-a26161f280cc','ea336dae-be8e-4da6-92d4-0c265523900c','НДФЛ к уплате',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5083');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('e893196f-055c-488b-ae18-47412e83eab5','d5e5accd-f0f0-4d1f-8031-a26161f280cc','ea336dae-be8e-4da6-92d4-0c265523900c','Единый налог к уплате',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5084');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('e5b08970-175f-413d-8364-a14239431834','d5e5accd-f0f0-4d1f-8031-a26161f280cc','ea336dae-be8e-4da6-92d4-0c265523900c','Акциз к уплате',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5085');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('4abe1709-89fe-43af-9325-dce5f0ef2307','d5e5accd-f0f0-4d1f-8031-a26161f280cc','ea336dae-be8e-4da6-92d4-0c265523900c','Прочие налоги к уплате',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5089');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('1c30fe47-b138-42f6-92cc-8310d729b896','d5e5accd-f0f0-4d1f-8031-a26161f280cc','bc695263-5284-409a-82c1-2528b5e0f35c','Текущая кредиторская задолженность',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'509');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('8e2e38d2-4baf-4463-8de1-8c7d4067583a','d5e5accd-f0f0-4d1f-8031-a26161f280cc','1c30fe47-b138-42f6-92cc-8310d729b896','Расчеты с поставщиками и подрядчиками, текущие',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5091');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('b4bc3cd7-123f-446f-8ede-e8ab1c63d50a','d5e5accd-f0f0-4d1f-8031-a26161f280cc','1c30fe47-b138-42f6-92cc-8310d729b896','Задолженность связанных сторон к уплате',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5092');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('6514924a-be19-4352-b20f-17ff908b7de8','d5e5accd-f0f0-4d1f-8031-a26161f280cc','b4bc3cd7-123f-446f-8ede-e8ab1c63d50a','Задолженность дочерним организациям, текущая',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'50921');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('2f33d33e-f067-42ad-bf58-b7790bb86bb2','d5e5accd-f0f0-4d1f-8031-a26161f280cc','b4bc3cd7-123f-446f-8ede-e8ab1c63d50a','Задолженность зависимым организациям, текущая',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'50922');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('7690d7e4-2a36-4cf1-abd3-9739bee028db','d5e5accd-f0f0-4d1f-8031-a26161f280cc','b4bc3cd7-123f-446f-8ede-e8ab1c63d50a','Задолженность совместно контролируемым юридическим лицам, текущая',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'50923');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac84cf42-9c6c-41b9-ae27-81f6820c4534','d5e5accd-f0f0-4d1f-8031-a26161f280cc','1c30fe47-b138-42f6-92cc-8310d729b896','Прочие счета к оплате, текущие',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5093');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('3dce9da4-92d3-45d3-af63-0ef11c2822e9','d5e5accd-f0f0-4d1f-8031-a26161f280cc','bc695263-5284-409a-82c1-2528b5e0f35c','Прочие обязательства, текущие',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'510');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('969a887b-044e-4ee5-ad2e-74039a731ba5','d5e5accd-f0f0-4d1f-8031-a26161f280cc','3dce9da4-92d3-45d3-af63-0ef11c2822e9','Начисленные расходы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5101');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('63dc131a-0e2e-4e60-80f2-e7890cead097','d5e5accd-f0f0-4d1f-8031-a26161f280cc','3dce9da4-92d3-45d3-af63-0ef11c2822e9','Дивиденды к выплате',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5102');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('c3beaa99-dc00-4cf7-b1aa-aa17eb4f810a','bc169722-1c3d-4788-8a9f-2099e176e17f','3dce9da4-92d3-45d3-af63-0ef11c2822e9','Задолженность за выкупленные собственные акции',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'5103');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('4ebfe328-88e9-46cf-a1ce-f39bd9ec0d1a','bc169722-1c3d-4788-8a9f-2099e176e17f','bc695263-5284-409a-82c1-2528b5e0f35c','Внутрихозяйственные расчеты',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'511');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('8af62ee0-f9e0-4580-9585-7f07d29244fe','d5e5accd-f0f0-4d1f-8031-a26161f280cc',null,'Выручка',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'600');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('f8d70454-e7b9-4d98-bb30-4407bf130a57','805a840f-f592-45f7-822a-28fab7880503',null,'Расходы на продажу',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'700');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('647c9a20-d279-420b-a206-57570dd79aef','805a840f-f592-45f7-822a-28fab7880503','f8d70454-e7b9-4d98-bb30-4407bf130a57','Себестоимость продаж',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'701');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('0ff644ad-d235-4d27-b18b-78a284cffc69','d5e5accd-f0f0-4d1f-8031-a26161f280cc',null,'Прочие доходы и расходы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'800');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('7576cbbf-f4ac-4d0d-a792-8f8c8cff56a0','d5e5accd-f0f0-4d1f-8031-a26161f280cc','0ff644ad-d235-4d27-b18b-78a284cffc69','Прочие доходы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'801');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('3cf71655-7d6a-4ffe-ba93-0c81b779d14e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','7576cbbf-f4ac-4d0d-a792-8f8c8cff56a0','Операционные доходы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'8011');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('b76b251e-7b77-4e42-90f9-62e2b3932f67','d5e5accd-f0f0-4d1f-8031-a26161f280cc','3cf71655-7d6a-4ffe-ba93-0c81b779d14e','Операционные доходы со связанными сторонами',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'80111');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('631e6cbc-694c-4465-8b41-306a91c487b7','d5e5accd-f0f0-4d1f-8031-a26161f280cc','3cf71655-7d6a-4ffe-ba93-0c81b779d14e','Доход от операционной курсовой разницы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'80112');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('f8f9a10b-dd5c-43d0-ad8f-d499cdbddaef','d5e5accd-f0f0-4d1f-8031-a26161f280cc','3cf71655-7d6a-4ffe-ba93-0c81b779d14e','Прочие операционные доходы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'80119');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('cf2c5dd2-39dc-44e0-a5d2-bad62e2e4ace','d5e5accd-f0f0-4d1f-8031-a26161f280cc','7576cbbf-f4ac-4d0d-a792-8f8c8cff56a0','Неоперационные доходы',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'8012');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('a2882609-c90b-4dda-920f-8e8117fc56ee','d5e5accd-f0f0-4d1f-8031-a26161f280cc','cf2c5dd2-39dc-44e0-a5d2-bad62e2e4ace','Прочие доходы по опер. со связанными сторонами',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'80121');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('9cc1dbf3-dea7-402b-9719-ce7e272dea64','d5e5accd-f0f0-4d1f-8031-a26161f280cc','c336ade6-e1b1-4979-84dd-0f8fb5061151','Доля меньшинства в чистых активах',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'306');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ad67cfe0-ce04-4a65-b7ea-584289f51ae2','d5e5accd-f0f0-4d1f-8031-a26161f280cc',null,'Долгосрочные обязательства',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'400');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('dc29d96c-ebde-4e31-92a3-a3630955c069','d5e5accd-f0f0-4d1f-8031-a26161f280cc','ad67cfe0-ce04-4a65-b7ea-584289f51ae2','Кредиты и займы, включающие выплату процентов, долгосрочные',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'401');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('3ee8fa33-d90f-42cc-b697-6d5d0f5c45dc','d5e5accd-f0f0-4d1f-8031-a26161f280cc','dc29d96c-ebde-4e31-92a3-a3630955c069','Кредиты банков, долгосрочные',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'4011');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b3757-4053-11d8-9685-0050ba83c28e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','3ee8fa33-d90f-42cc-b697-6d5d0f5c45dc','Долгосрочные кредиты без учета процентов в валюте отчетности',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'40111');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b376a-4053-11d8-9685-0050ba83c28e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','3ee8fa33-d90f-42cc-b697-6d5d0f5c45dc','Проценты по долгосрочным кредитам в валюте отчетности',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'40112');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b37a1-4053-11d8-9685-0050ba83c28e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','3ee8fa33-d90f-42cc-b697-6d5d0f5c45dc','Долгосрочные кредиты без учета процентов в инвалюте',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'40113');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b37b4-4053-11d8-9685-0050ba83c28e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','3ee8fa33-d90f-42cc-b697-6d5d0f5c45dc','Проценты по долгосрочным кредитам в инвалюте',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'40114');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('51a7fe34-b601-4ad5-ae64-d450c38123f1','d5e5accd-f0f0-4d1f-8031-a26161f280cc','dc29d96c-ebde-4e31-92a3-a3630955c069','Займы обеспеченные, долгосрочные',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'4012');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('19de70c6-addc-49bf-bfb7-741e94dfe70a','d5e5accd-f0f0-4d1f-8031-a26161f280cc','dc29d96c-ebde-4e31-92a3-a3630955c069','Конвертируемые займы, долгосрочные',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'4013');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('5560efc6-159c-4719-b962-7beaf4d45c8e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','dc29d96c-ebde-4e31-92a3-a3630955c069','Обязательства по выкупу акций, долгосрочные',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'4014');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('8b7cb26e-3493-423a-a2c4-d4ac94149e3b','d5e5accd-f0f0-4d1f-8031-a26161f280cc','dc29d96c-ebde-4e31-92a3-a3630955c069','Лизинговые платежи, долгосрочные',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'4015');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('82c0784b-6494-497a-9b32-34a385fbacd0','d5e5accd-f0f0-4d1f-8031-a26161f280cc','dc29d96c-ebde-4e31-92a3-a3630955c069','Прочие займы долгосрочные',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'4016');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b37ca-4053-11d8-9685-0050ba83c28e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','82c0784b-6494-497a-9b32-34a385fbacd0','Займы долгосрочные прочие без учета процентов в валюте отчетности',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'40161');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b37f3-4053-11d8-9685-0050ba83c28e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','82c0784b-6494-497a-9b32-34a385fbacd0','Проценты по прочим долгосрочным займам не валютные',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'40162');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b37dd-4053-11d8-9685-0050ba83c28e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','82c0784b-6494-497a-9b32-34a385fbacd0','Займы долгосрочные прочие без учета процентов в инвалюте',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'40163');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b3806-4053-11d8-9685-0050ba83c28e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','82c0784b-6494-497a-9b32-34a385fbacd0','Проценты по прочим долгосрочным займам в инвалюте',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'40164');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('92e4fe01-ee78-4ccd-9b64-2474ddd86eb7','d5e5accd-f0f0-4d1f-8031-a26161f280cc','ad67cfe0-ce04-4a65-b7ea-584289f51ae2','Долгосрочные займы, беспроцентные',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'402');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b382e-4053-11d8-9685-0050ba83c28e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','92e4fe01-ee78-4ccd-9b64-2474ddd86eb7','Долгосрочные займы беспроцентные не валютные',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'4021');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('ac4b3841-4053-11d8-9685-0050ba83c28e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','92e4fe01-ee78-4ccd-9b64-2474ddd86eb7','Долгосрочные займы беспроцентные валютные',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'4022');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('f9481b13-d309-4f6b-8c4a-0e8bf249f24f','d5e5accd-f0f0-4d1f-8031-a26161f280cc','ad67cfe0-ce04-4a65-b7ea-584289f51ae2','Отложенные доходы, долгосрочные',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'403');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('76af5ed8-a7a2-4862-8a53-5a0f0798a7ca','d5e5accd-f0f0-4d1f-8031-a26161f280cc','f9481b13-d309-4f6b-8c4a-0e8bf249f24f','Правительственные субсидии, долгосрочные',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'4031');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('6bcf2a41-3a3e-4826-bfc7-3aa21b87893f','d5e5accd-f0f0-4d1f-8031-a26161f280cc','f9481b13-d309-4f6b-8c4a-0e8bf249f24f','Прочие отложенные доходы, долгосрочные',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'4032');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('f8703e1c-00cb-41cb-800a-8253ca099a1e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','ad67cfe0-ce04-4a65-b7ea-584289f51ae2','Резервы предстоящих платежей, долгосрочные',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'404');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('8b813bb4-e331-46ac-b9bb-24c9adc627f9','d5e5accd-f0f0-4d1f-8031-a26161f280cc','f8703e1c-00cb-41cb-800a-8253ca099a1e','Резрв по гарантийным обязательствам, долгосрочный',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'4041');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('511085e4-58d3-45ca-bab4-6b38f3fcb14a','d5e5accd-f0f0-4d1f-8031-a26161f280cc','f8703e1c-00cb-41cb-800a-8253ca099a1e','Резерв на реструктуризацию, долгосрочный',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'4042');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('17366065-d9c1-49a0-91cf-e588e0c11394','d5e5accd-f0f0-4d1f-8031-a26161f280cc','f8703e1c-00cb-41cb-800a-8253ca099a1e','Резерв по судебным разбирательствам, долгосрочный',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'4043');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('53f3efe0-5c35-4f4f-9b64-1e0662a35b58','d5e5accd-f0f0-4d1f-8031-a26161f280cc','f8703e1c-00cb-41cb-800a-8253ca099a1e','Резерв по разовым контрактам, догосрочный',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'4044');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('4297c2dd-cdd5-48c7-a6ec-640a767495e2','d5e5accd-f0f0-4d1f-8031-a26161f280cc','f8703e1c-00cb-41cb-800a-8253ca099a1e','Прочие резервы платежей, долгосрочные',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'4045');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('cb7b50f0-89ed-4f01-a2f4-71a495f0e249','d5e5accd-f0f0-4d1f-8031-a26161f280cc','ad67cfe0-ce04-4a65-b7ea-584289f51ae2','Обязательства по пенсионным планам, долгосрочные',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'405');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('d7f4f34e-ac34-493a-ae91-7b771d79f38e','d5e5accd-f0f0-4d1f-8031-a26161f280cc','ad67cfe0-ce04-4a65-b7ea-584289f51ae2','Отложенные налоговые обязательства',0,0,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'407');
Insert into DBA_DIVAS.PLAN_ACC (ID,ACC_TYPE,PARENT_ID,FULLNAME,ZABALANSOV,VALUTN,KOLISHESTV,DELETED,VERSION,CODE) values ('3f007eb4-989c-4ba0-bedb-4b9d9f19cca5','d5e5accd-f0f0-4d1f-8031-a26161f280cc','ad67cfe0-ce04-4a65-b7ea-584289f51ae2','Долгосрочная кредиторская задолженность',0,1,0,0,to_timestamp('27-MAY-14 09.41.22.312326000 PM','DD-MON-RR HH.MI.SSXFF AM'),'408');
REM INSERTING into DBA_DIVAS.PLAN_ACC_SUBCONTO
SET DEFINE OFF;
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('bb8dac47-2b41-4dc0-a824-5e303aee6209','f8d70454-e7b9-4d98-bb30-4407bf130a57','47fd02a5-44ac-4ce1-a238-9282a03f19c9',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('74301ed9-b07f-4b40-9753-c5c00340720f','f8d70454-e7b9-4d98-bb30-4407bf130a57','8c5bfc63-f4fe-4769-acb3-d3642571cebc',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('8ec303ed-da54-4054-affe-2d72598aa4df','b4060750-00de-433c-bd72-87b71906fca1','78ba09e7-4240-4992-ad06-9a73fb392973',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('ac1d43a0-66db-4c6e-9aef-d142f32b5447','087914f6-1a02-4f4e-b302-e7f0df1971a1','78ba09e7-4240-4992-ad06-9a73fb392973',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('f4c414ed-1908-44ca-9b4b-1ff0f127877c','3d9aaa6a-9707-453d-b4bc-82014fbddcb3','78ba09e7-4240-4992-ad06-9a73fb392973',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('cbb2466e-2639-43aa-a19d-498894ead937','3dbbcf5e-1dcb-4d12-b65f-9edc93137fc2','78ba09e7-4240-4992-ad06-9a73fb392973',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('3547033e-d02c-49eb-9f93-2203b82114bb','559ca16e-61e2-401d-b886-d95d184e08b0','8c5bfc63-f4fe-4769-acb3-d3642571cebc',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('cd0ff3a0-1058-450d-b6d8-1876ae821117','ac84cf42-9c6c-41b9-ae27-81f6820c4534','f41de554-6ed1-4555-82c0-7b7210a7f760',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('10a2c862-b462-42fe-acbf-c1c3bbe37447','45e39dd8-59ad-4356-a59a-d925f97e7618','78ba09e7-4240-4992-ad06-9a73fb392973',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('da76f592-d0a6-465e-a70d-151e646bf6de','7576cbbf-f4ac-4d0d-a792-8f8c8cff56a0','47fd02a5-44ac-4ce1-a238-9282a03f19c9',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('f831e27d-cded-4c33-ab88-e51c744ee6ca','fdbca084-8beb-4ee8-a803-ac8173084671','78ba09e7-4240-4992-ad06-9a73fb392973',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('ecc4b1ee-3a78-457d-a8cd-38f03f3a0452','81ac9325-78a1-433f-aa12-6db12418769f','2f620168-a713-4081-99b3-737f7ed9b18a',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('1991bdea-f0ea-497e-9889-41a3dbaf3106','ce905d4b-6cb2-438b-ac0f-c9f93bd8e276','8c5bfc63-f4fe-4769-acb3-d3642571cebc',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('d513cf86-8fba-40d9-9a54-072a9f401bcd','1caf2059-d80c-4e7e-9c57-651812122cf2','8c5bfc63-f4fe-4769-acb3-d3642571cebc',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('37c9fbc5-8690-4a6f-93c0-f4693321beae','79632fe5-2815-4312-9cd0-fc015558d1e4','f41de554-6ed1-4555-82c0-7b7210a7f760',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('0613746f-00b5-4f58-8c6d-83af73f64dd2','4866c407-c9d6-4323-9ecf-302c802d29ed','8c5bfc63-f4fe-4769-acb3-d3642571cebc',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('6d683da4-6aba-4b40-9644-128a57a6f809','c9bd33e8-4207-45a2-9f1d-bd49d9f12ed8','8c5bfc63-f4fe-4769-acb3-d3642571cebc',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('ea327529-d198-45d5-8629-5f0068890af5','d52ca011-faf5-4645-9f70-471eb57a18b0','8c5bfc63-f4fe-4769-acb3-d3642571cebc',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('c0a3bc1c-0891-48de-99a3-c0e1745cf61d','6e3515a3-08f3-4bb8-a023-bf90ae6c31f1','78ba09e7-4240-4992-ad06-9a73fb392973',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('1500b55b-2630-4326-be99-ff33f512d52e','647c9a20-d279-420b-a206-57570dd79aef','47fd02a5-44ac-4ce1-a238-9282a03f19c9',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('a75c05ae-267b-4d24-b0d2-2d4fa4475867','647c9a20-d279-420b-a206-57570dd79aef','8c5bfc63-f4fe-4769-acb3-d3642571cebc',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('b900261a-4bf4-4823-8e2b-0771e48ff2eb','14f843ed-48d7-411e-90e9-e43dfa838683','8c5bfc63-f4fe-4769-acb3-d3642571cebc',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('a71d8140-faac-40f4-8741-d135a1b4a32b','de77cf5a-6729-424f-9268-fed79307a465','47fd02a5-44ac-4ce1-a238-9282a03f19c9',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('04bf7fa3-52e1-4b06-8048-1527766e3dcb','1c30fe47-b138-42f6-92cc-8310d729b896','f41de554-6ed1-4555-82c0-7b7210a7f760',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('39396863-a3c9-4374-a669-9c1818a42428','e79167b8-5b34-4912-9327-112d8ff0758c','8c5bfc63-f4fe-4769-acb3-d3642571cebc',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('a54efb54-f19a-44c7-83c1-5e4ec01c27d2','8af62ee0-f9e0-4580-9585-7f07d29244fe','47fd02a5-44ac-4ce1-a238-9282a03f19c9',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('6395d235-9759-4753-9547-64d6421e6ea9','8af62ee0-f9e0-4580-9585-7f07d29244fe','8c5bfc63-f4fe-4769-acb3-d3642571cebc',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('86cd0e82-1183-4adc-8ac7-848f01bbe99c','e23a178a-66d6-4731-961f-31c39c75b961','f41de554-6ed1-4555-82c0-7b7210a7f760',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('26a91fb6-7c2a-42f4-8d9f-8829c19e1ba7','ac4b3605-4053-11d8-9685-0050ba83c28e','8c5bfc63-f4fe-4769-acb3-d3642571cebc',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('7b0163ac-01f7-41e1-aa64-7ec3ff5966fc','ac4b369a-4053-11d8-9685-0050ba83c28e','8c5bfc63-f4fe-4769-acb3-d3642571cebc',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('dbb8d1c1-3bdd-4244-a73e-c2d252404635','ac4b36c6-4053-11d8-9685-0050ba83c28e','8c5bfc63-f4fe-4769-acb3-d3642571cebc',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('e0f261fa-11ed-45b6-9e6c-7e7834ab31f9','d6a54935-d5f9-4818-84be-75db699979ec','78ba09e7-4240-4992-ad06-9a73fb392973',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('6f7a77e8-3576-46f1-8d18-c36aead0569a','982db412-2b22-4793-8813-7a42fbe4e4b0','78ba09e7-4240-4992-ad06-9a73fb392973',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('5004d70b-5b69-4ea4-93af-702400ae041d','abca30e9-3857-4652-8c30-46b706e9686e','47fd02a5-44ac-4ce1-a238-9282a03f19c9',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('66ef908c-f195-45f4-9a43-1116f5dcfa65','b24bb932-5119-406e-8c7c-f7de296c697b','8c5bfc63-f4fe-4769-acb3-d3642571cebc',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('b0f05292-02ec-482b-b1d1-43a2464beda3','8e2e38d2-4baf-4463-8de1-8c7d4067583a','f41de554-6ed1-4555-82c0-7b7210a7f760',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.PLAN_ACC_SUBCONTO (ID,PLAN_ACC_ID,PLAN_TYPE_SUBC,OBOROT_ONLY,SUMMOVOY,VERSION) values ('17832cd1-8a4e-4af8-b129-1498ce5a7a82','e738142d-7e00-4cbc-8df1-073308e13a84','f41de554-6ed1-4555-82c0-7b7210a7f760',0,1,to_timestamp('27-MAY-14 09.41.24.121740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
REM INSERTING into DBA_DIVAS.PLAN_TYPE_SUBCONTO
SET DEFINE OFF;
Insert into DBA_DIVAS.PLAN_TYPE_SUBCONTO (ID,TYPE_OF_OBJ,VERSION,FULLNAME) values ('47fd02a5-44ac-4ce1-a238-9282a03f19c9','89cfa69a-6f26-4764-a6db-f186086e2b74',to_timestamp('27-MAY-14 09.41.11.587730000 PM','DD-MON-RR HH.MI.SSXFF AM'),'ЦФО');
Insert into DBA_DIVAS.PLAN_TYPE_SUBCONTO (ID,TYPE_OF_OBJ,VERSION,FULLNAME) values ('2f620168-a713-4081-99b3-737f7ed9b18a','0e8e555a-9494-440b-9054-b3132c2208d4',to_timestamp('27-MAY-14 09.41.11.587730000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Касса');
Insert into DBA_DIVAS.PLAN_TYPE_SUBCONTO (ID,TYPE_OF_OBJ,VERSION,FULLNAME) values ('f41de554-6ed1-4555-82c0-7b7210a7f760','16ec0649-7795-4866-a75f-ef3f5370f180',to_timestamp('27-MAY-14 09.41.11.587730000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Контрагенты');
Insert into DBA_DIVAS.PLAN_TYPE_SUBCONTO (ID,TYPE_OF_OBJ,VERSION,FULLNAME) values ('8c5bfc63-f4fe-4769-acb3-d3642571cebc','90791edd-0bfe-447a-aadd-f064362ec3a1',to_timestamp('27-MAY-14 09.41.11.587730000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Номенклатура');
Insert into DBA_DIVAS.PLAN_TYPE_SUBCONTO (ID,TYPE_OF_OBJ,VERSION,FULLNAME) values ('78ba09e7-4240-4992-ad06-9a73fb392973','a89b27e2-e81c-409e-b409-7b921ca02e13',to_timestamp('27-MAY-14 09.41.11.587730000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Статья затрат');
REM INSERTING into DBA_DIVAS.PS_TXN
SET DEFINE OFF;
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,23157,to_date('26-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,21901,to_date('25-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,20652,to_date('25-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,22001,to_date('25-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,23164,to_date('26-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,25263,to_date('26-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,28405,to_date('27-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,41801,to_date('09-SEP-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,58903,to_date('15-OCT-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,53451,to_date('16-SEP-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,57855,to_date('15-OCT-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,61102,to_date('16-OCT-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,61103,to_date('16-OCT-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,12702,to_date('21-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,18053,to_date('23-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,28402,to_date('27-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,25262,to_date('26-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,28401,to_date('27-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,52302,to_date('16-SEP-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,35005,to_date('01-SEP-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,38251,to_date('07-SEP-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,23163,to_date('26-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,58902,to_date('15-OCT-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,44954,to_date('13-SEP-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,57854,to_date('15-OCT-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,69858,to_date('02-NOV-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,69859,to_date('02-NOV-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,69861,to_date('02-NOV-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,18052,to_date('23-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,18051,to_date('23-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,12703,to_date('21-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,18151,to_date('24-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,26325,to_date('27-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,25265,to_date('26-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,26326,to_date('27-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,26327,to_date('27-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,26328,to_date('27-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,26329,to_date('27-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,26330,to_date('27-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,26331,to_date('27-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,28403,to_date('27-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,36051,to_date('06-SEP-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,51251,to_date('15-SEP-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,39603,to_date('08-SEP-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,52301,to_date('16-SEP-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,61101,to_date('16-OCT-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,62656,to_date('17-OCT-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,65803,to_date('18-OCT-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,1,to_date('22-JUN-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,5252,to_date('23-JUN-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,5251,to_date('23-JUN-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,7351,to_date('29-JUN-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,21903,to_date('25-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,22004,to_date('25-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,22003,to_date('25-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,22005,to_date('25-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,22006,to_date('25-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,22007,to_date('25-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,24203,to_date('26-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,23158,to_date('26-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,29451,to_date('30-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,35006,to_date('01-SEP-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,37103,to_date('06-SEP-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,64751,to_date('18-OCT-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,55552,to_date('13-OCT-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,64753,to_date('18-OCT-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,64752,to_date('18-OCT-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,64754,to_date('18-OCT-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,64755,to_date('18-OCT-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,18252,to_date('24-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,12701,to_date('21-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,21902,to_date('25-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,22002,to_date('25-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,21904,to_date('25-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,23156,to_date('26-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,23165,to_date('26-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,28404,to_date('27-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,25264,to_date('26-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,24204,to_date('26-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,37102,to_date('06-SEP-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,28406,to_date('27-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,33952,to_date('31-AUG-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,42851,to_date('10-SEP-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,43904,to_date('12-SEP-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,43903,to_date('12-SEP-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,44953,to_date('13-SEP-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,47053,to_date('14-SEP-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,51253,to_date('15-SEP-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,49151,to_date('15-SEP-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,51252,to_date('15-SEP-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,57853,to_date('15-OCT-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,69856,to_date('02-NOV-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,62655,to_date('17-OCT-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,69860,to_date('02-NOV-14','DD-MON-RR'));
Insert into DBA_DIVAS.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,69857,to_date('02-NOV-14','DD-MON-RR'));
REM INSERTING into DBA_DIVAS.REG_RATES
SET DEFINE OFF;
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('74df5375-fd11-4c78-b0b7-b23484e8a348',to_date('20-AUG-14','DD-MON-RR'),'2e055e03-ceb9-42b7-a261-0ee8d3a2ea3e',1765.8097,100,to_timestamp('20-AUG-14 10.33.38.629258000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('7b270952-9cb5-490e-a7c3-2eecfb5d7204',to_date('20-AUG-14','DD-MON-RR'),'cf8bfbdb-e154-42ec-9da0-b4e4211362b0',3.6619,10,to_timestamp('20-AUG-14 10.33.45.226308000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',to_date('20-AUG-14','DD-MON-RR'),'006562b7-9c37-4664-a946-f9a4b172092b',1322.3077,100,to_timestamp('20-AUG-14 10.33.45.585740000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('74df5375-fd11-4c78-b0b7-b23484e8a348',to_date('15-SEP-14','DD-MON-RR'),'49fd2fd2-a58f-42d0-97bc-d586d3e5049c',1668.5002,100,to_timestamp('15-SEP-14 03.51.42.860749000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('7b270952-9cb5-490e-a7c3-2eecfb5d7204',to_date('15-SEP-14','DD-MON-RR'),'830219a8-c01f-4da5-8e9b-5bc40ad545e8',3.4267,10,to_timestamp('15-SEP-14 03.51.43.084599000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',to_date('15-SEP-14','DD-MON-RR'),'47cef90e-2d05-402b-b360-7da2ec5a623c',1290.3103,100,to_timestamp('15-SEP-14 03.51.43.250707000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('74df5375-fd11-4c78-b0b7-b23484e8a348',to_date('17-SEP-14','DD-MON-RR'),'f62b7cc7-7341-4b18-b7f4-f4f1074ccc9d',1694.029,100,to_timestamp('17-SEP-14 04.58.36.127995000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('7b270952-9cb5-490e-a7c3-2eecfb5d7204',to_date('17-SEP-14','DD-MON-RR'),'11688a19-6de1-4663-9837-0326de80b72a',3.3799,10,to_timestamp('17-SEP-14 04.58.36.357306000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',to_date('17-SEP-14','DD-MON-RR'),'4de3bd0b-8f47-44af-a288-180529ad8f4e',1308.2315,100,to_timestamp('17-SEP-14 04.58.36.511711000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('74df5375-fd11-4c78-b0b7-b23484e8a348',to_date('10-OCT-14','DD-MON-RR'),'183f0f13-99dc-41f1-a2c7-c5fde1f177e3',1652.8114,100,to_timestamp('10-OCT-14 06.32.45.462064000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('7b270952-9cb5-490e-a7c3-2eecfb5d7204',to_date('10-OCT-14','DD-MON-RR'),'74085f0a-05f2-48f4-94ca-f0b846671277',3.2391,10,to_timestamp('10-OCT-14 06.32.45.745751000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',to_date('10-OCT-14','DD-MON-RR'),'cb8495c8-fcc7-40b1-8c0c-2884340754f9',1295.0023,100,to_timestamp('10-OCT-14 06.32.45.936242000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('74df5375-fd11-4c78-b0b7-b23484e8a348',to_date('22-AUG-14','DD-MON-RR'),'5b69c7b1-ad3a-4107-93e9-c057ba93c99e',1741.903,100,to_timestamp('22-AUG-14 12.46.17.188557000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('7b270952-9cb5-490e-a7c3-2eecfb5d7204',to_date('22-AUG-14','DD-MON-RR'),'5a901a8f-7e5f-4e59-9bce-f074b7de81f6',3.6199,10,to_timestamp('22-AUG-14 12.46.25.317243000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',to_date('22-AUG-14','DD-MON-RR'),'89b7686b-1572-4ae1-b1d9-a5b6c02a870e',1311.279,100,to_timestamp('22-AUG-14 12.46.25.671113000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('74df5375-fd11-4c78-b0b7-b23484e8a348',to_date('13-SEP-14','DD-MON-RR'),'12b2951f-9d42-446d-b94c-58692dcfae92',1674.1866,100,to_timestamp('13-SEP-14 07.09.39.460608000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('7b270952-9cb5-490e-a7c3-2eecfb5d7204',to_date('13-SEP-14','DD-MON-RR'),'864fd482-ffee-4d2a-987e-f0e00082a848',3.4648,10,to_timestamp('13-SEP-14 07.09.39.691274000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',to_date('13-SEP-14','DD-MON-RR'),'8d549f8c-32dc-42cf-aa04-8d755f57444e',1295.0082,100,to_timestamp('13-SEP-14 07.09.39.857394000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('ae6d0171-45cb-4b99-8d1a-1b039df274ca',to_date('01-JAN-80','DD-MON-RR'),'e095ce4f-d104-4604-be23-3b513ddf6d51',1,1,to_timestamp('12-AUG-14 01.11.28.402574000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',to_date('01-JAN-80','DD-MON-RR'),'fe86cf53-98ce-4ff7-bb51-96b2291aa534',1,1,to_timestamp('12-AUG-14 01.11.28.568926000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('74df5375-fd11-4c78-b0b7-b23484e8a348',to_date('01-JAN-80','DD-MON-RR'),'1622adf7-d8f8-45b8-973a-352aea102703',1,1,to_timestamp('12-AUG-14 01.11.28.569882000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('7b270952-9cb5-490e-a7c3-2eecfb5d7204',to_date('01-JAN-80','DD-MON-RR'),'2f0f1d70-ef84-4a21-8cd2-126c684eb1a1',1,1,to_timestamp('12-AUG-14 01.11.28.570574000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('ae6d0171-45cb-4b99-8d1a-1b039df274ca',to_date('01-JAN-80','DD-MON-RR'),'5f3cf517-9cbd-4f2f-b74e-c9eef43d4c96',1,1,to_timestamp('11-AUG-14 09.02.41.201619000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',to_date('01-JAN-80','DD-MON-RR'),'c8f61ab1-06e9-43f2-9359-0d2ac6936e10',1,1,to_timestamp('11-AUG-14 09.02.41.206685000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('74df5375-fd11-4c78-b0b7-b23484e8a348',to_date('01-JAN-80','DD-MON-RR'),'f52e5187-0464-4665-8de7-127f6c876c47',1,1,to_timestamp('11-AUG-14 09.02.41.207098000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('7b270952-9cb5-490e-a7c3-2eecfb5d7204',to_date('01-JAN-80','DD-MON-RR'),'cc23c04b-bb46-46ca-a842-7108d8966616',1,1,to_timestamp('11-AUG-14 09.02.41.207533000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('ae6d0171-45cb-4b99-8d1a-1b039df274ca',to_date('01-JAN-80','DD-MON-RR'),'2347085b-43af-41c8-8180-d39e68f93897',1,1,to_timestamp('27-MAY-14 09.41.28.686573000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',to_date('01-JAN-80','DD-MON-RR'),'b966068f-c5e7-4883-a225-38c098b14d46',1,1,to_timestamp('27-MAY-14 09.41.28.689995000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('74df5375-fd11-4c78-b0b7-b23484e8a348',to_date('01-JAN-80','DD-MON-RR'),'758604cc-4661-422b-853e-1f8830e6849d',1,1,to_timestamp('27-MAY-14 09.41.28.694613000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('7b270952-9cb5-490e-a7c3-2eecfb5d7204',to_date('01-JAN-80','DD-MON-RR'),'8aac7a25-f115-445b-8ac8-9d0575b1a80d',1,1,to_timestamp('27-MAY-14 09.41.28.695895000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',to_date('27-MAY-14','DD-MON-RR'),'b64a4c5e-831e-4647-a25f-b1ef60d268cc',1175.1152,100,to_timestamp('27-MAY-14 09.47.26.453652000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('74df5375-fd11-4c78-b0b7-b23484e8a348',to_date('27-MAY-14','DD-MON-RR'),'1befe57b-da28-46fa-af25-aed93ee4c42c',1602.2696,100,to_timestamp('27-MAY-14 09.47.26.751682000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('7b270952-9cb5-490e-a7c3-2eecfb5d7204',to_date('27-MAY-14','DD-MON-RR'),'1664f6c1-3084-4830-b1fe-4f63eccf7078',3.4484,10,to_timestamp('27-MAY-14 09.47.26.820084000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',to_date('30-MAY-14','DD-MON-RR'),'8731332b-eb79-44b8-afce-75ad2012be1d',1177.4997,100,to_timestamp('30-MAY-14 10.47.42.940412000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('74df5375-fd11-4c78-b0b7-b23484e8a348',to_date('30-MAY-14','DD-MON-RR'),'ec2f5973-43b1-4671-848c-ab8a93da03c2',1602.8126,100,to_timestamp('30-MAY-14 10.47.53.016565000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('7b270952-9cb5-490e-a7c3-2eecfb5d7204',to_date('30-MAY-14','DD-MON-RR'),'a1eca0c8-0513-4ce7-beb6-829255a9b67a',3.3985,10,to_timestamp('30-MAY-14 10.47.53.095298000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('74df5375-fd11-4c78-b0b7-b23484e8a348',to_date('23-JUN-14','DD-MON-RR'),'3a560589-a847-4870-8901-39a2c8d388e7',1614.0196,100,to_timestamp('23-JUN-14 05.49.36.509545000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('7b270952-9cb5-490e-a7c3-2eecfb5d7204',to_date('23-JUN-14','DD-MON-RR'),'2180bcb1-deb5-4008-a863-375da16f74b5',3.4511,10,to_timestamp('23-JUN-14 05.49.45.266267000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',to_date('23-JUN-14','DD-MON-RR'),'135838ef-f06e-4d79-b35d-fd6110f7c334',1187.8272,100,to_timestamp('23-JUN-14 05.49.45.334827000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('74df5375-fd11-4c78-b0b7-b23484e8a348',to_date('24-JUN-14','DD-MON-RR'),'af9e27e3-3857-4167-9d5a-448dd2d4a790',1614.0196,100,to_timestamp('24-JUN-14 10.15.20.013239000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('7b270952-9cb5-490e-a7c3-2eecfb5d7204',to_date('24-JUN-14','DD-MON-RR'),'0a637d7f-1e20-4ad4-b25c-b82d402dd1cc',3.4511,10,to_timestamp('24-JUN-14 10.15.29.171970000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',to_date('24-JUN-14','DD-MON-RR'),'96556cc2-3c40-4ac8-83b2-402f38867024',1187.8272,100,to_timestamp('24-JUN-14 10.15.29.525337000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',to_date('22-JUN-14','DD-MON-RR'),'1b81c069-8fe8-4b75-ba65-3e375ae25dfb',1185.4613,100,to_timestamp('22-JUN-14 04.04.59.965600000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('74df5375-fd11-4c78-b0b7-b23484e8a348',to_date('22-JUN-14','DD-MON-RR'),'ef87ea04-8e21-4aef-9eef-03b4aa98f77a',1614.5983,100,to_timestamp('22-JUN-14 04.05.10.136580000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('7b270952-9cb5-490e-a7c3-2eecfb5d7204',to_date('22-JUN-14','DD-MON-RR'),'571216eb-5518-4004-a7fd-26e238f4d1a8',3.4559,10,to_timestamp('22-JUN-14 04.05.10.192665000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('74df5375-fd11-4c78-b0b7-b23484e8a348',to_date('29-JUN-14','DD-MON-RR'),'1492ba6e-6fbd-410f-838e-ccf784036451',1608.6845,100,to_timestamp('29-JUN-14 02.34.18.290825000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('7b270952-9cb5-490e-a7c3-2eecfb5d7204',to_date('29-JUN-14','DD-MON-RR'),'6a77f426-442c-498a-a6c9-ec3d326dcb33',3.5031,10,to_timestamp('29-JUN-14 02.34.28.275081000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',to_date('29-JUN-14','DD-MON-RR'),'ac5043ff-54f1-49c1-8793-bb3113c6fd6d',1182.3346,100,to_timestamp('29-JUN-14 02.34.28.378777000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('74df5375-fd11-4c78-b0b7-b23484e8a348',to_date('07-AUG-14','DD-MON-RR'),'1004a29c-8134-4f98-a46e-49dfb38ff73f',1653.3299,100,to_timestamp('07-AUG-14 01.34.17.996011000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('7b270952-9cb5-490e-a7c3-2eecfb5d7204',to_date('07-AUG-14','DD-MON-RR'),'7f93d8a3-dab2-4bf0-ade1-efc0826fb509',3.4512,10,to_timestamp('07-AUG-14 01.34.35.553318000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',to_date('07-AUG-14','DD-MON-RR'),'0df6d18a-d7ee-42fc-8e25-6ec637134c84',1235.4879,100,to_timestamp('07-AUG-14 01.34.35.628632000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('74df5375-fd11-4c78-b0b7-b23484e8a348',to_date('11-AUG-14','DD-MON-RR'),'33a0d772-9371-4314-9c57-2b32212eec97',1717.1419,100,to_timestamp('11-AUG-14 10.48.43.801916000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('7b270952-9cb5-490e-a7c3-2eecfb5d7204',to_date('11-AUG-14','DD-MON-RR'),'3aa57b70-7709-4699-8c01-6f989109c5da',3.5192,10,to_timestamp('11-AUG-14 10.48.53.679595000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',to_date('11-AUG-14','DD-MON-RR'),'7c2f076e-9b9d-4c96-aed0-9bb9ed3c8b7e',1282.5978,100,to_timestamp('11-AUG-14 10.48.53.867295000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('74df5375-fd11-4c78-b0b7-b23484e8a348',to_date('03-JUL-14','DD-MON-RR'),'f169173a-3e75-4add-a248-d548fdd91602',1617.0218,100,to_timestamp('03-JUL-14 09.34.57.847628000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('7b270952-9cb5-490e-a7c3-2eecfb5d7204',to_date('03-JUL-14','DD-MON-RR'),'187d0b2e-c13f-4256-ab7f-2e1a6d3fe79c',3.4573,10,to_timestamp('03-JUL-14 09.35.08.885572000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',to_date('03-JUL-14','DD-MON-RR'),'0819c062-f87a-4541-88f9-2439352a3351',1184.1109,100,to_timestamp('03-JUL-14 09.35.09.073866000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('74df5375-fd11-4c78-b0b7-b23484e8a348',to_date('02-AUG-14','DD-MON-RR'),'7028f936-2ec8-42d4-bc3f-4158eadbfbdb',1600.5672,100,to_timestamp('02-AUG-14 03.50.02.880868000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('7b270952-9cb5-490e-a7c3-2eecfb5d7204',to_date('02-AUG-14','DD-MON-RR'),'5280d41c-6b1e-47b5-8366-320e56844feb',3.3753,10,to_timestamp('02-AUG-14 03.50.12.604005000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',to_date('02-AUG-14','DD-MON-RR'),'d21d5e2e-62a3-459e-9a2e-aa4afcaa5413',1196.328,100,to_timestamp('02-AUG-14 03.50.12.785043000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('74df5375-fd11-4c78-b0b7-b23484e8a348',to_date('12-AUG-14','DD-MON-RR'),'0c690b02-6833-444c-a1f6-aba0a6d6d84d',1717.1419,100,to_timestamp('12-AUG-14 01.20.13.707648000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('7b270952-9cb5-490e-a7c3-2eecfb5d7204',to_date('12-AUG-14','DD-MON-RR'),'fe231b5b-e1e3-4e9b-b96b-8174e76c1db2',3.5192,10,to_timestamp('12-AUG-14 01.20.13.922783000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',to_date('12-AUG-14','DD-MON-RR'),'bebd39ad-2711-4dcf-a200-1ea75d988040',1282.5978,100,to_timestamp('12-AUG-14 01.20.14.080340000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('74df5375-fd11-4c78-b0b7-b23484e8a348',to_date('14-SEP-14','DD-MON-RR'),'1207c01b-a4e5-4f37-b44d-5a358abde5e0',1674.1866,100,to_timestamp('14-SEP-14 12.20.04.487285000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('7b270952-9cb5-490e-a7c3-2eecfb5d7204',to_date('14-SEP-14','DD-MON-RR'),'986c1441-eeba-4770-98da-ac207a24a648',3.4648,10,to_timestamp('14-SEP-14 12.20.04.722690000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',to_date('14-SEP-14','DD-MON-RR'),'6e77de3f-7916-46e7-bbbe-e508efc3dcb9',1295.0082,100,to_timestamp('14-SEP-14 12.20.04.918476000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('74df5375-fd11-4c78-b0b7-b23484e8a348',to_date('13-OCT-14','DD-MON-RR'),'0402aa46-d86d-4896-8758-d7fa49c9d5ee',1652.8114,100,to_timestamp('13-OCT-14 01.52.53.353434000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('7b270952-9cb5-490e-a7c3-2eecfb5d7204',to_date('13-OCT-14','DD-MON-RR'),'3ad16d28-3ef9-4c07-8daf-4d430eecbdfa',3.2391,10,to_timestamp('13-OCT-14 01.52.53.590906000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',to_date('13-OCT-14','DD-MON-RR'),'ffb25a55-f7f9-4cfa-b5d6-be694db557ed',1295.0023,100,to_timestamp('13-OCT-14 01.52.53.792543000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('74df5375-fd11-4c78-b0b7-b23484e8a348',to_date('15-OCT-14','DD-MON-RR'),'ffcda230-84b8-49d3-989c-187c76b024a9',1642.1155,100,to_timestamp('15-OCT-14 12.27.26.287671000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('7b270952-9cb5-490e-a7c3-2eecfb5d7204',to_date('15-OCT-14','DD-MON-RR'),'b9941278-0dc1-4d80-8b54-3e56416114a2',3.2118,10,to_timestamp('15-OCT-14 12.27.34.517687000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',to_date('15-OCT-14','DD-MON-RR'),'34152ea8-971a-4e2a-92e5-476ff6d731e0',1295.1459,100,to_timestamp('15-OCT-14 12.27.34.750540000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('74df5375-fd11-4c78-b0b7-b23484e8a348',to_date('02-NOV-14','DD-MON-RR'),'55fe0960-ac11-4cf2-9a16-2940b7814cd7',1631.5272,100,to_timestamp('02-NOV-14 12.53.21.017563000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('7b270952-9cb5-490e-a7c3-2eecfb5d7204',to_date('02-NOV-14','DD-MON-RR'),'09ffa9e8-f26a-4eba-9010-08b935a7fe93',2.9844,10,to_timestamp('02-NOV-14 12.53.28.990244000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.REG_RATES (CURR_ID,PERIOD,ID,KURS,KRATNOST,VERSION) values ('3c594b48-cdff-46f6-bf3c-6b6c3a7a112f',to_date('02-NOV-14','DD-MON-RR'),'1e52058a-f03d-443b-bce1-f51eb494f4f8',1295.0684,100,to_timestamp('02-NOV-14 12.53.29.256940000 AM','DD-MON-RR HH.MI.SSXFF AM'));
REM INSERTING into DBA_DIVAS.TYPE_DEF
SET DEFINE OFF;
Insert into DBA_DIVAS.TYPE_DEF (ID,TABLE_NAME,VERSION) values ('fd4aaee8-76f6-49ec-b071-4f14042c390d','CURRENCY',to_timestamp('27-MAY-14 09.41.09.877057000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.TYPE_DEF (ID,TABLE_NAME,VERSION) values ('8f1dde33-a6a1-48b6-8c9e-c88a43142efb','REG_RATES',to_timestamp('27-MAY-14 09.41.09.877057000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.TYPE_DEF (ID,TABLE_NAME,VERSION) values ('ad9dafab-2ad3-4dbf-83d4-f0689008cad4','ENUM_ACCOUNT_TYPE',to_timestamp('27-MAY-14 09.41.09.877057000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.TYPE_DEF (ID,TABLE_NAME,VERSION) values ('89cfa69a-6f26-4764-a6db-f186086e2b74','DIVISIONS',to_timestamp('27-MAY-14 09.41.09.877057000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.TYPE_DEF (ID,TABLE_NAME,VERSION) values ('942b6a41-a059-4cf0-95f8-c5e05dccaceb','PLAN_ACC',to_timestamp('27-MAY-14 09.41.09.877057000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.TYPE_DEF (ID,TABLE_NAME,VERSION) values ('0dadd422-4aff-4eb0-8730-7f53a2bf5bc7','TYPE_DEF',to_timestamp('27-MAY-14 09.41.09.877057000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.TYPE_DEF (ID,TABLE_NAME,VERSION) values ('c73af52d-3373-4abc-973b-bfc1e979467c','PLAN_TYPE_SUBCONTO',to_timestamp('27-MAY-14 09.41.09.877057000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.TYPE_DEF (ID,TABLE_NAME,VERSION) values ('34a87f7c-a9f1-4cc7-a5ef-e32d7aca29c0','PLAN_ACC_SUBCONTO',to_timestamp('27-MAY-14 09.41.09.877057000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.TYPE_DEF (ID,TABLE_NAME,VERSION) values ('f492c143-a293-4ba8-8c89-6a5e8166f946','EX_RATES_SETTINGS',to_timestamp('27-MAY-14 09.41.09.877057000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.TYPE_DEF (ID,TABLE_NAME,VERSION) values ('699487c0-d6f7-41a3-99f5-f44a89906676','FIRMS',to_timestamp('27-MAY-14 09.41.09.877057000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.TYPE_DEF (ID,TABLE_NAME,VERSION) values ('0e8e555a-9494-440b-9054-b3132c2208d4','KASSA',to_timestamp('27-MAY-14 09.41.09.877057000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.TYPE_DEF (ID,TABLE_NAME,VERSION) values ('16ec0649-7795-4866-a75f-ef3f5370f180','KONTRAGENTS',to_timestamp('27-MAY-14 09.41.09.877057000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.TYPE_DEF (ID,TABLE_NAME,VERSION) values ('a511f772-b575-4b1a-93a6-71bcfa019f8a','MEASURE_UNIT',to_timestamp('27-MAY-14 09.41.09.877057000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.TYPE_DEF (ID,TABLE_NAME,VERSION) values ('9a019e5d-c14f-4270-b5cd-a3931f7f612a','TYPE_OF_ACTIVITIES',to_timestamp('27-MAY-14 09.41.09.877057000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.TYPE_DEF (ID,TABLE_NAME,VERSION) values ('d740f495-c6c0-4849-ae52-24c4d089869d','MOVES',to_timestamp('27-MAY-14 09.41.09.877057000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.TYPE_DEF (ID,TABLE_NAME,VERSION) values ('90791edd-0bfe-447a-aadd-f064362ec3a1','NOMENKLATURA',to_timestamp('27-MAY-14 09.41.09.877057000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.TYPE_DEF (ID,TABLE_NAME,VERSION) values ('9b0e34d8-f7c9-4975-bd7e-4af901c70cc4','NUMERATOR',to_timestamp('27-MAY-14 09.41.09.877057000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.TYPE_DEF (ID,TABLE_NAME,VERSION) values ('e56f684a-07aa-4c2b-a5ad-96b27581ac2a','USERS',to_timestamp('27-MAY-14 09.41.09.877057000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.TYPE_DEF (ID,TABLE_NAME,VERSION) values ('7e1314cc-4ef1-4b05-93fe-df81b2d45a10','ENTRY_SETTINGS',to_timestamp('27-MAY-14 09.41.09.877057000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.TYPE_DEF (ID,TABLE_NAME,VERSION) values ('a89b27e2-e81c-409e-b409-7b921ca02e13','ZATRATY',to_timestamp('27-MAY-14 09.41.09.877057000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.TYPE_DEF (ID,TABLE_NAME,VERSION) values ('9bab2824-d9fd-40e8-b6d5-001cf76ab6d7','USER_SETTINGS',to_timestamp('27-MAY-14 09.41.09.877057000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.TYPE_DEF (ID,TABLE_NAME,VERSION) values ('5dc3ad18-8201-4463-8c25-aded8b3e8fdb','ORDERS',to_timestamp('27-MAY-14 09.41.09.877057000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.TYPE_DEF (ID,TABLE_NAME,VERSION) values ('332899bf-de1c-4e06-80a9-3d2241c9907b','XML_T',to_timestamp('27-MAY-14 09.41.09.877057000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into DBA_DIVAS.TYPE_DEF (ID,TABLE_NAME,VERSION) values ('c7cdebc5-9f94-40b9-aebb-de6baf0c6073','CONTACT_DETAILS',to_timestamp('27-MAY-14 09.41.09.877057000 PM','DD-MON-RR HH.MI.SSXFF AM'));
REM INSERTING into DBA_DIVAS.TYPE_OF_ACTIVITIES
SET DEFINE OFF;
Insert into DBA_DIVAS.TYPE_OF_ACTIVITIES (ID,VERSION,FULLNAME) values ('083ad85f-d43d-4f02-99ec-ad9eb9586e67',to_timestamp('16-OCT-14 08.19.43.850797000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Юриспруденция');
Insert into DBA_DIVAS.TYPE_OF_ACTIVITIES (ID,VERSION,FULLNAME) values ('df4be30a-1f1d-4883-af90-7d586d117614',to_timestamp('16-OCT-14 08.33.15.330843000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Розничная торговля');
Insert into DBA_DIVAS.TYPE_OF_ACTIVITIES (ID,VERSION,FULLNAME) values ('7bdbc07d-bccc-4c43-9696-85a8167332f6',to_timestamp('16-OCT-14 09.33.17.812984000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Транспорт');
Insert into DBA_DIVAS.TYPE_OF_ACTIVITIES (ID,VERSION,FULLNAME) values ('b4bb7877-6670-4c79-bece-8affea6665f9',to_timestamp('16-OCT-14 10.03.02.046468000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Машины');
Insert into DBA_DIVAS.TYPE_OF_ACTIVITIES (ID,VERSION,FULLNAME) values ('b9958408-ecea-4de6-9c75-0433a4baeb45',to_timestamp('16-OCT-14 08.13.00.088051000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Строительство и ремонт');
Insert into DBA_DIVAS.TYPE_OF_ACTIVITIES (ID,VERSION,FULLNAME) values ('8bae8452-ed5f-4f08-ba10-00ddce9b4b4f',to_timestamp('27-MAY-14 09.41.28.731133000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Окна');
Insert into DBA_DIVAS.TYPE_OF_ACTIVITIES (ID,VERSION,FULLNAME) values ('1b575104-51ee-4c11-8f06-3f34d9fa192b',to_timestamp('27-MAY-14 09.41.28.734510000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Мебель');
Insert into DBA_DIVAS.TYPE_OF_ACTIVITIES (ID,VERSION,FULLNAME) values ('fd758bd5-5fa4-4ac7-9772-fbfd7b501fe8',to_timestamp('16-OCT-14 08.26.09.651519000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Торговля');
REM INSERTING into DBA_DIVAS.USERS
SET DEFINE OFF;
Insert into DBA_DIVAS.USERS (ID,FIRST_NAME,LAST_NAME,EMAIL,IS_ADMIN,PASS_WD,LOGIN,VERSION,PREDEFINED,U_DESCRIPTION) values ('af4777ce-ae18-429a-a4b9-34cd6f0be725','NoFirstName','NoLastName','no@email.com',0,'c4ca4238a0b923820dcc509a6f75849b','starka',to_timestamp('15-OCT-14 10.13.46.132853000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,'test user');
Insert into DBA_DIVAS.USERS (ID,FIRST_NAME,LAST_NAME,EMAIL,IS_ADMIN,PASS_WD,LOGIN,VERSION,PREDEFINED,U_DESCRIPTION) values ('7667fba7-1df5-45e6-a6fa-414fdb1f8168','NoFirstName','NoLastName','no@email.com',0,'{SHA}+Zu2G+RqFcYScJbJ8UZvSmyrccQ=','test',to_timestamp('02-NOV-14 01.32.02.303500000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,'test user for div_app');
Insert into DBA_DIVAS.USERS (ID,FIRST_NAME,LAST_NAME,EMAIL,IS_ADMIN,PASS_WD,LOGIN,VERSION,PREDEFINED,U_DESCRIPTION) values ('6b78e738-a620-420f-90e2-c3613ba91a19','Viacheslav','Bakum','bakum@bmexp.com',1,'{SHA}+Zu2G+RqFcYScJbJ8UZvSmyrccQ=','sysdba',to_timestamp('29-AUG-14 11.03.53.940709000 PM','DD-MON-RR HH.MI.SSXFF AM'),1,null);
Insert into DBA_DIVAS.USERS (ID,FIRST_NAME,LAST_NAME,EMAIL,IS_ADMIN,PASS_WD,LOGIN,VERSION,PREDEFINED,U_DESCRIPTION) values ('304bb7f5-015a-42c6-9250-82e19d856d8f','NoFirstName','NoLastName','no@email.com',0,'c4ca4238a0b923820dcc509a6f75849b','zd',to_timestamp('15-OCT-14 10.16.27.032536000 PM','DD-MON-RR HH.MI.SSXFF AM'),0,null);
REM INSERTING into DBA_DIVAS.USER_SETTINGS
SET DEFINE OFF;
Insert into DBA_DIVAS.USER_SETTINGS (ID,USER_ID,DIVISION_ID,FIRMA_ID,CURRENCY_ID,KASSA_ID,MAIN_USLUGA,ACTIVITIES_ID) values ('d8a344ac-b2ac-4281-a25d-651e817d7868','6b78e738-a620-420f-90e2-c3613ba91a19','dbcf65ca-a015-49a7-a928-af09fc2d0d2e','4853ba5a-226d-49eb-9654-b01ab5861381','ae6d0171-45cb-4b99-8d1a-1b039df274ca','5ca0edeb-890a-4e07-a1db-fb36cad6024f','4084f064-0a05-40c6-83a8-ffa0ce353fbd','b9958408-ecea-4de6-9c75-0433a4baeb45');
Insert into DBA_DIVAS.USER_SETTINGS (ID,USER_ID,DIVISION_ID,FIRMA_ID,CURRENCY_ID,KASSA_ID,MAIN_USLUGA,ACTIVITIES_ID) values ('36ab24a6-2dcf-44b6-ad96-42088bd44200','7667fba7-1df5-45e6-a6fa-414fdb1f8168','1bcfc035-7a48-4e97-9ee6-2117e2cdb783','4853ba5a-226d-49eb-9654-b01ab5861381','ae6d0171-45cb-4b99-8d1a-1b039df274ca','e660fee0-0981-4c57-b4c6-d7edf5e1f073','234a2840-cb7e-451a-b8fd-526e07ca0d1d','df4be30a-1f1d-4883-af90-7d586d117614');
Insert into DBA_DIVAS.USER_SETTINGS (ID,USER_ID,DIVISION_ID,FIRMA_ID,CURRENCY_ID,KASSA_ID,MAIN_USLUGA,ACTIVITIES_ID) values ('5e05147f-4e1d-4d9a-93ba-3b1de0097c4c','af4777ce-ae18-429a-a4b9-34cd6f0be725','dbcf65ca-a015-49a7-a928-af09fc2d0d2e','4853ba5a-226d-49eb-9654-b01ab5861381','ae6d0171-45cb-4b99-8d1a-1b039df274ca','5ca0edeb-890a-4e07-a1db-fb36cad6024f','234a2840-cb7e-451a-b8fd-526e07ca0d1d','df4be30a-1f1d-4883-af90-7d586d117614');
Insert into DBA_DIVAS.USER_SETTINGS (ID,USER_ID,DIVISION_ID,FIRMA_ID,CURRENCY_ID,KASSA_ID,MAIN_USLUGA,ACTIVITIES_ID) values ('0e0dfe58-4d15-4bfe-960f-ca0e0bc2db5a','304bb7f5-015a-42c6-9250-82e19d856d8f','1bcfc035-7a48-4e97-9ee6-2117e2cdb783','4853ba5a-226d-49eb-9654-b01ab5861381','ae6d0171-45cb-4b99-8d1a-1b039df274ca','e660fee0-0981-4c57-b4c6-d7edf5e1f073','4084f064-0a05-40c6-83a8-ffa0ce353fbd','df4be30a-1f1d-4883-af90-7d586d117614');
REM INSERTING into DBA_DIVAS.VOUCHER
SET DEFINE OFF;
REM INSERTING into DBA_DIVAS.XML_T
SET DEFINE OFF;
REM INSERTING into DBA_DIVAS.ZATRATY
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index ASTER_SETTINGS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."ASTER_SETTINGS_PK" ON "DBA_DIVAS"."ASTER_SETTINGS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index CALL_LOG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."CALL_LOG_PK" ON "DBA_DIVAS"."CALL_LOG" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index CALL_RESULTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."CALL_RESULTS_PK" ON "DBA_DIVAS"."CALL_RESULTS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index CALL_STATUS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."CALL_STATUS_PK" ON "DBA_DIVAS"."CALL_STATUS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index COMPAIGNS_DETAILS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."COMPAIGNS_DETAILS_PK" ON "DBA_DIVAS"."COMPAIGNS_DETAILS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index COMPAIGNS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."COMPAIGNS_PK" ON "DBA_DIVAS"."COMPAIGNS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index CONTACT_DETAILS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."CONTACT_DETAILS_PK" ON "DBA_DIVAS"."CONTACT_DETAILS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index CURRENCY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."CURRENCY_PK" ON "DBA_DIVAS"."CURRENCY" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index DIVISIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."DIVISIONS_PK" ON "DBA_DIVAS"."DIVISIONS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index DIVISION_SOTR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."DIVISION_SOTR_PK" ON "DBA_DIVAS"."DIVISION_SOTR" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index ENTRY_SETTINGS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."ENTRY_SETTINGS_PK" ON "DBA_DIVAS"."ENTRY_SETTINGS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index ENUM_ACCOUNT_TYPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."ENUM_ACCOUNT_TYPE_PK" ON "DBA_DIVAS"."ENUM_ACCOUNT_TYPE" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index ENUM_ACCOUNT_TYPE_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."ENUM_ACCOUNT_TYPE_UK1" ON "DBA_DIVAS"."ENUM_ACCOUNT_TYPE" ("FULLNAME") 
  ;
--------------------------------------------------------
--  DDL for Index EX_RATES_SETTINGS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."EX_RATES_SETTINGS_PK" ON "DBA_DIVAS"."EX_RATES_SETTINGS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index EX_RATES_SETTINGS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."EX_RATES_SETTINGS_UK1" ON "DBA_DIVAS"."EX_RATES_SETTINGS" ("CURR_ID") 
  ;
--------------------------------------------------------
--  DDL for Index FIRMS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."FIRMS_PK" ON "DBA_DIVAS"."FIRMS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index GROUPMEMBERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."GROUPMEMBERS_PK" ON "DBA_DIVAS"."GROUPMEMBERS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index GROUPS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."GROUPS_UK1" ON "DBA_DIVAS"."GROUPS" ("FULLNAME") 
  ;
--------------------------------------------------------
--  DDL for Index IMPORTED_PRICE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."IMPORTED_PRICE_PK" ON "DBA_DIVAS"."IMPORTED_PRICE" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index KASSA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."KASSA_PK" ON "DBA_DIVAS"."KASSA" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index KONTRAGENTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."KONTRAGENTS_PK" ON "DBA_DIVAS"."KONTRAGENTS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index MEASURE_UNIT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."MEASURE_UNIT_PK" ON "DBA_DIVAS"."MEASURE_UNIT" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index MOVES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."MOVES_PK" ON "DBA_DIVAS"."MOVES" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index NOMENKLATURA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."NOMENKLATURA_PK" ON "DBA_DIVAS"."NOMENKLATURA" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index NUMERATOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."NUMERATOR_PK" ON "DBA_DIVAS"."NUMERATOR" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index ORDERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."ORDERS_PK" ON "DBA_DIVAS"."ORDERS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index ORDERS_TP_USLUGI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."ORDERS_TP_USLUGI_PK" ON "DBA_DIVAS"."ORDERS_TP_USLUGI" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index ORDER_STATUS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."ORDER_STATUS_PK" ON "DBA_DIVAS"."ORDER_STATUS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index PLAN_ACC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."PLAN_ACC_PK" ON "DBA_DIVAS"."PLAN_ACC" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index PLAN_ACC_SUBCONTO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."PLAN_ACC_SUBCONTO_PK" ON "DBA_DIVAS"."PLAN_ACC_SUBCONTO" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index PLAN_ACC_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."PLAN_ACC_UK1" ON "DBA_DIVAS"."PLAN_ACC" ("FULLNAME", "CODE") 
  ;
--------------------------------------------------------
--  DDL for Index PLAN_TYPE_SUBCONTO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."PLAN_TYPE_SUBCONTO_PK" ON "DBA_DIVAS"."PLAN_TYPE_SUBCONTO" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index PLAN_TYPE_SUBCONTO_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."PLAN_TYPE_SUBCONTO_UK1" ON "DBA_DIVAS"."PLAN_TYPE_SUBCONTO" ("TYPE_OF_OBJ") 
  ;
--------------------------------------------------------
--  DDL for Index PS_TXN_IDX
--------------------------------------------------------

  CREATE INDEX "DBA_DIVAS"."PS_TXN_IDX" ON "DBA_DIVAS"."PS_TXN" ("COLLID", "ID") REVERSE 
  ;
--------------------------------------------------------
--  DDL for Index REG_RATES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."REG_RATES_PK" ON "DBA_DIVAS"."REG_RATES" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index TYPE_DEF_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."TYPE_DEF_PK" ON "DBA_DIVAS"."TYPE_DEF" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index TYPE_OF_ACTIVITIES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."TYPE_OF_ACTIVITIES_PK" ON "DBA_DIVAS"."TYPE_OF_ACTIVITIES" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index USERS_GROUP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."USERS_GROUP_PK" ON "DBA_DIVAS"."GROUPS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."USERS_PK" ON "DBA_DIVAS"."USERS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index USERS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."USERS_UK1" ON "DBA_DIVAS"."USERS" ("LOGIN") 
  ;
--------------------------------------------------------
--  DDL for Index USER_SETTINGS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."USER_SETTINGS_PK" ON "DBA_DIVAS"."USER_SETTINGS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index USER_SETTINGS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."USER_SETTINGS_UK1" ON "DBA_DIVAS"."USER_SETTINGS" ("USER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index VOUCHER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."VOUCHER_PK" ON "DBA_DIVAS"."VOUCHER" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index XML_T_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."XML_T_PK" ON "DBA_DIVAS"."XML_T" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index ZATRATY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBA_DIVAS"."ZATRATY_PK" ON "DBA_DIVAS"."ZATRATY" ("ID") 
  ;
--------------------------------------------------------
--  Constraints for Table ASTER_SETTINGS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."ASTER_SETTINGS" ADD CONSTRAINT "ASTER_SETTINGS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."ASTER_SETTINGS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ASTER_SETTINGS" MODIFY ("SERVER" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ASTER_SETTINGS" MODIFY ("PORT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CALL_LOG
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."CALL_LOG" ADD CONSTRAINT "CALL_LOG_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."CALL_LOG" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."CALL_LOG" MODIFY ("CALL_STATUS" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."CALL_LOG" MODIFY ("CONTACT_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."CALL_LOG" MODIFY ("VERSION" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."CALL_LOG" MODIFY ("DAT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CALL_RESULTS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."CALL_RESULTS" ADD CONSTRAINT "CALL_RESULTS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."CALL_RESULTS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."CALL_RESULTS" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."CALL_RESULTS" MODIFY ("FULLNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CALL_STATUS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."CALL_STATUS" ADD CONSTRAINT "CALL_STATUS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."CALL_STATUS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."CALL_STATUS" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."CALL_STATUS" MODIFY ("FULLNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMPAIGNS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."COMPAIGNS" ADD CONSTRAINT "COMPAIGNS_DELETED_CHK" CHECK (deleted in (0,1)) ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."COMPAIGNS" ADD CONSTRAINT "COMPAIGNS_ENABLED_CHK" CHECK (enabled in (0,1)) ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."COMPAIGNS" ADD CONSTRAINT "COMPAIGNS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."COMPAIGNS" ADD CONSTRAINT "COMPAIGNS_PREDEFINED_CHK" CHECK (predefined in (0,1)) ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."COMPAIGNS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."COMPAIGNS" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."COMPAIGNS" MODIFY ("VERSION" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."COMPAIGNS" MODIFY ("ENABLED" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."COMPAIGNS" MODIFY ("PREDEFINED" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."COMPAIGNS" MODIFY ("DELETED" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMPAIGNS_DETAILS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."COMPAIGNS_DETAILS" ADD CONSTRAINT "COMPAIGNS_DETAILS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."COMPAIGNS_DETAILS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."COMPAIGNS_DETAILS" MODIFY ("COMPAIGN_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."COMPAIGNS_DETAILS" MODIFY ("KONTRAG_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."COMPAIGNS_DETAILS" MODIFY ("CONTACT_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."COMPAIGNS_DETAILS" MODIFY ("VERSION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CONTACT_DETAILS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."CONTACT_DETAILS" ADD CONSTRAINT "CONTACT_DETAILS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."CONTACT_DETAILS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."CONTACT_DETAILS" MODIFY ("VERSION" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."CONTACT_DETAILS" MODIFY ("KONTRAG_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CURRENCY
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."CURRENCY" ADD CONSTRAINT "CURRENCY_CHK1" CHECK (deleted in (0,1)) ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."CURRENCY" ADD CONSTRAINT "CURRENCY_CHK2" CHECK (PREDEFINED in (0,1)) ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."CURRENCY" ADD CONSTRAINT "CURRENCY_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."CURRENCY" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."CURRENCY" MODIFY ("IS_GROUP" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."CURRENCY" MODIFY ("DELETED" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."CURRENCY" MODIFY ("FULLNAME" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."CURRENCY" MODIFY ("VERSION" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."CURRENCY" MODIFY ("PREDEFINED" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."CURRENCY" MODIFY ("ID_XML" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DIVISIONS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."DIVISIONS" ADD CONSTRAINT "DIVISIONS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."DIVISIONS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."DIVISIONS" MODIFY ("FULLNAME" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."DIVISIONS" MODIFY ("DELETED" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."DIVISIONS" MODIFY ("IS_GROUP" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."DIVISIONS" MODIFY ("VERSION" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."DIVISIONS" MODIFY ("PREDEFINED" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DIVISION_SOTR
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."DIVISION_SOTR" ADD CONSTRAINT "DIVISION_SOTR_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."DIVISION_SOTR" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."DIVISION_SOTR" MODIFY ("DIV_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."DIVISION_SOTR" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ENTRY_SETTINGS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."ENTRY_SETTINGS" ADD CONSTRAINT "ENTRY_SETTINGS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."ENTRY_SETTINGS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ENTRY_SETTINGS" MODIFY ("TYPEDEF_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ENTRY_SETTINGS" MODIFY ("PLAN_ACC_DEB_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ENTRY_SETTINGS" MODIFY ("PLAN_ACC_KRED_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ENTRY_SETTINGS" MODIFY ("VERSION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ENUM_ACCOUNT_TYPE
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."ENUM_ACCOUNT_TYPE" ADD CONSTRAINT "ENUM_ACCOUNT_TYPE_CHK1" CHECK (FULLNAME IN ('Активный', 'Пассивный', 'Активный/Пассивный')) ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."ENUM_ACCOUNT_TYPE" ADD CONSTRAINT "ENUM_ACCOUNT_TYPE_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."ENUM_ACCOUNT_TYPE" ADD CONSTRAINT "ENUM_ACCOUNT_TYPE_UK1" UNIQUE ("FULLNAME") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."ENUM_ACCOUNT_TYPE" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ENUM_ACCOUNT_TYPE" MODIFY ("FULLNAME" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ENUM_ACCOUNT_TYPE" MODIFY ("VERSION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EX_RATES_SETTINGS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."EX_RATES_SETTINGS" ADD CONSTRAINT "EX_RATES_SETTINGS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."EX_RATES_SETTINGS" ADD CONSTRAINT "EX_RATES_SETTINGS_UK1" UNIQUE ("CURR_ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."EX_RATES_SETTINGS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."EX_RATES_SETTINGS" MODIFY ("CURR_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."EX_RATES_SETTINGS" MODIFY ("VERSION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FIRMS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."FIRMS" ADD CONSTRAINT "FIRMS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."FIRMS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."FIRMS" MODIFY ("FULLNAME" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."FIRMS" MODIFY ("PRINTNAME" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."FIRMS" MODIFY ("UR_FIZ" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."FIRMS" MODIFY ("VERSION" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."FIRMS" MODIFY ("DELETED" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."FIRMS" MODIFY ("PREDEFINED" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GROUPMEMBERS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."GROUPMEMBERS" ADD CONSTRAINT "GROUPMEMBERS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."GROUPMEMBERS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."GROUPMEMBERS" MODIFY ("G_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."GROUPMEMBERS" MODIFY ("G_MEMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GROUPS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."GROUPS" ADD CONSTRAINT "GROUPS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."GROUPS" ADD CONSTRAINT "GROUPS_UK1" UNIQUE ("FULLNAME") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."GROUPS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."GROUPS" MODIFY ("FULLNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table IMPORTED_PRICE
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."IMPORTED_PRICE" ADD CONSTRAINT "IMPORTED_PRICE_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."IMPORTED_PRICE" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."IMPORTED_PRICE" MODIFY ("DAT" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."IMPORTED_PRICE" MODIFY ("NOM_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."IMPORTED_PRICE" MODIFY ("ED_IZM" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."IMPORTED_PRICE" MODIFY ("PRICE_USL" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."IMPORTED_PRICE" MODIFY ("PRICE_GOODS" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."IMPORTED_PRICE" MODIFY ("VERSION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KASSA
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."KASSA" ADD CONSTRAINT "KASSA_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."KASSA" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."KASSA" MODIFY ("FULLNAME" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."KASSA" MODIFY ("IS_GROUP" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."KASSA" MODIFY ("CURR_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."KASSA" MODIFY ("DELETED" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."KASSA" MODIFY ("VERSION" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."KASSA" MODIFY ("PREDEFINED" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KONTRAGENTS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."KONTRAGENTS" ADD CONSTRAINT "KONTRAGENTS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."KONTRAGENTS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."KONTRAGENTS" MODIFY ("IS_GROUP" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."KONTRAGENTS" MODIFY ("FULLNAME" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."KONTRAGENTS" MODIFY ("DELETED" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."KONTRAGENTS" MODIFY ("UR_FIZ" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."KONTRAGENTS" MODIFY ("VERSION" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."KONTRAGENTS" MODIFY ("PREDEFINED" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."KONTRAGENTS" MODIFY ("IS_SUPPLIER" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."KONTRAGENTS" MODIFY ("IS_BUYER" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."KONTRAGENTS" MODIFY ("IS_MEASURER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEASURE_UNIT
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."MEASURE_UNIT" ADD CONSTRAINT "MEASURE_UNIT_CHK1" CHECK (DELETED IN (1, 0)) ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."MEASURE_UNIT" ADD CONSTRAINT "MEASURE_UNIT_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."MEASURE_UNIT" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."MEASURE_UNIT" MODIFY ("FULLNAME" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."MEASURE_UNIT" MODIFY ("CODE" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."MEASURE_UNIT" MODIFY ("DELETED" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."MEASURE_UNIT" MODIFY ("VERSION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOVES
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."MOVES" ADD CONSTRAINT "MOVES_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."MOVES" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."MOVES" MODIFY ("PERIOD" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."MOVES" MODIFY ("REGISTRATOR_TYPE" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."MOVES" MODIFY ("REGISTRATOR_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."MOVES" MODIFY ("PLAN_ACC_DEB_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."MOVES" MODIFY ("PLAN_ACC_KRED_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."MOVES" MODIFY ("VERSION" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."MOVES" MODIFY ("SUMM_UPR_DEB" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."MOVES" MODIFY ("SUMM_UPR_KRED" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."MOVES" MODIFY ("ACTIVITIES_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOMENKLATURA
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."NOMENKLATURA" ADD CONSTRAINT "NOMENKLATURA_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."NOMENKLATURA" MODIFY ("IS_GROUP" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."NOMENKLATURA" MODIFY ("USLUGA" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."NOMENKLATURA" MODIFY ("PREDEFINED" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."NOMENKLATURA" MODIFY ("VERSION" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."NOMENKLATURA" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."NOMENKLATURA" MODIFY ("FULLNAME" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."NOMENKLATURA" MODIFY ("DELETED" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NUMERATOR
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."NUMERATOR" ADD CONSTRAINT "NUMERATOR_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."NUMERATOR" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."NUMERATOR" MODIFY ("TYPEDEF_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."NUMERATOR" MODIFY ("PREFIX" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."NUMERATOR" MODIFY ("VERSION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."ORDERS" ADD CONSTRAINT "ORDERS_CHK1" CHECK (DELETED IN (1, 0)) ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" ADD CONSTRAINT "ORDERS_CHK2" CHECK (POSTED IN (1, 0)) ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" ADD CONSTRAINT "ORDERS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" MODIFY ("DAT" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" MODIFY ("NUM" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" MODIFY ("KONTRAG_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" MODIFY ("CURR_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" MODIFY ("KASSA_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" MODIFY ("DIVISION_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" MODIFY ("KURS" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" MODIFY ("KRATNOST" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" MODIFY ("DELETED" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" MODIFY ("VERSION" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" MODIFY ("POSTED" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" MODIFY ("FIRM_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" MODIFY ("ACTIVITIES_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" MODIFY ("STATUS_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORDERS_TP_USLUGI
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."ORDERS_TP_USLUGI" ADD CONSTRAINT "ORDERS_TP_USLUGI_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."ORDERS_TP_USLUGI" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ORDERS_TP_USLUGI" MODIFY ("ORDER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ORDERS_TP_USLUGI" MODIFY ("NOM_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ORDERS_TP_USLUGI" MODIFY ("PRICE" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ORDERS_TP_USLUGI" MODIFY ("SUMM" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ORDERS_TP_USLUGI" MODIFY ("DAT_COMPLETE" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ORDERS_TP_USLUGI" MODIFY ("SOTR_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORDER_STATUS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."ORDER_STATUS" ADD CONSTRAINT "ORDER_STATUS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."ORDER_STATUS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ORDER_STATUS" MODIFY ("VERSION" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ORDER_STATUS" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PLAN_ACC
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."PLAN_ACC" ADD CONSTRAINT "PLAN_ACC_CHK1" CHECK (ZABALANSOV IN (1, 0)) ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."PLAN_ACC" ADD CONSTRAINT "PLAN_ACC_CHK2" CHECK (VALUTN IN (1, 0)) ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."PLAN_ACC" ADD CONSTRAINT "PLAN_ACC_CHK3" CHECK (DELETED IN (1, 0)) ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."PLAN_ACC" ADD CONSTRAINT "PLAN_ACC_CHK4" CHECK (KOLISHESTV IN (1, 0)) ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."PLAN_ACC" ADD CONSTRAINT "PLAN_ACC_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."PLAN_ACC" ADD CONSTRAINT "PLAN_ACC_UK1" UNIQUE ("FULLNAME", "CODE") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."PLAN_ACC" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."PLAN_ACC" MODIFY ("ACC_TYPE" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."PLAN_ACC" MODIFY ("FULLNAME" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."PLAN_ACC" MODIFY ("ZABALANSOV" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."PLAN_ACC" MODIFY ("VALUTN" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."PLAN_ACC" MODIFY ("KOLISHESTV" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."PLAN_ACC" MODIFY ("DELETED" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."PLAN_ACC" MODIFY ("VERSION" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."PLAN_ACC" MODIFY ("CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PLAN_ACC_SUBCONTO
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."PLAN_ACC_SUBCONTO" ADD CONSTRAINT "PLAN_ACC_SUBCONTO_CHK1" CHECK (OBOROT_ONLY IN (1, 0)) ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."PLAN_ACC_SUBCONTO" ADD CONSTRAINT "PLAN_ACC_SUBCONTO_CHK2" CHECK (SUMMOVOY IN (1, 0)) ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."PLAN_ACC_SUBCONTO" ADD CONSTRAINT "PLAN_ACC_SUBCONTO_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."PLAN_ACC_SUBCONTO" MODIFY ("SUMMOVOY" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."PLAN_ACC_SUBCONTO" MODIFY ("VERSION" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."PLAN_ACC_SUBCONTO" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."PLAN_ACC_SUBCONTO" MODIFY ("PLAN_ACC_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."PLAN_ACC_SUBCONTO" MODIFY ("PLAN_TYPE_SUBC" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."PLAN_ACC_SUBCONTO" MODIFY ("OBOROT_ONLY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PLAN_TYPE_SUBCONTO
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."PLAN_TYPE_SUBCONTO" ADD CONSTRAINT "PLAN_TYPE_SUBCONTO_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."PLAN_TYPE_SUBCONTO" ADD CONSTRAINT "PLAN_TYPE_SUBCONTO_UK1" UNIQUE ("TYPE_OF_OBJ") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."PLAN_TYPE_SUBCONTO" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."PLAN_TYPE_SUBCONTO" MODIFY ("TYPE_OF_OBJ" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."PLAN_TYPE_SUBCONTO" MODIFY ("VERSION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PS_TXN
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."PS_TXN" ADD CONSTRAINT "PS_TXN_PK" PRIMARY KEY ("COLLID", "ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table REG_RATES
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."REG_RATES" ADD CONSTRAINT "REG_RATES_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."REG_RATES" MODIFY ("CURR_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."REG_RATES" MODIFY ("PERIOD" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."REG_RATES" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."REG_RATES" MODIFY ("KURS" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."REG_RATES" MODIFY ("KRATNOST" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."REG_RATES" MODIFY ("VERSION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TYPE_DEF
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."TYPE_DEF" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."TYPE_DEF" MODIFY ("VERSION" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."TYPE_DEF" ADD CONSTRAINT "TYPE_DEF_PK" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table TYPE_OF_ACTIVITIES
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."TYPE_OF_ACTIVITIES" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."TYPE_OF_ACTIVITIES" MODIFY ("VERSION" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."TYPE_OF_ACTIVITIES" MODIFY ("FULLNAME" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."TYPE_OF_ACTIVITIES" ADD CONSTRAINT "TYPE_OF_ACTIVITIES_PK" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."USERS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."USERS" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."USERS" MODIFY ("LAST_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."USERS" MODIFY ("EMAIL" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."USERS" MODIFY ("IS_ADMIN" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."USERS" MODIFY ("PASS_WD" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."USERS" MODIFY ("LOGIN" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."USERS" MODIFY ("VERSION" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."USERS" MODIFY ("PREDEFINED" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."USERS" ADD CONSTRAINT "USERS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."USERS" ADD CONSTRAINT "USERS_UK1" UNIQUE ("LOGIN") ENABLE;
--------------------------------------------------------
--  Constraints for Table USER_SETTINGS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."USER_SETTINGS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."USER_SETTINGS" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."USER_SETTINGS" MODIFY ("DIVISION_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."USER_SETTINGS" MODIFY ("FIRMA_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."USER_SETTINGS" MODIFY ("CURRENCY_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."USER_SETTINGS" MODIFY ("KASSA_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."USER_SETTINGS" MODIFY ("MAIN_USLUGA" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."USER_SETTINGS" MODIFY ("ACTIVITIES_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."USER_SETTINGS" ADD CONSTRAINT "USER_SETTINGS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."USER_SETTINGS" ADD CONSTRAINT "USER_SETTINGS_UK1" UNIQUE ("USER_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table VOUCHER
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."VOUCHER" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."VOUCHER" MODIFY ("VERSION" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."VOUCHER" MODIFY ("EXPIRED_BY" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."VOUCHER" MODIFY ("CODE" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."VOUCHER" ADD CONSTRAINT "VOUCHER_PK" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table XML_T
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."XML_T" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."XML_T" MODIFY ("VERSION" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."XML_T" MODIFY ("ONE" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."XML_T" ADD CONSTRAINT "XML_T_PK" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table ZATRATY
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."ZATRATY" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ZATRATY" MODIFY ("IS_GROUP" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ZATRATY" MODIFY ("DELETED" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ZATRATY" MODIFY ("FULLNAME" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ZATRATY" MODIFY ("VERSION" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ZATRATY" MODIFY ("PREDEFINED" NOT NULL ENABLE);
 
  ALTER TABLE "DBA_DIVAS"."ZATRATY" ADD CONSTRAINT "ZATRATY_PK" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CALL_LOG
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."CALL_LOG" ADD CONSTRAINT "CALL_LOG_FK1" FOREIGN KEY ("CALL_STATUS")
	  REFERENCES "DBA_DIVAS"."CALL_STATUS" ("ID") ON DELETE SET NULL ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."CALL_LOG" ADD CONSTRAINT "CALL_LOG_FK2" FOREIGN KEY ("CONTACT_ID")
	  REFERENCES "DBA_DIVAS"."CONTACT_DETAILS" ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."CALL_LOG" ADD CONSTRAINT "CALL_LOG_FK3" FOREIGN KEY ("COMP_DET_ID")
	  REFERENCES "DBA_DIVAS"."COMPAIGNS_DETAILS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMPAIGNS_DETAILS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."COMPAIGNS_DETAILS" ADD CONSTRAINT "COMPAIGNS_DETAILS_FK1" FOREIGN KEY ("COMPAIGN_ID")
	  REFERENCES "DBA_DIVAS"."COMPAIGNS" ("ID") ON DELETE SET NULL ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."COMPAIGNS_DETAILS" ADD CONSTRAINT "COMPAIGNS_DETAILS_FK2" FOREIGN KEY ("KONTRAG_ID")
	  REFERENCES "DBA_DIVAS"."KONTRAGENTS" ("ID") ON DELETE SET NULL ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."COMPAIGNS_DETAILS" ADD CONSTRAINT "COMPAIGNS_DETAILS_FK3" FOREIGN KEY ("CONTACT_ID")
	  REFERENCES "DBA_DIVAS"."CONTACT_DETAILS" ("ID") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CONTACT_DETAILS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."CONTACT_DETAILS" ADD CONSTRAINT "CONTACT_DETAILS_FK1" FOREIGN KEY ("KONTRAG_ID")
	  REFERENCES "DBA_DIVAS"."KONTRAGENTS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DIVISIONS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."DIVISIONS" ADD CONSTRAINT "DIVISIONS_DIVISIONS_FK1" FOREIGN KEY ("PARENT_ID")
	  REFERENCES "DBA_DIVAS"."DIVISIONS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DIVISION_SOTR
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."DIVISION_SOTR" ADD CONSTRAINT "DIVISION_SOTR_FK1" FOREIGN KEY ("DIV_ID")
	  REFERENCES "DBA_DIVAS"."DIVISIONS" ("ID") ON DELETE SET NULL ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."DIVISION_SOTR" ADD CONSTRAINT "DIVISION_SOTR_FK2" FOREIGN KEY ("USER_ID")
	  REFERENCES "DBA_DIVAS"."USERS" ("ID") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ENTRY_SETTINGS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."ENTRY_SETTINGS" ADD CONSTRAINT "ENTRY_SETTINGS_PLAN_ACC_DEB" FOREIGN KEY ("PLAN_ACC_DEB_ID")
	  REFERENCES "DBA_DIVAS"."PLAN_ACC" ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."ENTRY_SETTINGS" ADD CONSTRAINT "ENTRY_SETTINGS_PLAN_ACC_KRED" FOREIGN KEY ("PLAN_ACC_KRED_ID")
	  REFERENCES "DBA_DIVAS"."PLAN_ACC" ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."ENTRY_SETTINGS" ADD CONSTRAINT "ENTRY_SETTINGS_TYPE_DEF_FK1" FOREIGN KEY ("TYPEDEF_ID")
	  REFERENCES "DBA_DIVAS"."TYPE_DEF" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EX_RATES_SETTINGS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."EX_RATES_SETTINGS" ADD CONSTRAINT "EX_RATES_SETTINGS_CURRENC_FK1" FOREIGN KEY ("CURR_ID")
	  REFERENCES "DBA_DIVAS"."CURRENCY" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GROUPMEMBERS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."GROUPMEMBERS" ADD CONSTRAINT "GROUPMEMBERS_FK2" FOREIGN KEY ("G_NAME")
	  REFERENCES "DBA_DIVAS"."GROUPS" ("FULLNAME") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KASSA
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."KASSA" ADD CONSTRAINT "KASSA_CURRENCY_FK1" FOREIGN KEY ("CURR_ID")
	  REFERENCES "DBA_DIVAS"."CURRENCY" ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."KASSA" ADD CONSTRAINT "KASSA_DIVISIONS_FK1" FOREIGN KEY ("DIVISION_ID")
	  REFERENCES "DBA_DIVAS"."DIVISIONS" ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."KASSA" ADD CONSTRAINT "KASSA_KASSA_FK1" FOREIGN KEY ("PARENT_ID")
	  REFERENCES "DBA_DIVAS"."KASSA" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KONTRAGENTS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."KONTRAGENTS" ADD CONSTRAINT "KONTRAGENTS_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "DBA_DIVAS"."USERS" ("ID") ON DELETE SET NULL ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."KONTRAGENTS" ADD CONSTRAINT "KONTRAGENTS_KONTRAGENTS_FK1" FOREIGN KEY ("PARENT_ID")
	  REFERENCES "DBA_DIVAS"."KONTRAGENTS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOVES
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."MOVES" ADD CONSTRAINT "MOVES_CURRENCY_FK1" FOREIGN KEY ("CURR_DEB")
	  REFERENCES "DBA_DIVAS"."CURRENCY" ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."MOVES" ADD CONSTRAINT "MOVES_CURRENCY_FK2" FOREIGN KEY ("CURR_KRED")
	  REFERENCES "DBA_DIVAS"."CURRENCY" ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."MOVES" ADD CONSTRAINT "MOVES_FK1" FOREIGN KEY ("ACTIVITIES_ID")
	  REFERENCES "DBA_DIVAS"."TYPE_OF_ACTIVITIES" ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."MOVES" ADD CONSTRAINT "MOVES_PLAN_ACC_FK1" FOREIGN KEY ("PLAN_ACC_DEB_ID")
	  REFERENCES "DBA_DIVAS"."PLAN_ACC" ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."MOVES" ADD CONSTRAINT "MOVES_PLAN_ACC_FK2" FOREIGN KEY ("PLAN_ACC_KRED_ID")
	  REFERENCES "DBA_DIVAS"."PLAN_ACC" ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."MOVES" ADD CONSTRAINT "MOVES_TYPE_DEF_FK1" FOREIGN KEY ("REGISTRATOR_TYPE")
	  REFERENCES "DBA_DIVAS"."TYPE_DEF" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NOMENKLATURA
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."NOMENKLATURA" ADD CONSTRAINT "NOMENKLATURA_NOMENKLATURA_FK1" FOREIGN KEY ("PARENT_ID")
	  REFERENCES "DBA_DIVAS"."NOMENKLATURA" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NUMERATOR
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."NUMERATOR" ADD CONSTRAINT "NUMERATOR_TYPE_DEF_FK1" FOREIGN KEY ("TYPEDEF_ID")
	  REFERENCES "DBA_DIVAS"."TYPE_DEF" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."ORDERS" ADD CONSTRAINT "ORDERS_CURRENCY_FK1" FOREIGN KEY ("CURR_ID")
	  REFERENCES "DBA_DIVAS"."CURRENCY" ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" ADD CONSTRAINT "ORDERS_DIVISIONS_FK1" FOREIGN KEY ("DIVISION_ID")
	  REFERENCES "DBA_DIVAS"."DIVISIONS" ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" ADD CONSTRAINT "ORDERS_FIRMS_FK1" FOREIGN KEY ("FIRM_ID")
	  REFERENCES "DBA_DIVAS"."FIRMS" ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" ADD CONSTRAINT "ORDERS_FK1" FOREIGN KEY ("ACTIVITIES_ID")
	  REFERENCES "DBA_DIVAS"."TYPE_OF_ACTIVITIES" ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" ADD CONSTRAINT "ORDERS_FK2" FOREIGN KEY ("ZAMER_ID")
	  REFERENCES "DBA_DIVAS"."KONTRAGENTS" ("ID") ON DELETE SET NULL ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" ADD CONSTRAINT "ORDERS_KASSA_FK1" FOREIGN KEY ("KASSA_ID")
	  REFERENCES "DBA_DIVAS"."KASSA" ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" ADD CONSTRAINT "ORDERS_KONTRAGENTS_FK1" FOREIGN KEY ("KONTRAG_ID")
	  REFERENCES "DBA_DIVAS"."KONTRAGENTS" ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" ADD CONSTRAINT "ORDERS_STATUS_FK" FOREIGN KEY ("STATUS_ID")
	  REFERENCES "DBA_DIVAS"."ORDER_STATUS" ("ID") ON DELETE SET NULL ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."ORDERS" ADD CONSTRAINT "ORDERS_USERS_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "DBA_DIVAS"."USERS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDERS_TP_USLUGI
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."ORDERS_TP_USLUGI" ADD CONSTRAINT "ORDERS_TP_USLUGI_FK1" FOREIGN KEY ("ORDER_ID")
	  REFERENCES "DBA_DIVAS"."ORDERS" ("ID") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."ORDERS_TP_USLUGI" ADD CONSTRAINT "ORDERS_TP_USLUGI_FK2" FOREIGN KEY ("NOM_ID")
	  REFERENCES "DBA_DIVAS"."NOMENKLATURA" ("ID") ON DELETE SET NULL ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."ORDERS_TP_USLUGI" ADD CONSTRAINT "ORDERS_TP_USLUGI_FK3" FOREIGN KEY ("SOTR_ID")
	  REFERENCES "DBA_DIVAS"."KONTRAGENTS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PLAN_ACC
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."PLAN_ACC" ADD CONSTRAINT "PLAN_ACC_FK1" FOREIGN KEY ("PARENT_ID")
	  REFERENCES "DBA_DIVAS"."PLAN_ACC" ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."PLAN_ACC" ADD CONSTRAINT "PLAN_ACC_FK2" FOREIGN KEY ("ACC_TYPE")
	  REFERENCES "DBA_DIVAS"."ENUM_ACCOUNT_TYPE" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PLAN_ACC_SUBCONTO
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."PLAN_ACC_SUBCONTO" ADD CONSTRAINT "PLAN_ACC_SUBCONTO_FK1" FOREIGN KEY ("PLAN_ACC_ID")
	  REFERENCES "DBA_DIVAS"."PLAN_ACC" ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."PLAN_ACC_SUBCONTO" ADD CONSTRAINT "PLAN_ACC_SUBCONTO_FK2" FOREIGN KEY ("PLAN_TYPE_SUBC")
	  REFERENCES "DBA_DIVAS"."PLAN_TYPE_SUBCONTO" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PLAN_TYPE_SUBCONTO
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."PLAN_TYPE_SUBCONTO" ADD CONSTRAINT "PLAN_TYPE_SUBCONTO_TYPE_D_FK1" FOREIGN KEY ("TYPE_OF_OBJ")
	  REFERENCES "DBA_DIVAS"."TYPE_DEF" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REG_RATES
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."REG_RATES" ADD CONSTRAINT "REG_RATES_FK1" FOREIGN KEY ("CURR_ID")
	  REFERENCES "DBA_DIVAS"."CURRENCY" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USER_SETTINGS
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."USER_SETTINGS" ADD CONSTRAINT "USER_SETTINGS_CURRENCY_FK1" FOREIGN KEY ("CURRENCY_ID")
	  REFERENCES "DBA_DIVAS"."CURRENCY" ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."USER_SETTINGS" ADD CONSTRAINT "USER_SETTINGS_DIVISIONS_FK1" FOREIGN KEY ("DIVISION_ID")
	  REFERENCES "DBA_DIVAS"."DIVISIONS" ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."USER_SETTINGS" ADD CONSTRAINT "USER_SETTINGS_FIRMS_FK1" FOREIGN KEY ("FIRMA_ID")
	  REFERENCES "DBA_DIVAS"."FIRMS" ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."USER_SETTINGS" ADD CONSTRAINT "USER_SETTINGS_FK1" FOREIGN KEY ("ACTIVITIES_ID")
	  REFERENCES "DBA_DIVAS"."TYPE_OF_ACTIVITIES" ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."USER_SETTINGS" ADD CONSTRAINT "USER_SETTINGS_KASSA_FK1" FOREIGN KEY ("KASSA_ID")
	  REFERENCES "DBA_DIVAS"."KASSA" ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."USER_SETTINGS" ADD CONSTRAINT "USER_SETTINGS_NOMENKLATUR_FK1" FOREIGN KEY ("MAIN_USLUGA")
	  REFERENCES "DBA_DIVAS"."NOMENKLATURA" ("ID") ENABLE;
 
  ALTER TABLE "DBA_DIVAS"."USER_SETTINGS" ADD CONSTRAINT "USER_SETTINGS_USERS_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "DBA_DIVAS"."USERS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ZATRATY
--------------------------------------------------------

  ALTER TABLE "DBA_DIVAS"."ZATRATY" ADD CONSTRAINT "ZATRATY_ZATRATY_FK1" FOREIGN KEY ("PARENT_ID")
	  REFERENCES "DBA_DIVAS"."ZATRATY" ("ID") ENABLE;
--------------------------------------------------------
--  DDL for Trigger ASTER_SETTINGS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."ASTER_SETTINGS_TRG" 
  BEFORE INSERT OR UPDATE ON "ASTER_SETTINGS"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :new."ID" from dual;
      end if; 
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."ASTER_SETTINGS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CALL_LOG_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."CALL_LOG_TRG" 
  BEFORE INSERT OR UPDATE ON "CALL_LOG"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :new."ID" from dual;
      end if; 
   end if;
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."CALL_LOG_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CALL_RESULTS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."CALL_RESULTS_TRG" 
  BEFORE INSERT OR UPDATE ON "CALL_RESULTS"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :new."ID" from dual;
      end if; 
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."CALL_RESULTS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CALL_STATUS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."CALL_STATUS_TRG" 
  BEFORE INSERT OR UPDATE ON "CALL_STATUS"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :new."ID" from dual;
      end if; 
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."CALL_STATUS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger COMPAIGNS_DETAILS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."COMPAIGNS_DETAILS_TRG" 
  BEFORE INSERT OR UPDATE ON "COMPAIGNS_DETAILS"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :new."ID" from dual;
      end if; 
   end if;
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."COMPAIGNS_DETAILS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger COMPAIGNS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."COMPAIGNS_TRG" 
  BEFORE INSERT OR UPDATE ON "COMPAIGNS"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :new."ID" from dual;
      end if; 
   end if;
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."COMPAIGNS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CONTACT_DETAILS_TGR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."CONTACT_DETAILS_TGR" 
  BEFORE INSERT OR UPDATE ON "CONTACT_DETAILS"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :new."ID" from dual;
      end if; 
   end if; 
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."CONTACT_DETAILS_TGR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CURRENCY_TGR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."CURRENCY_TGR" 
  BEFORE INSERT OR UPDATE ON "CURRENCY"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :new."ID" from dual;
      end if; 
   end if; 
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."CURRENCY_TGR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CURRENCY_TRG_AI
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."CURRENCY_TRG_AI" 
  AFTER INSERT ON "CURRENCY"
  REFERENCING FOR EACH ROW
  begin
  insert into reg_rates (curr_id) values(:new."ID");
end;
/
ALTER TRIGGER "DBA_DIVAS"."CURRENCY_TRG_AI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DIVISIONS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."DIVISIONS_TRG" 
  BEFORE INSERT OR UPDATE ON "DIVISIONS"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :NEW."ID" from dual;
      end if; 
   end if;
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."DIVISIONS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DIVISION_SOTR_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."DIVISION_SOTR_TRG" 
  BEFORE INSERT OR UPDATE ON "DIVISION_SOTR"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :NEW."ID" from dual;
      end if; 
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."DIVISION_SOTR_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ENTRY_SETTINGS_TGR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."ENTRY_SETTINGS_TGR" 
  BEFORE INSERT OR UPDATE ON "ENTRY_SETTINGS"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :new."ID" from dual;
      end if; 
   end if; 
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."ENTRY_SETTINGS_TGR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ENUM_ACCOUNT_TYPE_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."ENUM_ACCOUNT_TYPE_TRG" 
  BEFORE INSERT OR UPDATE ON "ENUM_ACCOUNT_TYPE"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :NEW."ID" from dual;
      end if; 
   end if;
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."ENUM_ACCOUNT_TYPE_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger EX_RATES_SETTINGS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."EX_RATES_SETTINGS_TRG" 
  BEFORE INSERT OR UPDATE ON "EX_RATES_SETTINGS"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :new."ID" from dual;
      end if; 
   end if;
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."EX_RATES_SETTINGS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger FIRMS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."FIRMS_TRG" 
  BEFORE INSERT OR UPDATE ON "FIRMS"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :NEW."ID" from dual;
      end if; 
   end if;
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."FIRMS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger GROUPMEMBERS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."GROUPMEMBERS_TRG" 
  BEFORE INSERT OR UPDATE ON "GROUPMEMBERS"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :NEW."ID" from dual;
      end if; 
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."GROUPMEMBERS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger GROUPS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."GROUPS_TRG" 
  BEFORE INSERT OR UPDATE ON "GROUPS"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :NEW."ID" from dual;
      end if; 
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."GROUPS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger IMPORTED_PRICE_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."IMPORTED_PRICE_TRG" 
  BEFORE INSERT OR UPDATE ON "IMPORTED_PRICE"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :new."ID" from dual;
      end if; 
   end if;
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."IMPORTED_PRICE_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger KASSA_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."KASSA_TRG" 
  BEFORE INSERT OR UPDATE ON "KASSA"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :NEW."ID" from dual;
      end if; 
   end if;
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."KASSA_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger KONTRAGENTS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."KONTRAGENTS_TRG" 
  BEFORE INSERT OR UPDATE ON "KONTRAGENTS"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
        select utility.uuid() into :NEW."ID" from dual;
      end if; 
   end if;
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."KONTRAGENTS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MEASURE_UNIT_TGR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."MEASURE_UNIT_TGR" 
  BEFORE INSERT OR UPDATE ON "MEASURE_UNIT"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :new."ID" from dual;
      end if; 
   end if; 
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."MEASURE_UNIT_TGR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MOVES_TGR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."MOVES_TGR" 
  BEFORE INSERT OR UPDATE ON "MOVES"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :new."ID" from dual;
      end if; 
   end if; 
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."MOVES_TGR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger NOMENKLATURA_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."NOMENKLATURA_TRG" 
  BEFORE INSERT OR UPDATE ON "NOMENKLATURA"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
        select utility.uuid() into :new."ID" from dual; 
      end if; 
   end if;
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."NOMENKLATURA_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger NUMERATOR_TGR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."NUMERATOR_TGR" 
  BEFORE INSERT OR UPDATE ON "NUMERATOR"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :new."ID" from dual;
      end if; 
   end if; 
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."NUMERATOR_TGR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ORDERS_TP_USLUGI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."ORDERS_TP_USLUGI_TRG" 
  BEFORE INSERT OR UPDATE ON "ORDERS_TP_USLUGI"
  REFERENCING FOR EACH ROW
begin  
   if inserting then
      
      
      if :NEW."ID" is null then 
         select utility.uuid() into :NEW."ID" from dual;
      end if;
      end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."ORDERS_TP_USLUGI_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ORDERS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."ORDERS_TRG" 
  BEFORE INSERT OR UPDATE ON "ORDERS"
  REFERENCING FOR EACH ROW
  declare
  l_rec type_def%rowtype;
  l_num numerator.prefix%type;
begin  
   if inserting then
      select * into l_rec from type_def where upper(table_name) = 'ORDERS';
      if l_rec.id is not null then
          select prefix into l_num from numerator where typedef_id = l_rec.id;
      end if;
      
      if :NEW."ID" is null then 
         select utility.uuid() into :NEW."ID" from dual;
      end if;
      if :new."NUM" is null then
          if l_num is null then
            select orders_num_seq.nextval into :new."NUM" from dual;
          else
            select l_num||orders_num_seq.nextval into :new."NUM" from dual;
          end if;  
      end if;
   end if;
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."ORDERS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ORDER_STATUS_TGR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."ORDER_STATUS_TGR" 
  BEFORE INSERT OR UPDATE ON "ORDER_STATUS"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :new."ID" from dual;
      end if; 
   end if; 
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."ORDER_STATUS_TGR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PLAN_ACC_SUBCONTO_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."PLAN_ACC_SUBCONTO_TRG" 
  BEFORE INSERT OR UPDATE ON "PLAN_ACC_SUBCONTO"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :NEW."ID" from dual;
      end if; 
   end if;
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."PLAN_ACC_SUBCONTO_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PLAN_ACC_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."PLAN_ACC_TRG" 
  BEFORE INSERT OR UPDATE ON "PLAN_ACC"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :NEW."ID" from dual;
      end if; 
   end if;
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."PLAN_ACC_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PLAN_TYPE_SUBCONTO_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."PLAN_TYPE_SUBCONTO_TRG" 
  BEFORE INSERT OR UPDATE ON "PLAN_TYPE_SUBCONTO"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :NEW."ID" from dual;
      end if; 
   end if;
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."PLAN_TYPE_SUBCONTO_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REG_RATES_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."REG_RATES_TRG" 
  BEFORE INSERT OR UPDATE ON "REG_RATES"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :NEW."ID" from dual;
      end if; 
   end if; 
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."REG_RATES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TYPE_DEF_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."TYPE_DEF_TRG" 
  BEFORE INSERT OR UPDATE ON "TYPE_DEF"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :NEW."ID" from dual;
      end if; 
   end if;
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."TYPE_DEF_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TYPE_OF_ACTIVITIES_TGR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."TYPE_OF_ACTIVITIES_TGR" 
  BEFORE INSERT OR UPDATE ON "TYPE_OF_ACTIVITIES"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :new."ID" from dual;
      end if; 
   end if; 
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."TYPE_OF_ACTIVITIES_TGR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger USERS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."USERS_TRG" 
  BEFORE INSERT OR UPDATE ON "USERS"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :new."ID" is null then 
         select utility.uuid() into :NEW."ID" from dual; 
      end if; 
       if :new."PASS_WD" is null then 
         select utility.md5( '1') into :new."PASS_WD" from dual; 
      end if; 
   end if;
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."USERS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger USER_SETTINGS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."USER_SETTINGS_TRG" 
  BEFORE INSERT ON "USER_SETTINGS"
  REFERENCING FOR EACH ROW
  declare
    a number;   
begin  
   if inserting then
      select count(*) into a from USER_SETTINGS where user_id=:NEW."USER_ID" ;
      if a>=1 then
        raise_application_error(-20100,'Can not insert more than one row');
      end if;
      if :NEW."ID" is null then 
         select utility.uuid() into :NEW."ID" from dual;
      end if; 
   end if; 
end;
/
ALTER TRIGGER "DBA_DIVAS"."USER_SETTINGS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger VOUCHER_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."VOUCHER_TRG" 
  BEFORE INSERT OR UPDATE ON "VOUCHER"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :NEW."ID" from dual;
      end if; 
   end if;
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."VOUCHER_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger XML_T_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."XML_T_TRG" 
  BEFORE INSERT OR UPDATE ON "XML_T"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
         select utility.uuid() into :NEW."ID" from dual;
      end if; 
   end if;
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."XML_T_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ZATRATY_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBA_DIVAS"."ZATRATY_TRG" 
  BEFORE INSERT OR UPDATE ON "ZATRATY"
  REFERENCING FOR EACH ROW
  begin  
   if inserting then 
      if :NEW."ID" is null then 
        select utility.uuid() into :NEW."ID" from dual;
      end if; 
   end if;
   if updating then
      select systimestamp into :new."VERSION" from dual;
   end if;
end;
/
ALTER TRIGGER "DBA_DIVAS"."ZATRATY_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Function ACC_TYPE_CONV
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "DBA_DIVAS"."ACC_TYPE_CONV" (bl_expr in varchar2) return varchar2 as 
begin
  if upper(bl_expr) = 'ACTIVE' then
    return 'АКТИВНЫЙ';
  end if;
  if upper(bl_expr) = 'PASSIVE' then
    return 'ПАССИВНЫЙ';
  end if;
  return 'АКТИВНЫЙ/ПАССИВНЫЙ';
end acc_type_conv;

/
--------------------------------------------------------
--  DDL for Function BOOL_TO_NUM
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "DBA_DIVAS"."BOOL_TO_NUM" 
(
  bl_expr in varchar2  
) return number as 
begin
 /* if bl_expr is null Then
    return null;
  end if;*/
  if upper(bl_expr) = 'TRUE' Then
    return 1;
  end if;
  return 0;
end bool_to_num;

/
--------------------------------------------------------
--  DDL for Function PLAN_TYPE_SUBCONTO_CONV
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "DBA_DIVAS"."PLAN_TYPE_SUBCONTO_CONV" (bl_expr in varchar2) return varchar2 as
p_ref varchar2(50);
begin
  if upper(bl_expr) = 'ЦФО' then
    select id into p_ref from plan_type_subconto
        where type_of_obj = (select id from type_def where table_name = 'DIVISIONS');
    return p_ref;
  end if;
  if upper(bl_expr) = 'НОМЕНКЛАТУРА' then
    select id into p_ref from plan_type_subconto
        where type_of_obj = (select id from type_def where table_name = 'NOMENKLATURA');
    return p_ref;
  end if;
  if upper(bl_expr) = 'КОНТРАГЕНТЫ' then
    select id into p_ref from plan_type_subconto
        where type_of_obj = (select id from type_def where table_name = 'KONTRAGENTS');
    return p_ref;
  end if;
  if upper(bl_expr) = 'КАССА' then
    select id into p_ref from plan_type_subconto
        where type_of_obj = (select id from type_def where table_name = 'KASSA');
    return p_ref;
  end if;
  if upper(bl_expr) = 'СТАТЬЯ ЗАТРАТ' then
    select id into p_ref from plan_type_subconto
        where type_of_obj = (select id from type_def where table_name = 'ZATRATY');
    return p_ref;
  end if;
  return null;
end plan_type_subconto_conv;

/
--------------------------------------------------------
--  DDL for Function RANDOMUUID
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "DBA_DIVAS"."RANDOMUUID" 
    RETURN VARCHAR2
    AS LANGUAGE JAVA
    NAME 'RandomUUID.create() return java.lang.String';

/
--------------------------------------------------------
--  DDL for Package CURRENCY_PKG
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "DBA_DIVAS"."CURRENCY_PKG" as 

  function get_xmlfromurl(p_url varchar2, p_charset varchar2 default 'UTF8') return xmltype;
  procedure getratebydate(p_code in currency.id%type, p_dat in date);
  procedure getratebyShedule;
  function get_lastSectionRates(p_code in currency.id%type, p_dat in date) return varchar2;
  function calculate_from_curr_to_curr(p_curr_from in currency.id%type, p_curr_to in currency.id%type, p_dat in date, p_summ number) return number;

end currency_pkg;

/
--------------------------------------------------------
--  DDL for Package ENTRY
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "DBA_DIVAS"."ENTRY" as 

  function sign_of_summ(p_acc in plan_acc.id%type, p_summ in number, p_type in number) return number;

end entry;

/
--------------------------------------------------------
--  DDL for Package FTP
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "DBA_DIVAS"."FTP" AS
-- --------------------------------------------------------------------------
-- Name         : http://www.oracle-base.com/dba/miscellaneous/ftp.pks
-- Author       : DR Timothy S Hall
-- Description  : Basic FTP API. For usage notes see:
--                  http://www.oracle-base.com/articles/misc/ftp-from-plsql.php
-- Requirements : UTL_TCP
-- Ammedments   :
--   When         Who       What
--   ===========  ========  =================================================
--   14-AUG-2003  Tim Hall  Initial Creation
--   10-MAR-2004  Tim Hall  Add convert_crlf procedure.
--                          Make get_passive function visible.
--                          Added get_direct and put_direct procedures.
--   03-OCT-2006  Tim Hall  Add list, rename, delete, mkdir, rmdir procedures.
--   15-Jan-2008  Tim Hall  login: Include timeout parameter (suggested by Dmitry Bogomolov).
--   12-Jun-2008  Tim Hall  get_reply: Moved to pakage specification.
--   22-Apr-2009  Tim Hall  nlst: Added to return list of file names only (suggested by Julian and John Duncan)
-- --------------------------------------------------------------------------

TYPE t_string_table IS TABLE OF VARCHAR2(32767);

FUNCTION login (p_host    IN  VARCHAR2,
                p_port    IN  VARCHAR2,
                p_user    IN  VARCHAR2,
                p_pass    IN  VARCHAR2,
                p_timeout IN  NUMBER := NULL)
  RETURN UTL_TCP.connection;

FUNCTION get_passive (p_conn  IN OUT NOCOPY  UTL_TCP.connection)
  RETURN UTL_TCP.connection;

PROCEDURE logout (p_conn   IN OUT NOCOPY  UTL_TCP.connection,
                  p_reply  IN             BOOLEAN := TRUE);

PROCEDURE send_command (p_conn     IN OUT NOCOPY  UTL_TCP.connection,
                        p_command  IN             VARCHAR2,
                        p_reply    IN             BOOLEAN := TRUE);

PROCEDURE get_reply (p_conn  IN OUT NOCOPY  UTL_TCP.connection);

FUNCTION get_local_ascii_data (p_dir   IN  VARCHAR2,
                               p_file  IN  VARCHAR2)
  RETURN CLOB;

FUNCTION get_local_binary_data (p_dir   IN  VARCHAR2,
                                p_file  IN  VARCHAR2)
  RETURN BLOB;

FUNCTION get_remote_ascii_data (p_conn  IN OUT NOCOPY  UTL_TCP.connection,
                                p_file  IN             VARCHAR2)
  RETURN CLOB;

FUNCTION get_remote_binary_data (p_conn  IN OUT NOCOPY  UTL_TCP.connection,
                                 p_file  IN             VARCHAR2)
  RETURN BLOB;

PROCEDURE put_local_ascii_data (p_data  IN  CLOB,
                                p_dir   IN  VARCHAR2,
                                p_file  IN  VARCHAR2);

PROCEDURE put_local_binary_data (p_data  IN  BLOB,
                                 p_dir   IN  VARCHAR2,
                                 p_file  IN  VARCHAR2);

PROCEDURE put_remote_ascii_data (p_conn  IN OUT NOCOPY  UTL_TCP.connection,
                                 p_file  IN             VARCHAR2,
                                 p_data  IN             CLOB);

PROCEDURE put_remote_binary_data (p_conn  IN OUT  NOCOPY UTL_TCP.connection,
                                  p_file  IN             VARCHAR2,
                                  p_data  IN             BLOB);

PROCEDURE get (p_conn       IN OUT NOCOPY  UTL_TCP.connection,
               p_from_file  IN             VARCHAR2,
               p_to_dir     IN             VARCHAR2,
               p_to_file    IN             VARCHAR2);

PROCEDURE put (p_conn       IN OUT NOCOPY  UTL_TCP.connection,
               p_from_dir   IN             VARCHAR2,
               p_from_file  IN             VARCHAR2,
               p_to_file    IN             VARCHAR2);

PROCEDURE get_direct (p_conn       IN OUT NOCOPY  UTL_TCP.connection,
                      p_from_file  IN             VARCHAR2,
                      p_to_dir     IN             VARCHAR2,
                      p_to_file    IN             VARCHAR2);

PROCEDURE put_direct (p_conn       IN OUT NOCOPY  UTL_TCP.connection,
                      p_from_dir   IN             VARCHAR2,
                      p_from_file  IN             VARCHAR2,
                      p_to_file    IN             VARCHAR2);

PROCEDURE help (p_conn  IN OUT NOCOPY  UTL_TCP.connection);

PROCEDURE ascii (p_conn  IN OUT NOCOPY  UTL_TCP.connection);

PROCEDURE binary (p_conn  IN OUT NOCOPY  UTL_TCP.connection);

PROCEDURE list (p_conn  IN OUT NOCOPY  UTL_TCP.connection,
                p_dir   IN             VARCHAR2,
                p_list  OUT            t_string_table);

PROCEDURE nlst (p_conn  IN OUT NOCOPY  UTL_TCP.connection,
                p_dir   IN             VARCHAR2,
                p_list  OUT            t_string_table);

PROCEDURE rename (p_conn  IN OUT NOCOPY  UTL_TCP.connection,
                  p_from  IN             VARCHAR2,
                  p_to    IN             VARCHAR2);

PROCEDURE delete (p_conn  IN OUT NOCOPY  UTL_TCP.connection,
                  p_file  IN             VARCHAR2);

PROCEDURE mkdir (p_conn  IN OUT NOCOPY  UTL_TCP.connection,
                 p_dir   IN             VARCHAR2);

PROCEDURE rmdir (p_conn  IN OUT NOCOPY  UTL_TCP.connection,
                 p_dir   IN             VARCHAR2);

PROCEDURE convert_crlf (p_status  IN  BOOLEAN);

END ftp;

/
--------------------------------------------------------
--  DDL for Package KONTRAG
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "DBA_DIVAS"."KONTRAG" AS 

  procedure create_kontrag(p_parent kontragents.parent_id%type, p_fullname kontragents.fullname%type, p_namefull kontragents.namefull%type,
                            p_okpo kontragents.okpo%type, p_inn kontragents.inn%type);

END KONTRAG;

/
--------------------------------------------------------
--  DDL for Package P_ENCRYPT
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "DBA_DIVAS"."P_ENCRYPT" 
AS 
  FUNCTION encrypt_ssn( p_ssn IN VARCHAR2, p_key IN VARCHAR2) RETURN RAW;
  FUNCTION decrypt_ssn( p_ssn IN RAW, p_key IN VARCHAR2 ) RETURN VARCHAR2;
END p_encrypt;

/
--------------------------------------------------------
--  DDL for Package USR_SETT
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "DBA_DIVAS"."USR_SETT" as 

  function get_userid(p_u_name in varchar2) return varchar2;
  function get_userfirma(p_id in varchar2) return varchar2;
  function get_currency(p_id in varchar2) return varchar2;
  function get_division(p_id in varchar2) return varchar2;
  function get_kassa(p_id in varchar2) return varchar2;
  function get_mainusluga(p_id in varchar2) return varchar2;
  function get_activities(p_id in varchar2) return varchar2;

end usr_sett;

/
--------------------------------------------------------
--  DDL for Package UTILITY
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "DBA_DIVAS"."UTILITY" as 

  function  uuid	return varchar2; 
  function  md5(str in varchar2)	return varchar2;
  procedure clear_base;
  procedure  get_acc_plan_xml;
  procedure set_acc_plan;
  procedure first_start;
  procedure enable_constraint;
  procedure disable_constraint;
  function retrieve_customer_parentid return varchar2;
  function retrieve_customer_parentname return varchar2;
  procedure add_kontragent_to_call_list(p_kontrag_id in varchar2, p_compaign_id in varchar2);
  procedure rem_kontragent_from_call_list(p_kontrag_id in varchar2);
  function retrieve_division_parentid return varchar2;
  procedure change_parent_in_division(p_id in varchar2, p_parent_id in varchar2);
  procedure add_user_to_group(p_user in varchar2, p_group in varchar2);
  function retrieve_zamer_parentid return varchar2;

end utility;

/
--------------------------------------------------------
--  DDL for Package Body CURRENCY_PKG
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "DBA_DIVAS"."CURRENCY_PKG" as

function get_xmlFromUrl(p_url varchar2, p_charset varchar2 default 'UTF8') return xmltype as
  req   utl_http.req; 
  resp  utl_http.resp;
  val varchar2(32547);
  a clob;
BEGIN
  dbms_lob.createtemporary(a,true);
  dbms_lob.open(a,dbms_lob.lob_readwrite);
  req := utl_http.begin_request(p_url);
  utl_http.set_body_charset(req, p_charset);
  resp := utl_http.get_response(req);
  LOOP
    a := a||val;
    utl_http.read_text(resp, val, 5000);
  END LOOP;
  utl_http.end_response(resp);
  return xmltype(a);
EXCEPTION
  WHEN utl_http.end_of_body THEN
    utl_http.end_response(resp);
    return xmltype(a);
  WHEN others then
    utl_http.end_response(resp);
    raise;
end;

procedure getratebydate(p_code in currency.id%type, p_dat in date) as
  p_curr_rec currency%rowtype;
  p_rates reg_rates%rowtype;
  p_date_str varchar2(10);
  nominal number(10,0);
  val number (10,6);
  p_count number;
begin
  select count(*) into p_count from reg_rates 
    where curr_id=p_code and to_char(period,'dd-mm-yyyy') = to_char(p_dat,'dd-mm-yyyy');
  if p_count <> 0 then
    return;
  end if;  
  select * into p_curr_rec from currency where id=p_code;
  select to_char(p_dat,'dd')|| to_char(p_dat,'mm')|| to_char(p_dat,'yyyy') into p_date_str from dual;
  
  select to_number(t.xml.extract('//ValCurs/Valute[@id='||p_curr_rec.id_xml||']/Nominal/text()'),'9999'),
      to_number(t.xml.extract('//ValCurs/Valute[@id='||p_curr_rec.id_xml||']/Value/text()'),'9999.999999') into nominal, val
  from (select currency_pkg.get_xmlfromurl('http://pfsoft.com.ua/service/currency/?date='||p_date_str||'','CL8MSWIN1251') xml from dual) t;
  
  insert into reg_rates(curr_id,period,kurs,kratnost) values (p_code,p_dat,val,nominal);
  
  EXCEPTION 
        when others then 
        RAISE_APPLICATION_ERROR (-20001,'Error getting rates! '||SQLERRM, TRUE) ;
end;

function get_lastsectionrates(p_code in currency.id%type, p_dat in date) return varchar2 as
res varchar2(50);
begin
  select id into res from reg_rates where period = (select max(period) from reg_rates where curr_id=p_code
                                          and period<=p_dat) and curr_id=p_code
  and rownum = 1;
  
  return res;
end;

procedure getratebyshedule as
p_date_str varchar2(50);
p_date date;
begin
  p_date_str:=to_char(sysdate,'dd-mm-yyyy');
  p_date:=to_date(p_date_str,'DD-MM-YYYY');
  for i in (select * from ex_rates_settings)
  loop
    getratebydate(i.curr_id, p_date);
  end loop;
end;

function calculate_from_curr_to_curr(p_curr_from in currency.id%type,
            p_curr_to in currency.id%type,
            p_dat in date,
            p_summ number) return number as
res number(10,2);
p_rate_from number;
p_rate_to number;
begin
    select kurs/kratnost into p_rate_from from reg_rates where id = get_lastsectionrates(p_curr_from,p_dat); 
    select kurs/kratnost into p_rate_to from reg_rates where id = get_lastsectionrates(p_curr_to,p_dat);
    res:=p_summ*p_rate_from/p_rate_to;
    return res;
end;

end currency_pkg;

/
--------------------------------------------------------
--  DDL for Package Body ENTRY
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "DBA_DIVAS"."ENTRY" as

  --p_type 1 или 0; 1-сумма дебетуется, 0-сумма кредитуется
  function sign_of_summ(p_acc in plan_acc.id%type, p_summ in number, p_type in number) return number as
  p_out_summ number(10,2);
  p_acc_type enum_account_type.fullname%type;
  begin
    p_out_summ:=p_summ;
    select trim(fullname) into p_acc_type from enum_account_type
      where id=(select acc_type from plan_acc where id = p_acc);
    if (upper(p_acc_type)=upper('Активный')) then
      if (p_type=1) then
        p_out_summ:=p_summ;
      else
        p_out_summ:=-p_summ;
      end if;
    end if;      
    if (upper(p_acc_type)=upper('Пассивный')) then 
      if (p_type=1) then
        p_out_summ:=-p_summ;
      else
        p_out_summ:=p_summ;
      end if;
    end if; 
    return p_out_summ;
  end sign_of_summ;

end entry;

/
--------------------------------------------------------
--  DDL for Package Body FTP
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "DBA_DIVAS"."FTP" AS
-- --------------------------------------------------------------------------
-- Name         : http://www.oracle-base.com/dba/miscellaneous/ftp.pkb
-- Author       : DR Timothy S Hall
-- Description  : Basic FTP API. For usage notes see:
--                  http://www.oracle-base.com/articles/misc/ftp-from-plsql.php
-- Requirements : http://www.oracle-base.com/dba/miscellaneous/ftp.pks
-- Ammedments   :
--   When         Who       What
--   ===========  ========  =================================================
--   14-AUG-2003  Tim Hall  Initial Creation
--   10-MAR-2004  Tim Hall  Add convert_crlf procedure.
--                          Incorporate CRLF conversion functionality into
--                          put_local_ascii_data and put_remote_ascii_data
--                          functions.
--                          Make get_passive function visible.
--                          Added get_direct and put_direct procedures.
--   23-DEC-2004  Tim Hall  The get_reply procedure was altered to deal with
--                          banners starting with 4 white spaces. This fix is
--                          a small variation on the resolution provided by
--                          Gary Mason who spotted the bug.
--   10-NOV-2005  Tim Hall  Addition of get_reply after doing a transfer to
--                          pickup the 226 Transfer complete message. This
--                          allows gets and puts with a single connection.
--                          Issue spotted by Trevor Woolnough.
--   03-OCT-2006  Tim Hall  Add list, rename, delete, mkdir, rmdir procedures.
--   12-JAN-2007  Tim Hall  A final call to get_reply was added to the get_remote%
--                          procedures to allow multiple transfers per connection.
--   15-Jan-2008  Tim Hall  login: Include timeout parameter (suggested by Dmitry Bogomolov).
--   21-Jan-2008  Tim Hall  put_%: "l_pos < l_clob_len" to "l_pos <= l_clob_len" to prevent
--                          potential loss of one character for single-byte files or files
--                          sized 1 byte bigger than a number divisible by the buffer size
--                          (spotted by Michael Surikov).
--   23-Jan-2008  Tim Hall  send_command: Possible solution for ORA-29260 errors included,
--                          but commented out (suggested by Kevin Phillips).
--   12-Feb-2008  Tim Hall  put_local_binary_data and put_direct: Open file with "wb" for
--                          binary writes (spotted by Dwayne Hoban).
--   03-Mar-2008  Tim Hall  list: get_reply call and close of passive connection added
--                          (suggested by Julian, Bavaria).
--   12-Jun-2008  Tim Hall  A final call to get_reply was added to the put_remote%
--                          procedures, but commented out. If uncommented, it may cause the
--                          operation to hang, but it has been reported (morgul) to allow
--                          multiple transfers per connection.
--                          get_reply: Moved to pakage specification.
--   24-Jun-2008  Tim Hall  get_remote% and put_remote%: Exception handler added to close the passive
--                          connection and reraise the error (suggested by Mark Reichman).
--   22-Apr-2009  Tim Hall  get_remote_ascii_data: Remove unnecessary logout (suggested by John Duncan).
--                          get_reply and list: Handle 400 messages as well as 500 messages (suggested by John Duncan).
--                          logout: Added a call to UTL_TCP.close_connection, so not necessary to close
--                          any connections manually (suggested by Victor Munoz).
--                          get_local_*_data: Check for zero length files to prevent exception (suggested by Daniel)
--                          nlst: Added to return list of file names only (suggested by Julian and John Duncan)
--   05-Apr-2011  Tim Hall  put_remote_ascii_data: Added comment on definition of l_amount. Switch to 10000 if you get
--                          ORA-06502 from this line. May give you unexpected result due to conversion. Better to use binary.
-- --------------------------------------------------------------------------

g_reply         t_string_table := t_string_table();
g_binary        BOOLEAN := TRUE;
g_debug         BOOLEAN := TRUE;
g_convert_crlf  BOOLEAN := TRUE;

PROCEDURE debug (p_text  IN  VARCHAR2);

-- --------------------------------------------------------------------------
FUNCTION login (p_host    IN  VARCHAR2,
                p_port    IN  VARCHAR2,
                p_user    IN  VARCHAR2,
                p_pass    IN  VARCHAR2,
                p_timeout IN  NUMBER := NULL)
  RETURN UTL_TCP.connection IS
-- --------------------------------------------------------------------------
  l_conn  UTL_TCP.connection;
BEGIN
  g_reply.delete;

  l_conn := UTL_TCP.open_connection(p_host, p_port, tx_timeout => p_timeout);
  get_reply (l_conn);
  send_command(l_conn, 'USER ' || p_user);
  send_command(l_conn, 'PASS ' || p_pass);
  RETURN l_conn;
END;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
FUNCTION get_passive (p_conn  IN OUT NOCOPY  UTL_TCP.connection)
  RETURN UTL_TCP.connection IS
-- --------------------------------------------------------------------------
  l_conn    UTL_TCP.connection;
  l_reply   VARCHAR2(32767);
  l_host    VARCHAR(100);
  l_port1   NUMBER(10);
  l_port2   NUMBER(10);
BEGIN
  send_command(p_conn, 'PASV');
  l_reply := g_reply(g_reply.last);

  l_reply := REPLACE(SUBSTR(l_reply, INSTR(l_reply, '(') + 1, (INSTR(l_reply, ')')) - (INSTR(l_reply, '('))-1), ',', '.');
  l_host  := SUBSTR(l_reply, 1, INSTR(l_reply, '.', 1, 4)-1);

  l_port1 := TO_NUMBER(SUBSTR(l_reply, INSTR(l_reply, '.', 1, 4)+1, (INSTR(l_reply, '.', 1, 5)-1) - (INSTR(l_reply, '.', 1, 4))));
  l_port2 := TO_NUMBER(SUBSTR(l_reply, INSTR(l_reply, '.', 1, 5)+1));

  l_conn := utl_tcp.open_connection(l_host, 256 * l_port1 + l_port2);
  return l_conn;
END;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
PROCEDURE logout(p_conn   IN OUT NOCOPY  UTL_TCP.connection,
                 p_reply  IN             BOOLEAN := TRUE) AS
-- --------------------------------------------------------------------------
BEGIN
  send_command(p_conn, 'QUIT', p_reply);
  UTL_TCP.close_connection(p_conn);
END;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
PROCEDURE send_command (p_conn     IN OUT NOCOPY  UTL_TCP.connection,
                        p_command  IN             VARCHAR2,
                        p_reply    IN             BOOLEAN := TRUE) IS
-- --------------------------------------------------------------------------
  l_result  PLS_INTEGER;
BEGIN
  l_result := UTL_TCP.write_line(p_conn, p_command);
  -- If you get ORA-29260 after the PASV call, replace the above line with the following line.
  -- l_result := UTL_TCP.write_text(p_conn, p_command || utl_tcp.crlf, length(p_command || utl_tcp.crlf));

  IF p_reply THEN
    get_reply(p_conn);
  END IF;
END;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
PROCEDURE get_reply (p_conn  IN OUT NOCOPY  UTL_TCP.connection) IS
-- --------------------------------------------------------------------------
  l_reply_code  VARCHAR2(3) := NULL;
BEGIN
  LOOP
    g_reply.extend;
    g_reply(g_reply.last) := UTL_TCP.get_line(p_conn, TRUE);
    debug(g_reply(g_reply.last));
    IF l_reply_code IS NULL THEN
      l_reply_code := SUBSTR(g_reply(g_reply.last), 1, 3);
    END IF;
    IF SUBSTR(l_reply_code, 1, 1) IN ('4', '5') THEN
      RAISE_APPLICATION_ERROR(-20000, g_reply(g_reply.last));
    ELSIF (SUBSTR(g_reply(g_reply.last), 1, 3) = l_reply_code AND
           SUBSTR(g_reply(g_reply.last), 4, 1) = ' ') THEN
      EXIT;
    END IF;
  END LOOP;
EXCEPTION
  WHEN UTL_TCP.END_OF_INPUT THEN
    NULL;
END;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
FUNCTION get_local_ascii_data (p_dir   IN  VARCHAR2,
                               p_file  IN  VARCHAR2)
  RETURN CLOB IS
-- --------------------------------------------------------------------------
  l_bfile   BFILE;
  l_data    CLOB;
BEGIN
  DBMS_LOB.createtemporary (lob_loc => l_data,
                            cache   => TRUE,
                            dur     => DBMS_LOB.call);

  l_bfile := BFILENAME(p_dir, p_file);
  DBMS_LOB.fileopen(l_bfile, DBMS_LOB.file_readonly);

  IF DBMS_LOB.getlength(l_bfile) > 0 THEN
    DBMS_LOB.loadfromfile(l_data, l_bfile, DBMS_LOB.getlength(l_bfile));
  END IF;

  DBMS_LOB.fileclose(l_bfile);

  RETURN l_data;
END;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
FUNCTION get_local_binary_data (p_dir   IN  VARCHAR2,
                                p_file  IN  VARCHAR2)
  RETURN BLOB IS
-- --------------------------------------------------------------------------
  l_bfile   BFILE;
  l_data    BLOB;
BEGIN
  DBMS_LOB.createtemporary (lob_loc => l_data,
                            cache   => TRUE,
                            dur     => DBMS_LOB.call);

  l_bfile := BFILENAME(p_dir, p_file);
  DBMS_LOB.fileopen(l_bfile, DBMS_LOB.file_readonly);
  IF DBMS_LOB.getlength(l_bfile) > 0 THEN
    DBMS_LOB.loadfromfile(l_data, l_bfile, DBMS_LOB.getlength(l_bfile));
  END IF;
  DBMS_LOB.fileclose(l_bfile);

  RETURN l_data;
END;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
FUNCTION get_remote_ascii_data (p_conn  IN OUT NOCOPY  UTL_TCP.connection,
                                p_file  IN             VARCHAR2)
  RETURN CLOB IS
-- --------------------------------------------------------------------------
  l_conn    UTL_TCP.connection;
  l_amount  PLS_INTEGER;
  l_buffer  VARCHAR2(32767);
  l_data    CLOB;
BEGIN
  DBMS_LOB.createtemporary (lob_loc => l_data,
                            cache   => TRUE,
                            dur     => DBMS_LOB.call);

  l_conn := get_passive(p_conn);
  send_command(p_conn, 'RETR ' || p_file, TRUE);
  --logout(l_conn, FALSE);

  BEGIN
    LOOP
      l_amount := UTL_TCP.read_text (l_conn, l_buffer, 32767);
      DBMS_LOB.writeappend(l_data, l_amount, l_buffer);
    END LOOP;
  EXCEPTION
    WHEN UTL_TCP.END_OF_INPUT THEN
      NULL;
    WHEN OTHERS THEN
      NULL;
  END;
  UTL_TCP.close_connection(l_conn);
  get_reply(p_conn);

  RETURN l_data;

EXCEPTION
  WHEN OTHERS THEN
    UTL_TCP.close_connection(l_conn);
    RAISE;
END;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
FUNCTION get_remote_binary_data (p_conn  IN OUT NOCOPY  UTL_TCP.connection,
                                 p_file  IN             VARCHAR2)
  RETURN BLOB IS
-- --------------------------------------------------------------------------
  l_conn    UTL_TCP.connection;
  l_amount  PLS_INTEGER;
  l_buffer  RAW(32767);
  l_data    BLOB;
BEGIN
  DBMS_LOB.createtemporary (lob_loc => l_data,
                            cache   => TRUE,
                            dur     => DBMS_LOB.call);

  l_conn := get_passive(p_conn);
  send_command(p_conn, 'RETR ' || p_file, TRUE);

  BEGIN
    LOOP
      l_amount := UTL_TCP.read_raw (l_conn, l_buffer, 32767);
      DBMS_LOB.writeappend(l_data, l_amount, l_buffer);
    END LOOP;
  EXCEPTION
    WHEN UTL_TCP.END_OF_INPUT THEN
      NULL;
    WHEN OTHERS THEN
      NULL;
  END;
  UTL_TCP.close_connection(l_conn);
  get_reply(p_conn);

  RETURN l_data;

EXCEPTION
  WHEN OTHERS THEN
    UTL_TCP.close_connection(l_conn);
    RAISE;
END;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
PROCEDURE put_local_ascii_data (p_data  IN  CLOB,
                                p_dir   IN  VARCHAR2,
                                p_file  IN  VARCHAR2) IS
-- --------------------------------------------------------------------------
  l_out_file  UTL_FILE.file_type;
  l_buffer    VARCHAR2(32767);
  l_amount    BINARY_INTEGER := 32767;
  l_pos       INTEGER := 1;
  l_clob_len  INTEGER;
BEGIN
  l_clob_len := DBMS_LOB.getlength(p_data);

  l_out_file := UTL_FILE.fopen(p_dir, p_file, 'w', 32767);

  WHILE l_pos <= l_clob_len LOOP
    DBMS_LOB.read (p_data, l_amount, l_pos, l_buffer);
    IF g_convert_crlf THEN
      l_buffer := REPLACE(l_buffer, CHR(13), NULL);
    END IF;

    UTL_FILE.put(l_out_file, l_buffer);
    UTL_FILE.fflush(l_out_file);
    l_pos := l_pos + l_amount;
  END LOOP;

  UTL_FILE.fclose(l_out_file);
EXCEPTION
  WHEN OTHERS THEN
    IF UTL_FILE.is_open(l_out_file) THEN
      UTL_FILE.fclose(l_out_file);
    END IF;
    RAISE;
END;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
PROCEDURE put_local_binary_data (p_data  IN  BLOB,
                                 p_dir   IN  VARCHAR2,
                                 p_file  IN  VARCHAR2) IS
-- --------------------------------------------------------------------------
  l_out_file  UTL_FILE.file_type;
  l_buffer    RAW(32767);
  l_amount    BINARY_INTEGER := 32767;
  l_pos       INTEGER := 1;
  l_blob_len  INTEGER;
BEGIN
  l_blob_len := DBMS_LOB.getlength(p_data);

  l_out_file := UTL_FILE.fopen(p_dir, p_file, 'wb', 32767);

  WHILE l_pos <= l_blob_len LOOP
    DBMS_LOB.read (p_data, l_amount, l_pos, l_buffer);
    UTL_FILE.put_raw(l_out_file, l_buffer, TRUE);
    UTL_FILE.fflush(l_out_file);
    l_pos := l_pos + l_amount;
  END LOOP;

  UTL_FILE.fclose(l_out_file);
EXCEPTION
  WHEN OTHERS THEN
    IF UTL_FILE.is_open(l_out_file) THEN
      UTL_FILE.fclose(l_out_file);
    END IF;
    RAISE;
END;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
PROCEDURE put_remote_ascii_data (p_conn  IN OUT NOCOPY  UTL_TCP.connection,
                                 p_file  IN             VARCHAR2,
                                 p_data  IN             CLOB) IS
-- --------------------------------------------------------------------------
  l_conn      UTL_TCP.connection;
  l_result    PLS_INTEGER;
  l_buffer    VARCHAR2(32767);
  l_amount    BINARY_INTEGER := 32767; -- Switch to 10000 (or use binary) if you get ORA-06502 from this line.
  l_pos       INTEGER := 1;
  l_clob_len  INTEGER;
BEGIN
  l_conn := get_passive(p_conn);
  send_command(p_conn, 'STOR ' || p_file, TRUE);

  l_clob_len := DBMS_LOB.getlength(p_data);

  WHILE l_pos <= l_clob_len LOOP
    DBMS_LOB.READ (p_data, l_amount, l_pos, l_buffer);
    IF g_convert_crlf THEN
      l_buffer := REPLACE(l_buffer, CHR(13), NULL);
    END IF;
    l_result := UTL_TCP.write_text(l_conn, l_buffer, LENGTH(l_buffer));
    UTL_TCP.flush(l_conn);
    l_pos := l_pos + l_amount;
  END LOOP;

  UTL_TCP.close_connection(l_conn);
  -- The following line allows some people to make multiple calls from one connection.
  -- It causes the operation to hang for me, hence it is commented out by default.
  -- get_reply(p_conn);

EXCEPTION
  WHEN OTHERS THEN
    UTL_TCP.close_connection(l_conn);
    RAISE;
END;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
PROCEDURE put_remote_binary_data (p_conn  IN OUT NOCOPY  UTL_TCP.connection,
                                  p_file  IN             VARCHAR2,
                                  p_data  IN             BLOB) IS
-- --------------------------------------------------------------------------
  l_conn      UTL_TCP.connection;
  l_result    PLS_INTEGER;
  l_buffer    RAW(32767);
  l_amount    BINARY_INTEGER := 32767;
  l_pos       INTEGER := 1;
  l_blob_len  INTEGER;
BEGIN
  l_conn := get_passive(p_conn);
  send_command(p_conn, 'STOR ' || p_file, TRUE);

  l_blob_len := DBMS_LOB.getlength(p_data);

  WHILE l_pos <= l_blob_len LOOP
    DBMS_LOB.READ (p_data, l_amount, l_pos, l_buffer);
    l_result := UTL_TCP.write_raw(l_conn, l_buffer, l_amount);
    UTL_TCP.flush(l_conn);
    l_pos := l_pos + l_amount;
  END LOOP;

  UTL_TCP.close_connection(l_conn);
  -- The following line allows some people to make multiple calls from one connection.
  -- It causes the operation to hang for me, hence it is commented out by default.
  -- get_reply(p_conn);

EXCEPTION
  WHEN OTHERS THEN
    UTL_TCP.close_connection(l_conn);
    RAISE;
END;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
PROCEDURE get (p_conn       IN OUT NOCOPY  UTL_TCP.connection,
               p_from_file  IN             VARCHAR2,
               p_to_dir     IN             VARCHAR2,
               p_to_file    IN             VARCHAR2) AS
-- --------------------------------------------------------------------------
BEGIN
  IF g_binary THEN
    put_local_binary_data(p_data  => get_remote_binary_data (p_conn, p_from_file),
                          p_dir   => p_to_dir,
                          p_file  => p_to_file);
  ELSE
    put_local_ascii_data(p_data  => get_remote_ascii_data (p_conn, p_from_file),
                         p_dir   => p_to_dir,
                         p_file  => p_to_file);
  END IF;
END;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
PROCEDURE put (p_conn       IN OUT NOCOPY  UTL_TCP.connection,
               p_from_dir   IN             VARCHAR2,
               p_from_file  IN             VARCHAR2,
               p_to_file    IN             VARCHAR2) AS
-- --------------------------------------------------------------------------
BEGIN
  IF g_binary THEN
    put_remote_binary_data(p_conn => p_conn,
                           p_file => p_to_file,
                           p_data => get_local_binary_data(p_from_dir, p_from_file));
  ELSE
    put_remote_ascii_data(p_conn => p_conn,
                          p_file => p_to_file,
                          p_data => get_local_ascii_data(p_from_dir, p_from_file));
  END IF;
  get_reply(p_conn);
END;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
PROCEDURE get_direct (p_conn       IN OUT NOCOPY  UTL_TCP.connection,
                      p_from_file  IN             VARCHAR2,
                      p_to_dir     IN             VARCHAR2,
                      p_to_file    IN             VARCHAR2) IS
-- --------------------------------------------------------------------------
  l_conn        UTL_TCP.connection;
  l_out_file    UTL_FILE.file_type;
  l_amount      PLS_INTEGER;
  l_buffer      VARCHAR2(32767);
  l_raw_buffer  RAW(32767);
BEGIN
  l_conn := get_passive(p_conn);
  send_command(p_conn, 'RETR ' || p_from_file, TRUE);
  IF g_binary THEN
    l_out_file := UTL_FILE.fopen(p_to_dir, p_to_file, 'wb', 32767);
  ELSE
    l_out_file := UTL_FILE.fopen(p_to_dir, p_to_file, 'w', 32767);
  END IF;

  BEGIN
    LOOP
      IF g_binary THEN
        l_amount := UTL_TCP.read_raw (l_conn, l_raw_buffer, 32767);
        UTL_FILE.put_raw(l_out_file, l_raw_buffer, TRUE);
      ELSE
        l_amount := UTL_TCP.read_text (l_conn, l_buffer, 32767);
        IF g_convert_crlf THEN
          l_buffer := REPLACE(l_buffer, CHR(13), NULL);
        END IF;
        UTL_FILE.put(l_out_file, l_buffer);
      END IF;
      UTL_FILE.fflush(l_out_file);
    END LOOP;
  EXCEPTION
    WHEN UTL_TCP.END_OF_INPUT THEN
      NULL;
    WHEN OTHERS THEN
      NULL;
  END;
  UTL_FILE.fclose(l_out_file);
  UTL_TCP.close_connection(l_conn);
EXCEPTION
  WHEN OTHERS THEN
    IF UTL_FILE.is_open(l_out_file) THEN
      UTL_FILE.fclose(l_out_file);
    END IF;
    RAISE;
END;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
PROCEDURE put_direct (p_conn       IN OUT NOCOPY  UTL_TCP.connection,
                      p_from_dir   IN             VARCHAR2,
                      p_from_file  IN             VARCHAR2,
                      p_to_file    IN             VARCHAR2) IS
-- --------------------------------------------------------------------------
  l_conn        UTL_TCP.connection;
  l_bfile       BFILE;
  l_result      PLS_INTEGER;
  l_amount      PLS_INTEGER := 32767;
  l_raw_buffer  RAW(32767);
  l_len         NUMBER;
  l_pos         NUMBER := 1;
  ex_ascii      EXCEPTION;
BEGIN
  IF NOT g_binary THEN
    RAISE ex_ascii;
  END IF;

  l_conn := get_passive(p_conn);
  send_command(p_conn, 'STOR ' || p_to_file, TRUE);

  l_bfile := BFILENAME(p_from_dir, p_from_file);

  DBMS_LOB.fileopen(l_bfile, DBMS_LOB.file_readonly);
  l_len := DBMS_LOB.getlength(l_bfile);

  WHILE l_pos <= l_len LOOP
    DBMS_LOB.READ (l_bfile, l_amount, l_pos, l_raw_buffer);
    debug(l_amount);
    l_result := UTL_TCP.write_raw(l_conn, l_raw_buffer, l_amount);
    l_pos := l_pos + l_amount;
  END LOOP;

  DBMS_LOB.fileclose(l_bfile);
  UTL_TCP.close_connection(l_conn);
EXCEPTION
  WHEN ex_ascii THEN
    RAISE_APPLICATION_ERROR(-20000, 'PUT_DIRECT not available in ASCII mode.');
  WHEN OTHERS THEN
    IF DBMS_LOB.fileisopen(l_bfile) = 1 THEN
      DBMS_LOB.fileclose(l_bfile);
    END IF;
    RAISE;
END;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
PROCEDURE help (p_conn  IN OUT NOCOPY  UTL_TCP.connection) AS
-- --------------------------------------------------------------------------
BEGIN
  send_command(p_conn, 'HELP', TRUE);
END;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
PROCEDURE ascii (p_conn  IN OUT NOCOPY  UTL_TCP.connection) AS
-- --------------------------------------------------------------------------
BEGIN
  send_command(p_conn, 'TYPE A', TRUE);
  g_binary := FALSE;
END;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
PROCEDURE binary (p_conn  IN OUT NOCOPY  UTL_TCP.connection) AS
-- --------------------------------------------------------------------------
BEGIN
  send_command(p_conn, 'TYPE I', TRUE);
  g_binary := TRUE;
END;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
PROCEDURE list (p_conn  IN OUT NOCOPY  UTL_TCP.connection,
                p_dir   IN             VARCHAR2,
                p_list  OUT            t_string_table) AS
-- --------------------------------------------------------------------------
  l_conn        UTL_TCP.connection;
  l_list        t_string_table := t_string_table();
  l_reply_code  VARCHAR2(3) := NULL;
BEGIN
  l_conn := get_passive(p_conn);
  send_command(p_conn, 'LIST ' || p_dir, TRUE);

  BEGIN
    LOOP
      l_list.extend;
      l_list(l_list.last) := UTL_TCP.get_line(l_conn, TRUE);
      debug(l_list(l_list.last));
      IF l_reply_code IS NULL THEN
        l_reply_code := SUBSTR(l_list(l_list.last), 1, 3);
      END IF;
      IF SUBSTR(l_reply_code, 1, 1) IN ('4', '5') THEN
        RAISE_APPLICATION_ERROR(-20000, l_list(l_list.last));
      ELSIF (SUBSTR(g_reply(g_reply.last), 1, 3) = l_reply_code AND
             SUBSTR(g_reply(g_reply.last), 4, 1) = ' ') THEN
        EXIT;
      END IF;
    END LOOP;
  EXCEPTION
    WHEN UTL_TCP.END_OF_INPUT THEN
      NULL;
  END;

  l_list.delete(l_list.last);
  p_list := l_list;

  utl_tcp.close_connection(l_conn);
  get_reply (p_conn);
END;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
PROCEDURE nlst (p_conn  IN OUT NOCOPY  UTL_TCP.connection,
                p_dir   IN             VARCHAR2,
                 p_list  OUT            t_string_table) AS
-- --------------------------------------------------------------------------
  l_conn        UTL_TCP.connection;
  l_list        t_string_table := t_string_table();
  l_reply_code  VARCHAR2(3) := NULL;
BEGIN
  l_conn := get_passive(p_conn);
  send_command(p_conn, 'NLST ' || p_dir, TRUE);

  BEGIN
    LOOP
      l_list.extend;
      l_list(l_list.last) := UTL_TCP.get_line(l_conn, TRUE);
      debug(l_list(l_list.last));
      IF l_reply_code IS NULL THEN
        l_reply_code := SUBSTR(l_list(l_list.last), 1, 3);
      END IF;
      IF SUBSTR(l_reply_code, 1, 1) IN ('4', '5') THEN
        RAISE_APPLICATION_ERROR(-20000, l_list(l_list.last));
      ELSIF (SUBSTR(g_reply(g_reply.last), 1, 3) = l_reply_code AND
             SUBSTR(g_reply(g_reply.last), 4, 1) = ' ') THEN
        EXIT;
      END IF;
    END LOOP;
  EXCEPTION
    WHEN UTL_TCP.END_OF_INPUT THEN
      NULL;
  END;

  l_list.delete(l_list.last);
  p_list := l_list;

  utl_tcp.close_connection(l_conn);
  get_reply (p_conn);
END;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
PROCEDURE rename (p_conn  IN OUT NOCOPY  UTL_TCP.connection,
                  p_from  IN             VARCHAR2,
                  p_to    IN             VARCHAR2) AS
-- --------------------------------------------------------------------------
  l_conn  UTL_TCP.connection;
BEGIN
  l_conn := get_passive(p_conn);
  send_command(p_conn, 'RNFR ' || p_from, TRUE);
  send_command(p_conn, 'RNTO ' || p_to, TRUE);
  logout(l_conn, FALSE);
END rename;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
PROCEDURE delete (p_conn  IN OUT NOCOPY  UTL_TCP.connection,
                  p_file  IN             VARCHAR2) AS
-- --------------------------------------------------------------------------
  l_conn  UTL_TCP.connection;
BEGIN
  l_conn := get_passive(p_conn);
  send_command(p_conn, 'DELE ' || p_file, TRUE);
  logout(l_conn, FALSE);
END delete;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
PROCEDURE mkdir (p_conn  IN OUT NOCOPY  UTL_TCP.connection,
                 p_dir   IN             VARCHAR2) AS
-- --------------------------------------------------------------------------
  l_conn  UTL_TCP.connection;
BEGIN
  l_conn := get_passive(p_conn);
  send_command(p_conn, 'MKD ' || p_dir, TRUE);
  logout(l_conn, FALSE);
END mkdir;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
PROCEDURE rmdir (p_conn  IN OUT NOCOPY  UTL_TCP.connection,
                 p_dir   IN             VARCHAR2) AS
-- --------------------------------------------------------------------------
  l_conn  UTL_TCP.connection;
BEGIN
  l_conn := get_passive(p_conn);
  send_command(p_conn, 'RMD ' || p_dir, TRUE);
  logout(l_conn, FALSE);
END rmdir;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
PROCEDURE convert_crlf (p_status  IN  BOOLEAN) AS
-- --------------------------------------------------------------------------
BEGIN
  g_convert_crlf := p_status;
END;
-- --------------------------------------------------------------------------



-- --------------------------------------------------------------------------
PROCEDURE debug (p_text  IN  VARCHAR2) IS
-- --------------------------------------------------------------------------
BEGIN
  IF g_debug THEN
    DBMS_OUTPUT.put_line(SUBSTR(p_text, 1, 255));
  END IF;
END;
-- --------------------------------------------------------------------------

END ftp;

/
--------------------------------------------------------
--  DDL for Package Body KONTRAG
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "DBA_DIVAS"."KONTRAG" AS

  procedure create_kontrag(p_parent kontragents.parent_id%type, p_fullname kontragents.fullname%type, p_namefull kontragents.namefull%type,
                            p_okpo kontragents.okpo%type, p_inn kontragents.inn%type) AS
  p_kont_rec kontragents%rowtype;                          
  BEGIN
    p_kont_rec.parent_id:=p_parent;
    p_kont_rec.fullname:=p_fullname;
    p_kont_rec.namefull:=p_namefull;
    p_kont_rec.okpo:=p_okpo;
    p_kont_rec.inn:=p_inn;
    p_kont_rec.is_group:=0;
    p_kont_rec.deleted:=0;
    p_kont_rec.ur_fiz:=0;
    p_kont_rec.predefined:=0;
    p_kont_rec.version:=systimestamp;
    insert into kontragents values p_kont_rec;
    
    exception
        when others then 
        raise;
  END create_kontrag;

END KONTRAG;

/
--------------------------------------------------------
--  DDL for Package Body P_ENCRYPT
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "DBA_DIVAS"."P_ENCRYPT" 
AS
--DO NOT FORGET TO WRAP THIS BEFORE LOADING INTO DATABASE
--IF IT IS NOT WRAPPED, THE KEY WILL BE EXPOSED
--THE WRAP UTILITY IS LOCATED IN THE \BIN DIRECTORY (WRAP.EXE)
  G_DATE TIMESTAMP;
  G_CHARACTER_SET VARCHAR2(10) := 'AL32UTF8';
  G_STRING VARCHAR2(16);
  G_KEY RAW(250);
  G_ENCRYPTION_TYPE PLS_INTEGER := dbms_crypto.encrypt_aes128 
                                    + dbms_crypto.chain_cbc 
                                    + dbms_crypto.pad_pkcs5;
  
  PROCEDURE setg_date(p_dat timestamp) IS
  BEGIN
    G_DATE:=p_dat;
    G_STRING:= rtrim(TO_CHAR(G_DATE,'DDMMYYYYHH24miSS')||'70');
    G_KEY:= utl_i18n.string_to_raw
                      ( data => G_STRING,
                        dst_charset => G_CHARACTER_SET );
  END setg_date;
  
  FUNCTION encrypt_ssn( p_ssn IN VARCHAR2, p_key IN VARCHAR2 ) RETURN RAW
  IS
    l_ssn RAW(64) := UTL_I18N.STRING_TO_RAW( p_ssn, G_CHARACTER_SET );
    l_encrypted RAW(64);
  BEGIN
    setg_date(to_timestamp(p_key,'DD/MM/YYYY HH24:MI:SS'));
    l_ssn := utl_i18n.string_to_raw
              ( data => p_ssn,
                dst_charset => G_CHARACTER_SET );

    l_encrypted := dbms_crypto.encrypt
                   ( src => l_ssn,
                     typ => G_ENCRYPTION_TYPE,
                     key => G_KEY );
                     
    RETURN l_encrypted;
  END encrypt_ssn;
  
  FUNCTION decrypt_ssn( p_ssn IN RAW, p_key IN VARCHAR2 ) RETURN VARCHAR2
  IS
    l_decrypted RAW(64);
    l_decrypted_string VARCHAR2(64);
  BEGIN
    setg_date(to_date(p_key,'DD/MM/YYYY'));
    l_decrypted := dbms_crypto.decrypt
                    ( src => p_ssn,
                      typ => G_ENCRYPTION_TYPE,
                      key => G_KEY );

    l_decrypted_string := utl_i18n.raw_to_char
                            ( data => l_decrypted,
                              src_charset => G_CHARACTER_SET );
    RETURN l_decrypted_string;
  END decrypt_ssn;
  
END p_encrypt;

/
--------------------------------------------------------
--  DDL for Package Body USR_SETT
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "DBA_DIVAS"."USR_SETT" as

  function get_userid(p_u_name in varchar2) return varchar2 as
  p_id varchar2(60);
  begin
    select id into p_id from users where upper(trim(login)) = upper(trim(p_u_name));
    return p_id;
    
    exception
        when no_data_found then 
        return '00000000-0000-0000-0000-000000000000';
  end get_userid;
  
  function get_userfirma(p_id in varchar2) return varchar2 as
  p_ret varchar2(60);
  begin
    select firma_id into p_ret from user_settings where user_id = p_id;
    return p_ret;
    
    exception
        when no_data_found then 
        return '00000000-0000-0000-0000-000000000000';
  end get_userfirma;
  
  function get_currency(p_id in varchar2) return varchar2 as
  p_ret varchar2(60);
  begin
    select currency_id into p_ret from user_settings where user_id = p_id;
    return p_ret;
    
    exception
        when no_data_found then 
        return '00000000-0000-0000-0000-000000000000';
  end get_currency;
  
  function get_division(p_id in varchar2) return varchar2 as
  p_ret varchar2(60);
  begin
    select division_id into p_ret from user_settings where user_id = p_id;
    return p_ret;
    
    exception
        when no_data_found then 
        return '00000000-0000-0000-0000-000000000000';
  end get_division;
  
  function get_kassa(p_id in varchar2) return varchar2 as
  p_ret varchar2(60);
  begin
    select kassa_id into p_ret from user_settings where user_id = p_id;
    return p_ret;
    
    exception
        when no_data_found then 
        return '00000000-0000-0000-0000-000000000000';
  end get_kassa;
  
  function get_mainusluga(p_id in varchar2) return varchar2 as
  p_ret varchar2(60);
  begin
    select main_usluga into p_ret from user_settings where user_id = p_id;
    return p_ret;
    
    exception
        when no_data_found then 
        return '00000000-0000-0000-0000-000000000000';
  end get_mainusluga;
  
  function get_activities(p_id in varchar2) return varchar2 as
  p_ret varchar2(60);
  begin
    select activities_id into p_ret from user_settings where user_id = p_id;
    return p_ret;
    
    exception
        when no_data_found then 
        return '00000000-0000-0000-0000-000000000000';
  end get_activities;

end usr_sett;

/
--------------------------------------------------------
--  DDL for Package Body UTILITY
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "DBA_DIVAS"."UTILITY" as

  function  uuid	return varchar2 as
  LANGUAGE JAVA
    NAME 'RandomUUID.create() return java.lang.String';
  --end uuid;
  
  FUNCTION              md5(str IN VARCHAR2)
	RETURN VARCHAR2
	as v_checksum VARCHAR2(36);
 
	BEGIN
		v_checksum := LOWER( RAWTOHEX( UTL_RAW.CAST_TO_RAW( sys.dbms_obfuscation_toolkit.md5(input_string => str) ) ) );
		RETURN v_checksum;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
			NULL;
		when others then
			-- Consider logging the error and then re-raise
			raise;
	end md5;
  
  procedure clear_base as --Очистка базы
  begin
    
    for c1 in (select y.table_name, y.constraint_name from user_constraints y, user_tables x where x.table_name = y.table_name) loop
    begin
        execute immediate  ('alter table '||c1.table_name||' disable constraint '||c1.constraint_name||' cascade');
    end;
    end loop;

    for t1 in (select table_name from user_tables) loop
    begin
        execute immediate ('truncate table '||t1.table_name);
    end;
    end loop;

    for c2 in (select y.table_name, y.constraint_name from user_constraints y, user_tables x where x.table_name = y.table_name) loop
    begin
        execute immediate ('alter table '||c2.table_name||' enable constraint '||c2.constraint_name);
    end;
    end loop;
    
    EXCEPTION
    WHEN OTHERS THEN
			-- Consider logging the error and then re-raise
			RAISE;
  end; 
  
  procedure  get_acc_plan_xml as
  host varchar2(100 char) :='bmexp.com';
  port varchar2(2 char) :=21;
  user_f varchar2(100 char) :='toftpconnect';
  pass varchar2(100 char) :='vjqangghjcnjzlkjdsqcwerj';
  l_conn  UTL_TCP.connection;
  clobdata clob;
  count_xml number;
  begin
    select count(*) into count_xml from XML_T;
    l_conn := ftp.login(host, port, user_f, pass, 60);
    ftp.ascii(p_conn => l_conn);
    clobdata:=ftp.get_remote_ascii_data(p_conn      => l_conn,
          p_file => '/acc_plan/acc_plan_bud.xml');
    if CLOBDATA is not null then
    if count_xml = 0 then
      insert into XML_T (ONE) values (xmltype(CLOBDATA));
    else
      update XML_T set ONE = xmltype(CLOBDATA)
      where id = (select max(id) from xml_t);
    end if;  
    end if;        
    ftp.logout(l_conn);
    
    EXCEPTION
    WHEN OTHERS THEN
			-- Consider logging the error and then re-raise
			RAISE;
  end;
  
  procedure set_acc_plan as
  begin
    get_acc_plan_xml();
    --План счетов
    insert into plan_acc(id,acc_type,parent_id,fullname,zabalansov,valutn,kolishestv,code) 
        select t.ref,
        (select id from enum_account_type where upper(fullname)=upper(acc_type_conv(t.type))),
        case when t.parent = '00000000-0000-0000-0000-000000000000' then null
        else t.parent end,
        t.disc,
        bool_to_num(t.offbalance),
        bool_to_num(t.valunt),
        bool_to_num(t.kolich),
        t.code
        from (select extract(one, '/V8Exch:_1CV8DtUD/V8Exch:Data/ChartOfAccountsObject.Бюджетирование','xmlns:V8Exch="http://www.1c.ru/V8/1CV8DtUD/" xmlns:v8="http://v8.1c.ru/data" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"') one
              from xml_t where id=(select max(id) from xml_t)) p,
              xmltable('/ChartOfAccountsObject.Бюджетирование' passing p.one
                      columns Ref VARCHAR2(100) PATH 'Ref',
                          disc varchar2(1000) path 'Description',
                          code varchar2(100) path 'Code',
                          type varchar2(100) path 'Type',
                          parent varchar2(100) path 'Parent',
                          offbalance varchar2(100) path 'OffBalance',
                          valunt varchar2(100) path 'Валютный',
                          kolich varchar2(100) path 'Количественный'
                          ) t
        order by t.code;
     --Субконто плана счетов   
     insert into plan_acc_subconto (plan_acc_id,plan_type_subc,oborot_only,summovoy)
     select * from (select t.id, 
     plan_type_subconto_conv((select disc
     from (select extract(one, '/V8Exch:_1CV8DtUD/V8Exch:Data/ChartOfCharacteristicTypesObject.ВидыСубконтоБюджетирования','xmlns:V8Exch="http://www.1c.ru/V8/1CV8DtUD/" xmlns:v8="http://v8.1c.ru/data" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"') one
              from xml_t where id=(select max(id) from xml_t)) p,
              xmltable('/ChartOfCharacteristicTypesObject.ВидыСубконтоБюджетирования' passing p.one
                      columns Ref VARCHAR2(100) PATH 'Ref',
                          disc varchar2(100) path 'Description'
                          ) t where ref = li.dimensiontype)) subconto,
    bool_to_num(li.turnovers), bool_to_num(li.summovoy) from
    (select extract(one, '/V8Exch:_1CV8DtUD/V8Exch:Data/ChartOfAccountsObject.Бюджетирование','xmlns:V8Exch="http://www.1c.ru/V8/1CV8DtUD/" xmlns:v8="http://v8.1c.ru/data" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"') one
                           FROM xml_t where id=(select max(id) from xml_t)) p,
       XMLTable('/ChartOfAccountsObject.Бюджетирование' PASSING p.one
                COLUMNS id VARCHAR2(100) PATH 'Ref',
                        lineitem  xmltype      path 'ExtDimensionTypes') t ,
       xmltable('/ExtDimensionTypes/Row' passing t.lineitem
                columns dimensiontype varchar2(100) path 'ExtDimensionType',
                        turnovers varchar2(100) path 'TurnoversOnly',
                        summovoy varchar2(100) path 'Суммовой',
                        kolishestv varchar2(100) path 'Количественный',
                        valutn varchar2(100) path 'Валютный') li)
      where subconto is not null;
  
  EXCEPTION
    WHEN OTHERS THEN
			-- Consider logging the error and then re-raise
			RAISE;      
  end;
  
  procedure first_start as --Первый запуск базы
  p_uid varchar2(50);
  fs number(5);
  begin
    select nvl(count(*),0) into fs from users;
    if fs<>0 then
      return;
    end if;
    --Заполнение типов данных
    insert into type_def(table_name) select table_name from user_tables;
    --Заполнение справочника субконто
    insert into plan_type_subconto(type_of_obj,fullname) select id,
      case when upper(table_name) = upper('kontragents')
      then 'Контрагенты'
      when upper(table_name) = upper('kassa')
      then 'Касса'
      when upper(table_name) = upper('zatraty')
      then 'Статья затрат'
      when upper(table_name) = upper('nomenklatura')
      then 'Номенклатура'
      when upper(table_name) = upper('divisions')
      then 'ЦФО'
      end fullname
      from type_def where
        upper(table_name) = upper('kontragents') or
        upper(table_name) = upper('nomenklatura') or
        upper(table_name) = upper('kassa') or
        upper(table_name) = upper('zatraty') or
        upper(table_name) = upper('divisions');
    
    --Заполнение типов счетов    
    insert into enum_account_type(fullname)
        values('Активный');
    insert into enum_account_type(fullname)
        values('Пассивный');  
    insert into enum_account_type(fullname)
        values('Активный/Пассивный');
    --Заполнение плана счетов    
    set_acc_plan();
    
    --Инициализация нумератора документов
    insert into numerator(typedef_id,prefix)
        values((select id from type_def where upper(table_name)=upper('orders')),'OR-');
    
    --Справочник единиц измерений
    insert into measure_unit(fullname,code) 
        values('шт','796');
    insert into measure_unit(fullname,code) 
        values('кг','166');
    insert into measure_unit(fullname,code) 
        values('услуга','808');
    insert into measure_unit(fullname,code) 
        values('м','006');    
    
    --Справочник пользователей, пользователь-администратор
    insert into users(first_name,last_name,email,is_admin,login,pass_wd,predefined) 
      values('Viacheslav','Bakum','bakum@bmexp.com',1,'sysdba','1',1);
    
    --Справочник валют  
    insert into currency(code,fullname,namefull,predefined,id_xml)
      values('980','грн','Гривна',1,'0');
      
    select uuid() into p_uid from dual;  
    insert into currency(id, code,fullname,namefull,predefined,id_xml)
      values(p_uid,'840','usd','USD',0,'6');
    insert into ex_rates_settings(curr_id) values (p_uid);
    
    select uuid() into p_uid from dual;  
    insert into currency(id,code,fullname,namefull,predefined,id_xml)
      values(p_uid,'978','EUR','Евро',0,'8'); 
    insert into ex_rates_settings(curr_id) values (p_uid);
    
    select uuid() into p_uid from dual;  
    insert into currency(id,code,fullname,namefull,predefined,id_xml)
      values(p_uid,'643','RUB','Рубль',0,'17');   
    insert into ex_rates_settings(curr_id) values (p_uid); 
    
    --Справочник подразделений
    insert into divisions(fullname,is_group,predefined)
      values('Подразделения',1,1);
    insert into divisions(fullname,parent_id,is_group)
      values('Украина',(select id from divisions where fullname = 'Подразделения'),1);  
    
    --Справочник номенклатуры  
    insert into nomenklatura(fullname,is_group,usluga,predefined)
      values('Номенклатура',1,0,1);
    insert into nomenklatura(fullname,is_group,parent_id,usluga,predefined)
      values('Услуги',1,(select id from nomenklatura where fullname = 'Номенклатура'),0,0); 
    
    --Справочник организаций  
    insert into firms(fullname,printname,ur_fiz)
      values('Организация','Моя организация',1);
    
    --Справочник контрагентов
    insert into kontragents(fullname,is_group,predefined)
      values('Контрагенты',1,1);
    insert into kontragents(fullname,is_group,parent_id,predefined)
      values('Поставщики',1,(select id from kontragents where fullname = 'Контрагенты'),1);
    insert into kontragents(fullname,is_group,parent_id,predefined)
      values('Покупатели',1,(select id from kontragents where fullname = 'Контрагенты'),1);
    insert into kontragents(fullname,is_group,parent_id,predefined)
      values('Замерщики',1,(select id from kontragents where fullname = 'Контрагенты'),1);  
    
    --Виды деятельности
    insert into type_of_activities(fullname)
        values('Юриспруденция');
    insert into type_of_activities(fullname)
        values('Окна');
    insert into type_of_activities(fullname)
        values('Мебель');
    
    --Статусы заказа
    insert into ORDER_STATUS(name, fullname)
        values('ВРаботе','В работе');
    insert into ORDER_STATUS(name, fullname)
        values('ВРасчете','В расчёте');
    insert into ORDER_STATUS(name, fullname)
        values('Выполнен','Выполнен'); 
    insert into ORDER_STATUS(name, fullname)
        values('Замер','Замер');
    insert into ORDER_STATUS(name, fullname)
        values('Новый','Новый');
    insert into ORDER_STATUS(name, fullname)
        values('Закрыт','Закрыт'); 
    insert into ORDER_STATUS(name, fullname)
        values('Аннулирован','Аннулирован'); 
    
    --Статусы звонков 
    insert into CALL_STATUS(name, fullname)
        values('New','Новый'); 
    insert into CALL_STATUS(name, fullname)
        values('Pending','В ожидании'); 
    insert into CALL_STATUS(name, fullname)
        values('FailedSubmit','Неудачный');
    
    --Статусы результата звонков
    insert into CALL_RESULTS(name, fullname)
        values('Sales','Продажа');
    insert into CALL_RESULTS(name, fullname)
        values('WrongNumber','Неверный номер');
    insert into CALL_RESULTS(name, fullname)
        values('InvalidNumber','Недействительный номер');
    insert into CALL_RESULTS(name, fullname)
        values('Voicemail','Голосовая почта');
    insert into CALL_RESULTS(name, fullname)
        values('PowerOff','Номер отключен');    
    insert into CALL_RESULTS(name, fullname)
        values('NoAnswer','Нет ответа');
    insert into CALL_RESULTS(name, fullname)
        values('SendFax','Отправить факс');
    insert into CALL_RESULTS(name, fullname)
        values('SendMail','Отправить почту');    
    insert into CALL_RESULTS(name, fullname)
        values('Success','Успешно');    
    insert into CALL_RESULTS(name, fullname)
        values('Fail','Неудача');    
    insert into CALL_RESULTS(name, fullname)
        values('AnswerMachine','Автоответчик');    
    insert into CALL_RESULTS(name, fullname)
        values('DontCallAgain','Больше не звонить');    
    insert into CALL_RESULTS(name, fullname)
        values('NotInterested','Не интересует');    
    insert into CALL_RESULTS(name, fullname)
        values('CallLater','Перезвонить позже');
    insert into CALL_RESULTS(name, fullname)
        values('Measuring','Вызов на замер');     
        
     --Кампании (колл-листы) по-умолчанию
     insert into COMPAIGNS(name, PREDEFINED)
        values('hot',1);
     insert into COMPAIGNS(name, PREDEFINED)
        values('cold',1);   
    
    --Проводки для заказа
    insert into entry_settings(typedef_id,plan_acc_deb_id,plan_acc_kred_id)
        values((select id from type_def where upper(type_def.table_name)=upper('orders')),
               (select id from plan_acc where code = '20711'),
               (select id from plan_acc where code = '600'));
    insert into entry_settings(typedef_id,plan_acc_deb_id,plan_acc_kred_id)
        values((select id from type_def where upper(type_def.table_name)=upper('orders')),
               (select id from plan_acc where code = '701'),
               (select id from plan_acc where code = '20351'));           
      
    
    EXCEPTION
    WHEN OTHERS THEN
    -- Consider logging the error and then re-raise
        RAISE;
  end;
  
  procedure enable_constraint as
  begin
  for c2 in (select y.table_name, y.constraint_name from user_constraints y, user_tables x where x.table_name = y.table_name) loop
    begin
        execute immediate ('alter table '||c2.table_name||' enable constraint '||c2.constraint_name);
    end;
    end loop;
    
    EXCEPTION
    WHEN OTHERS THEN
			-- Consider logging the error and then re-raise
			RAISE;
  end;
  
  procedure disable_constraint as
  begin
  for c2 in (select y.table_name, y.constraint_name from user_constraints y, user_tables x where x.table_name = y.table_name) loop
    begin
        execute immediate ('alter table '||c2.table_name||' disable constraint '||c2.constraint_name);
    end;
    end loop;
    
    EXCEPTION
    WHEN OTHERS THEN
			-- Consider logging the error and then re-raise
			RAISE;
  end;
  
  function retrieve_customer_parentid return varchar2
  as v_return VARCHAR2(36);
  begin
    select id into v_return from kontragents where upper(fullname) = upper('Покупатели');
    return v_return;
  exception
  when others then
    return null;
  end;
  
  function retrieve_customer_parentname return varchar2
  as v_return VARCHAR2(150);
  begin
    select fullname into v_return from kontragents where upper(fullname) = upper('Покупатели');
    return v_return;
  exception
  when others then
    return null;
  end;
  
  procedure add_kontragent_to_call_list(p_kontrag_id in varchar2, p_compaign_id in varchar2)
  as
  begin
  for i in (select * from contact_details where kontrag_id = p_kontrag_id) loop
    insert into COMPAIGNS_DETAILS (compaign_id,kontrag_id,contact_id) 
      values(p_compaign_id,p_kontrag_id,i.id);
  end loop;
  exception
  when others then
    raise;
  end;
  
  procedure rem_kontragent_from_call_list(p_kontrag_id in varchar2)
  as
  cl_rec compaigns_details%rowtype;
  begin
  select * into cl_rec from compaigns_details where id = p_kontrag_id for update;
  delete from compaigns_details where id = p_kontrag_id;
  exception
  when others then
    raise;
  end;
  
  function retrieve_division_parentid return varchar2
  as v_return VARCHAR2(36);
  begin
    select id into v_return from DIVISIONS where parent_id is null and is_group = 1;
    return v_return;
  exception
  when others then
    return null;
  end;
  
  procedure change_parent_in_division(p_id in varchar2, p_parent_id in varchar2)
  as
  div_rec divisions%rowtype;
  begin
  select * into div_rec from divisions where id = p_id for update;
  div_rec.parent_id:=p_parent_id;
  update divisions
    set row = div_rec
  where id = p_id;
  exception
  when others then
    raise;
  end;
  
  procedure add_user_to_group(p_user in varchar2, p_group in varchar2)
  as
  begin
    insert into groupmembers (g_name, g_member) values (p_group,p_user);
    exception
    when others then
    raise;
  end;
  
  function retrieve_zamer_parentid return varchar2
  as v_return VARCHAR2(36);
  begin
    select id into v_return from kontragents where upper(fullname) = upper('Замерщики');
    return v_return;
  exception
  when others then
    return null;
  end;


end utility;

/
