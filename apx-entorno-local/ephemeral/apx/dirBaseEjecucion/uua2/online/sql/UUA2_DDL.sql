set mode Oracle;

CREATE SCHEMA IF NOT EXISTS UUA2;


/*==============================================================*/
/* Table: TUUA2CLI                                              */
/*==============================================================*/
CREATE TABLE IF NOT EXISTS UUA2.TUUA2CLI 
(
   COD_CLIENTE         VARCHAR2(3)     not null,/* clienteId    */
   DES_NOMBRE          VARCHAR2(20)    not null,/* nombre       */
   DES_APELLIDO        VARCHAR2(20)    not null,/* apellido     */
   FEC_NACIMIENTO      DATE                    ,/* birthDate    */
   QNU_MONTO           VARCHAR2(7)             ,/* monto de cli */

   constraint CUUA2CLI primary key (COD_CLIENTE)
)
;

MERGE INTO UUA2.TUUA2CLI (COD_CLIENTE,DES_NOMBRE,DES_APELLIDO,QNU_MONTO)  VALUES('001','Marco','Avila','100');
MERGE INTO UUA2.TUUA2CLI (COD_CLIENTE,DES_NOMBRE,DES_APELLIDO,QNU_MONTO)  VALUES('002','Fulanito','Perez','1000');

COMMIT;
