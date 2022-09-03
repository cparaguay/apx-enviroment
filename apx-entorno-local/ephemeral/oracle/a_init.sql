DROP USER P12R CASCADE;

create user P12R IDENTIFIED BY 123456;

GRANT UNLIMITED TABLESPACE TO P12R; 

GRANT CONNECT TO P12R;

GRANT CONNECT, RESOURCE, DBA TO P12R;

GRANT CREATE PROCEDURE TO P12R;

GRANT CREATE SESSION to P12R;

GRANT CREATE SESSION to P12R;

-- *********************************************************************
-- Update Database Script
-- *********************************************************************
-- Change Log: src/main/resources/master_integrado_continuo.yaml
-- Ran at: 15/05/22 11:22 PM
-- Against: P12R@jdbc:oracle:thin:@localhost:1521:XE
-- Liquibase version: 4.2.0
-- *********************************************************************

-- Create Database Lock Table
CREATE TABLE DATABASECHANGELOGLOCK (ID INTEGER NOT NULL, LOCKED NUMBER(1) NOT NULL, LOCKGRANTED TIMESTAMP, LOCKEDBY VARCHAR2(255), CONSTRAINT PK_DATABASECHANGELOGLOCK PRIMARY KEY (ID));

-- Initialize Database Lock Table
DELETE FROM DATABASECHANGELOGLOCK;

INSERT INTO DATABASECHANGELOGLOCK (ID, LOCKED) VALUES (1, 0);

-- Lock Database
UPDATE DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = 'pc-dalozz (169.254.13.203)', LOCKGRANTED = TO_TIMESTAMP('2022-05-15 23:22:56.351', 'YYYY-MM-DD HH24:MI:SS.FF') WHERE ID = 1 AND LOCKED = 0;

-- Create Database Change Log Table
CREATE TABLE DATABASECHANGELOG (ID VARCHAR2(255) NOT NULL, AUTHOR VARCHAR2(255) NOT NULL, FILENAME VARCHAR2(255) NOT NULL, DATEEXECUTED TIMESTAMP NOT NULL, ORDEREXECUTED INTEGER NOT NULL, EXECTYPE VARCHAR2(10) NOT NULL, MD5SUM VARCHAR2(35), DESCRIPTION VARCHAR2(255), COMMENTS VARCHAR2(255), TAG VARCHAR2(255), LIQUIBASE VARCHAR2(20), CONTEXTS VARCHAR2(255), LABELS VARCHAR2(255), DEPLOYMENT_ID VARCHAR2(10));

-- Changeset src/main/resources/2022-pi1/sprint4/new-bd/master_integrado.yml::20220304-1::cparaguay
/*==============================================================*/
/* User: P12R                                                   */
/*==============================================================*/
create user P12R 
  identified by "";

/*==============================================================*/
/* Table: T_P12R_NOTIFICATION                                   */
/*==============================================================*/
create table P12R.T_P12R_NOTIFICATION (
   NOTIFICATION_ID      VARCHAR2(36)          not null,
   CUSTOMER_ID          VARCHAR2(8)           not null,
   CONTRACT_PRODUCT_ID  VARCHAR2(20),
   PRODUCT_TYPE_NAME    VARCHAR2(20),
   SUBPRODUCT_NAME      VARCHAR2(50),
   PERSONAL_ID          VARCHAR2(20)          not null,
   PERSONAL_TYPE        VARCHAR2(3)           not null,
   SERVICE_NOTIFICATION_TYPE_ID VARCHAR2(36)          not null,
   NOTIFICATION_MANAGER_URL_DESC VARCHAR2(254)         not null,
   NOTIFICATION_SEND_DATE TIMESTAMP             not null,
   NOTIFICATION_DEST_EMAIL_DESC VARCHAR2(254),
   DELIVERY_ADDRESS_DESC VARCHAR2(254),
   RECIPIENT_PHONE_ID   VARCHAR2(20),
   DOCUMENT_CREATION_DATE TIMESTAMP             not null,
   NOTIFICATION_STATUS_NAME VARCHAR2(40),
   NOTIFICATION_SEND_TYPE VARCHAR2(2)           not null,
   CREATION_USER_ID     VARCHAR2(8)           not null,
   CREATION_DATE        TIMESTAMP             not null,
   USER_AUDIT_ID        VARCHAR2(8)           not null,
   AUDIT_DATE           TIMESTAMP             not null,
   PRODUCT_ID           VARCHAR2(2),
   constraint C_P12R_NOTIFICATION primary key (NOTIFICATION_ID)
);

/*==============================================================*/
/* Index: I_P12R_NOTIFICATION0                                  */
/*==============================================================*/
create index P12R.I_P12R_NOTIFICATION0 on P12R.T_P12R_NOTIFICATION (
   CUSTOMER_ID ASC,
   PERSONAL_ID ASC,
   PERSONAL_TYPE ASC
);

/*==============================================================*/
/* Table: T_P12R_NOTIFICATIONS_AUDIT                            */
/*==============================================================*/
create table P12R.T_P12R_NOTIFICATIONS_AUDIT (
   AUDIT_LOG_ID         VARCHAR2(36)          not null,
   USER_AUDIT_ID        VARCHAR2(8)           not null,
   AUDIT_EVENT_NAME     VARCHAR2(40)          not null,
   NOTIFICATION_ID      VARCHAR2(36)          not null,
   ENTRY_CHANNEL_ID     VARCHAR2(20)          not null,
   AUDIT_DATE           TIMESTAMP             not null,
   constraint C_P12R_NOTIFICATIONS_AUDIT primary key (AUDIT_LOG_ID)
);

/*==============================================================*/
/* Table: T_P12R_NOTIFICATION_TYPE                              */
/*==============================================================*/
create table P12R.T_P12R_NOTIFICATION_TYPE (
   SERVICE_NOTIFICATION_TYPE_ID VARCHAR2(36)          not null,
   NOTIFICATION_TYPE_NAME VARCHAR2(40)          not null,
   CREATION_USER_ID     VARCHAR2(8)           not null,
   CREATION_DATE        TIMESTAMP             not null,
   USER_AUDIT_ID        VARCHAR2(8)           not null,
   AUDIT_DATE           TIMESTAMP             not null,
   NOTIFICATION_TEMPLATE_NAME VARCHAR2(40),
   APPLICATION_ID       VARCHAR2(20),
   USER_TYPE            VARCHAR2(20),
   SENDER_EMAIL_DESC    VARCHAR2(80),
   CASE_PRIORITY_TYPE   VARCHAR2(8),
   EMAIL_SUBJECT_DESC   VARCHAR2(150),
   constraint C_P12R_NOTIFICATION_TYPE primary key (SERVICE_NOTIFICATION_TYPE_ID)
);

alter table P12R.T_P12R_NOTIFICATION
   add constraint RP12R_NOTIFICATION_TYPE01 foreign key (SERVICE_NOTIFICATION_TYPE_ID)
      references P12R.T_P12R_NOTIFICATION_TYPE (SERVICE_NOTIFICATION_TYPE_ID);

alter table P12R.T_P12R_NOTIFICATIONS_AUDIT
   add constraint RP12R_NOTIFICATION01 foreign key (NOTIFICATION_ID)
      references P12R.T_P12R_NOTIFICATION (NOTIFICATION_ID);

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('20220304-1', 'cparaguay', 'src/main/resources/2022-pi1/sprint4/new-bd/master_integrado.yml', SYSTIMESTAMP, 1, '8:620255f12aa0eb9758951cec5fd715ce', 'sqlFile', 'Crostruyendo nueva base de datos', 'EXECUTED', '(local, test, qa, prod)', NULL, '4.2.0', '2674977191');

-- Changeset src/main/resources/2022-pi1/sprint4/insert/master_integrado.yml::20220311-1::cparaguay
-- insertando
INSERT INTO P12R.T_P12R_NOTIFICATION_TYPE (SERVICE_NOTIFICATION_TYPE_ID, NOTIFICATION_TYPE_NAME, CREATION_USER_ID, CREATION_DATE, USER_AUDIT_ID, AUDIT_DATE, APPLICATION_ID, USER_TYPE, SENDER_EMAIL_DESC, CASE_PRIORITY_TYPE, EMAIL_SUBJECT_DESC) 
VALUES 
('622b23623b84830b81d9be2f', 'notificacion', 'xp1234', sysdate, 'xp1234', sysdate, 'P12R', 'CU', 'info@bbva.com', '1', 'Compras por internet');

INSERT INTO P12R.T_P12R_NOTIFICATION_TYPE (SERVICE_NOTIFICATION_TYPE_ID, NOTIFICATION_TYPE_NAME, CREATION_USER_ID, CREATION_DATE, USER_AUDIT_ID, AUDIT_DATE, APPLICATION_ID, USER_TYPE, SENDER_EMAIL_DESC, CASE_PRIORITY_TYPE, EMAIL_SUBJECT_DESC)
VALUES 
('6250a118e710657bfe135ce8', 'Movimientos diarios', 'xp1234', sysdate, 'xp1234', sysdate, 'P12R', 'CUSTOMER', 'info@bbva.com', '1', 'Movimientos diarios');

INSERT INTO P12R.T_P12R_NOTIFICATION_TYPE (SERVICE_NOTIFICATION_TYPE_ID, NOTIFICATION_TYPE_NAME, CREATION_USER_ID, CREATION_DATE, USER_AUDIT_ID, AUDIT_DATE, APPLICATION_ID, USER_TYPE, SENDER_EMAIL_DESC, CASE_PRIORITY_TYPE, EMAIL_SUBJECT_DESC)
VALUES 
('P12R00000500', 'notificacion', 'xp1234', sysdate, 'xp1234', sysdate, 'P12R', 'CUSTOMER', 'info@bbva.com', '1', 'Compras por internet');


INSERT INTO P12R.T_P12R_NOTIFICATION_TYPE (SERVICE_NOTIFICATION_TYPE_ID, NOTIFICATION_TYPE_NAME, CREATION_USER_ID, CREATION_DATE, USER_AUDIT_ID, AUDIT_DATE, APPLICATION_ID, USER_TYPE, SENDER_EMAIL_DESC, CASE_PRIORITY_TYPE, EMAIL_SUBJECT_DESC)
VALUES 
('P12R00000501', 'notificacion', 'xp1234', sysdate, 'xp1234', sysdate, 'P12R', 'CUSTOMER', 'info@bbva.com', '1', 'Compras por internet');


INSERT INTO P12R.T_P12R_NOTIFICATION_TYPE (SERVICE_NOTIFICATION_TYPE_ID, NOTIFICATION_TYPE_NAME, CREATION_USER_ID, CREATION_DATE, USER_AUDIT_ID, AUDIT_DATE, APPLICATION_ID, USER_TYPE, SENDER_EMAIL_DESC, CASE_PRIORITY_TYPE, EMAIL_SUBJECT_DESC)
VALUES 
('P12R00000502', 'notificacion', 'xp1234', sysdate, 'xp1234', sysdate, 'P12R', 'CUSTOMER', 'info@bbva.com', '1', 'Compras por internet');

INSERT INTO P12R.T_P12R_NOTIFICATION_TYPE (SERVICE_NOTIFICATION_TYPE_ID, NOTIFICATION_TYPE_NAME, CREATION_USER_ID, CREATION_DATE, USER_AUDIT_ID, AUDIT_DATE, APPLICATION_ID, USER_TYPE, SENDER_EMAIL_DESC, CASE_PRIORITY_TYPE, EMAIL_SUBJECT_DESC)
VALUES 
('P12R00000503', 'notificacion', 'xp1234', sysdate, 'xp1234', sysdate, 'P12R', 'CUSTOMER', 'info@bbva.com', '1', 'Compras por internet');

INSERT INTO P12R.T_P12R_NOTIFICATION_TYPE (SERVICE_NOTIFICATION_TYPE_ID, NOTIFICATION_TYPE_NAME, CREATION_USER_ID, CREATION_DATE, USER_AUDIT_ID, AUDIT_DATE, APPLICATION_ID, USER_TYPE, SENDER_EMAIL_DESC, CASE_PRIORITY_TYPE, EMAIL_SUBJECT_DESC)
VALUES 
('P12R00000504', 'notificacion', 'xp1234', sysdate, 'xp1234', sysdate, 'P12R', 'CUSTOMER', 'info@bbva.com', '1', 'Compras por internet');

INSERT INTO P12R.T_P12R_NOTIFICATION_TYPE (SERVICE_NOTIFICATION_TYPE_ID, NOTIFICATION_TYPE_NAME, CREATION_USER_ID, CREATION_DATE, USER_AUDIT_ID, AUDIT_DATE, APPLICATION_ID, USER_TYPE, SENDER_EMAIL_DESC, CASE_PRIORITY_TYPE, EMAIL_SUBJECT_DESC)
VALUES 
('P12R00000505', 'notificacion', 'xp1234', sysdate, 'xp1234', sysdate, 'P12R', 'CUSTOMER', 'info@bbva.com', '1', 'Compras por internet');

INSERT INTO P12R.T_P12R_NOTIFICATION_TYPE (SERVICE_NOTIFICATION_TYPE_ID, NOTIFICATION_TYPE_NAME, CREATION_USER_ID, CREATION_DATE, USER_AUDIT_ID, AUDIT_DATE, APPLICATION_ID, USER_TYPE, SENDER_EMAIL_DESC, CASE_PRIORITY_TYPE, EMAIL_SUBJECT_DESC)
VALUES 
('P12R00000506', 'notificacion', 'xp1234', sysdate, 'xp1234', sysdate, 'P12R', 'CUSTOMER', 'info@bbva.com', '1', 'Compras por internet');



INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('20220311-1', 'cparaguay', 'src/main/resources/2022-pi1/sprint4/insert/master_integrado.yml', SYSTIMESTAMP, 2, '8:0f28f7ffb374f61c5e0ed39b14a21e97', 'sqlFile', 'insertando', 'EXECUTED', '(local, test, qa, prod)', NULL, '4.2.0', '2674977191');

-- Release Database Lock
UPDATE DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;


