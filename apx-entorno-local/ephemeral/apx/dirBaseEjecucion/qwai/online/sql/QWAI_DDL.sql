set mode Oracle;

CREATE SCHEMA IF NOT EXISTS QWAI;


/*==============================================================*/
/* Table: TQWAICUS                                              */
/*==============================================================*/
CREATE TABLE IF NOT EXISTS QWAI.TQWAICUS 
(
   COD_PAISOALF         VARCHAR2(2)     not null,/* nationality    */
   COD_PERSCTPN         VARCHAR2(9)     not null,/* customerId     */
   DES_NOMBFJ           VARCHAR2(80)    not null,/* firtsName      */
   DES_APELLUNO         VARCHAR2(40)    not null,/* lastName1      */
   DES_APELLDOS         VARCHAR2(40)            ,/* lastName2      */
   COD_TIPIDENT         VARCHAR2(1)     not null,/* documentType   */
   COD_DOCUMPS          VARCHAR2(25)    not null,/* documentNumber */
   FEC_FNACIF           DATE            not null,/* birthDate      */
   XTI_SEXO             VARCHAR2(1)     not null,/* genderId       */
   COD_TRATANOR         VARCHAR2(2)     not null,/* personalTitle  */
   COD_CECIVI           VARCHAR2(1)     not null,/* maritalStatus  */
   AUD_FMMODIF          DATE            not null,
   AUD_USUARIO          VARCHAR2(8)     not null,

   constraint CQWAICUS primary key (COD_PERSCTPN)
)

;


COMMIT;
