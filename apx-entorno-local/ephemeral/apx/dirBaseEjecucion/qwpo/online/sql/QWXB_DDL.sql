/*
+++++++++++++++++++++++++++++++++++++++++
HAY QUE QUITAR EL SECUENCIAL DE ROP
+++++++++++++++++++++++++++++++++++++++++
*/

set mode Oracle;

CREATE SCHEMA IF NOT EXISTS QWXB;


/*==============================================================*/
/* Table: TQWXBAOR                                              */
/*==============================================================*/
CREATE TABLE IF NOT EXISTS QWXB.TQWXBAOR 
(

	COD_DB2_ID			VARCHAR2(8)     not null,
	QNU_UID_ULT			NUMBER(6)     	not null,
	COD_ENTALFA			VARCHAR2(4)     not null,
	COD_PAISOALF		VARCHAR2(2)     not null,
	COD_OFIALFA			VARCHAR2(4)     not null,
	COD_PUESTOT			VARCHAR2(4)     not null,
	COD_CANAL_DV		VARCHAR2(2)     not null,
	COD_SUBCANL			VARCHAR2(4)     not null,
	COD_ORIGFIS			VARCHAR2(16)    not null,
	COD_USUARIO			VARCHAR2(8)     not null,
	COD_IDIOMISO		VARCHAR2(2)     not null,
	QNU_LOTEROP			NUMBER(6)     	not null,
	HMS_LOTE			TIMESTAMP  		not null,
	FEC_CONTABLE		DATE     		not null,
	FEC_OPE			    DATE     		not null,
	FEC_EJEC			DATE    		not null,
	HMS_EJEC			TIMESTAMP  		not null,
	XTI_ESTADAUT		VARCHAR2(1)     not null,
	COD_USUAUTOR		VARCHAR2(8)     not null,
	QNU_NSEQ			NUMBER(11)     	not null,
	COD_ERRAVI			VARCHAR2(8)     not null,
	COD_SEVERR			VARCHAR2(2)     not null,
	COD_TRANFIS			VARCHAR2(8)     not null,
	COD_IBANORIG		VARCHAR2(4)     not null,
	DES_CTAORIG			VARCHAR2(30)    not null,
	COD_PAISORIG		VARCHAR2(2)     not null,
	COD_IBANDEST		VARCHAR2(4)     not null,
	DES_CTADEST			VARCHAR2(30)    not null,
	COD_PAISEST			VARCHAR2(2)     not null,
	COD_TICLIET			VARCHAR2(2)     not null,
	COD_DOCCLI			VARCHAR2(20)    not null,
	COD_TXLOG			VARCHAR2(8)     not null,
	COD_TIOPERC			VARCHAR2(2)     not null,
	COD_SUBTIOP			VARCHAR2(2)     not null,
	COD_VRSNOP			VARCHAR2(2)     not null,
	QNU_UID				NUMBER(11)     	not null,
	QNU_UIDRELAC		NUMBER(11)     	not null,
	XTI_INDCONT			VARCHAR2(1)     not null,
	COD_DIISOALF		VARCHAR2(3)     not null,
	IMP_TOT				NUMBER(21,6)    not null,
	COD_TIPREF1			VARCHAR2(2)     not null,
	DES_REF1			VARCHAR2(40)    not null,
	COD_TIPREF2			VARCHAR2(2)     not null,
	DES_REF2			VARCHAR2(40)    not null,
	COD_TOT01			VARCHAR2(4)     not null,
	COD_DIISOAL1		VARCHAR2(3)     not null,
	XTI_INDDEHA1		VARCHAR2(1)     not null,
	IMP_IMPRT01			NUMBER(21,6)    not null,
	COD_TOT02			VARCHAR2(4)     not null,
	COD_DIISOAL2		VARCHAR2(3)     not null,
	XTI_INDDEHA2		VARCHAR2(1)     not null,
	IMP_IMPRT02			NUMBER(21,6)    not null,
	AUD_USUAMOD			VARCHAR2(8)     not null,
	AUD_FECMOD			DATE     		not null,
	COD_RMSOPER			NUMBER(18,0)    not null,
	COD_DIVORIG			VARCHAR2(3)     not null,
	IMP_TOTORIG			NUMBER(21,6)    not null,
	COD_DIVINT			VARCHAR2(3)     not null,
	IMP_INTRMS			NUMBER(21,6)    not null,
	COD_DIVCOM			VARCHAR2(3)     not null,
	IMP_COMRMS			NUMBER(21,6)    not null,
	COD_DIVGAS			VARCHAR2(3)     not null,
	IMP_GASTORMS		NUMBER(21,6)    not null,
	COD_PROGRAMA		VARCHAR2(8)     not null,
	COD_PERSCTPN		VARCHAR2(9)     not null,
	COD_ERRORVA1		VARCHAR2(15)    not null,
	COD_ERRORVA2		VARCHAR2(15)    not null,
	COD_CONCOPER		VARCHAR2(20)    not null,
	COD_OFIOPERT		VARCHAR2(4)     not null,
	COD_ENTOPERT		VARCHAR2(4)     not null,
	DES_OBSERVDE		VARCHAR2(40)    not null,
	COD_TOT03			VARCHAR2(4)     not null,
	COD_DIISOAL3		VARCHAR2(3)     not null,
	XTI_INDDEHA3		VARCHAR2(1)     not null,
	IMP_IMPRT03			NUMBER(21,6)    not null,
	COD_TOT04			VARCHAR2(4)     not null,
	COD_DIISOAL4		VARCHAR2(3)     not null,
	XTI_INDDEHA4		VARCHAR2(1)     not null,
	IMP_IMPRT04			NUMBER(21,6)    not null,
	QNU_ROP				NUMBER(6)     	not null,
	XTI_TIPOTRN			VARCHAR2(1)     not null,
	QNU_NDETLOTE		NUMBER(6)     	not null,
	XTI_FIRMA			VARCHAR2(1)     not null,
	COD_APLICAC			VARCHAR2(4)     not null,
	COD_OPERACD			VARCHAR2(2)     not null,
	DES_REFEXTE			VARCHAR2(30)    not null,
	COD_SERV_DV			VARCHAR2(4)     not null,
	FEC_CANAL			DATE     		not null,
	HMS_CANAL			TIMESTAMP  		not null,
	COD_DIISOALB		VARCHAR2(3)     not null,
	COD_DIISOALS		VARCHAR2(3)     not null,
	XTI_AUTODIAR		VARCHAR2(1)     not null,
	XTI_TIMETRAN		VARCHAR2(1)     not null,
	QNU_TIMETRAN		NUMBER(6)     	not null,
	QNU_TIMEPROC		NUMBER(6)     	not null,
	COD_TIPIDENT		VARCHAR2(1)     not null,
	COD_DOCUMPS			VARCHAR2(25)    not null,
	DES_IDCONTAC		VARCHAR2(40)    not null,
	XTI_ANULFIRM		VARCHAR2(1)     not null,
	XTI_RECICLAD		VARCHAR2(1)     not null,
	XTI_ANULREC			VARCHAR2(1)     not null,
	XTI_CAJAEXT			VARCHAR2(1)     not null,
	XTI_ANULCAJA		VARCHAR2(1)     not null,
	XTI_EFECTIVO		VARCHAR2(1)     not null,
	IMP_TOTINREC		NUMBER(18,6)    not null,
	IMP_TOTINCAJ		NUMBER(18,6)    not null,
	IMP_TOTDIREC		NUMBER(18,6)    not null,
	IMP_TOTDICAJ		NUMBER(18,6)    not null,
	TIM_EJECINI			TIMESTAMP     	not null,
	TIM_EJECFIN			TIMESTAMP     	not null,
	TIM_DISPOSIT		TIMESTAMP     	not null,
	DES_IDPETI			VARCHAR2(40)    not null,
	DES_IDSERV		    VARCHAR2(40)    not null,
	COD_APLERROR		VARCHAR2(4)     not null,
	COD_TABERROR		VARCHAR2(8)     not null,
	COD_SQLERROR		NUMBER(11)     	not null,
	COD_PGMERROR		VARCHAR2(8)     not null,
	COD_APXNOMMA		VARCHAR2(20)    not null,
	COD_APXGRUSE		VARCHAR2(20)    not null,
	TIM_APXIPL	    	TIMESTAMP       not null,
	COD_AAP_CONS 		VARCHAR2(20),
    COD_APP_CONS 		VARCHAR2(20),
    COD_USER_OR 		VARCHAR2(20),
    DES_AGE_USER 		VARCHAR2(254),
    DES_AGE_GEST 		VARCHAR2(40),
    COD_MACSECUD 		VARCHAR2(20),
    XTI_TRXCAB 			VARCHAR2(1),
    COD_CABIN 			VARCHAR2(4),
    QNU_REMTIME 		NUMBER(9),
		
   constraint CQWXBAOR primary key (QNU_UID, COD_APXNOMMA, COD_APXGRUSE, TIM_APXIPL) 
)

;	

/*==============================================================*/
/* Table: TQWXBBOR                                              */
/*==============================================================*/
CREATE TABLE IF NOT EXISTS QWXB.TQWXBBOR 
(

	COD_DB2_ID			VARCHAR2(8)     not null,
	QNU_UID_ULT			NUMBER(6)     	not null,
	COD_ENTALFA			VARCHAR2(4)     not null,
	COD_PAISOALF		VARCHAR2(2)     not null,
	COD_OFIALFA			VARCHAR2(4)     not null,
	COD_PUESTOT			VARCHAR2(4)     not null,
	COD_CANAL_DV		VARCHAR2(2)     not null,
	COD_SUBCANL			VARCHAR2(4)     not null,
	COD_ORIGFIS			VARCHAR2(16)    not null,
	COD_USUARIO			VARCHAR2(8)     not null,
	COD_IDIOMISO		VARCHAR2(2)     not null,
	QNU_LOTEROP			NUMBER(6)     	not null,
	HMS_LOTE			TIMESTAMP  		not null,
	FEC_CONTABLE		DATE     		not null,
	FEC_OPE			    DATE     		not null,
	FEC_EJEC			DATE    		not null,
	HMS_EJEC			TIMESTAMP  		not null,
	XTI_ESTADAUT		VARCHAR2(1)     not null,
	COD_USUAUTOR		VARCHAR2(8)     not null,
	QNU_NSEQ			NUMBER(11)     	not null,
	COD_ERRAVI			VARCHAR2(8)     not null,
	COD_SEVERR			VARCHAR2(2)     not null,
	COD_TRANFIS			VARCHAR2(8)     not null,
	COD_IBANORIG		VARCHAR2(4)     not null,
	DES_CTAORIG			VARCHAR2(30)    not null,
	COD_PAISORIG		VARCHAR2(2)     not null,
	COD_IBANDEST		VARCHAR2(4)     not null,
	DES_CTADEST			VARCHAR2(30)    not null,
	COD_PAISEST			VARCHAR2(2)     not null,
	COD_TICLIET			VARCHAR2(2)     not null,
	COD_DOCCLI			VARCHAR2(20)    not null,
	COD_TXLOG			VARCHAR2(8)     not null,
	COD_TIOPERC			VARCHAR2(2)     not null,
	COD_SUBTIOP			VARCHAR2(2)     not null,
	COD_VRSNOP			VARCHAR2(2)     not null,
	QNU_UID				NUMBER(11)     	not null,
	QNU_UIDRELAC		NUMBER(11)     	not null,
	XTI_INDCONT			VARCHAR2(1)     not null,
	COD_DIISOALF		VARCHAR2(3)     not null,
	IMP_TOT				NUMBER(21,6)    not null,
	COD_TIPREF1			VARCHAR2(2)     not null,
	DES_REF1			VARCHAR2(40)    not null,
	COD_TIPREF2			VARCHAR2(2)     not null,
	DES_REF2			VARCHAR2(40)    not null,
	COD_TOT01			VARCHAR2(4)     not null,
	COD_DIISOAL1		VARCHAR2(3)     not null,
	XTI_INDDEHA1		VARCHAR2(1)     not null,
	IMP_IMPRT01			NUMBER(21,6)    not null,
	COD_TOT02			VARCHAR2(4)     not null,
	COD_DIISOAL2		VARCHAR2(3)     not null,
	XTI_INDDEHA2		VARCHAR2(1)     not null,
	IMP_IMPRT02			NUMBER(21,6)    not null,
	AUD_USUAMOD			VARCHAR2(8)     not null,
	AUD_FECMOD			DATE     		not null,
	COD_RMSOPER			NUMBER(18,0)    not null,
	COD_DIVORIG			VARCHAR2(3)     not null,
	IMP_TOTORIG			NUMBER(21,6)    not null,
	COD_DIVINT			VARCHAR2(3)     not null,
	IMP_INTRMS			NUMBER(21,6)    not null,
	COD_DIVCOM			VARCHAR2(3)     not null,
	IMP_COMRMS			NUMBER(21,6)    not null,
	COD_DIVGAS			VARCHAR2(3)     not null,
	IMP_GASTORMS		NUMBER(21,6)    not null,
	COD_PROGRAMA		VARCHAR2(8)     not null,
	COD_PERSCTPN		VARCHAR2(9)     not null,
	COD_ERRORVA1		VARCHAR2(15)    not null,
	COD_ERRORVA2		VARCHAR2(15)    not null,
	COD_CONCOPER		VARCHAR2(20)    not null,
	COD_OFIOPERT		VARCHAR2(4)     not null,
	COD_ENTOPERT		VARCHAR2(4)     not null,
	DES_OBSERVDE		VARCHAR2(40)    not null,
	COD_TOT03			VARCHAR2(4)     not null,
	COD_DIISOAL3		VARCHAR2(3)     not null,
	XTI_INDDEHA3		VARCHAR2(1)     not null,
	IMP_IMPRT03			NUMBER(21,6)    not null,
	COD_TOT04			VARCHAR2(4)     not null,
	COD_DIISOAL4		VARCHAR2(3)     not null,
	XTI_INDDEHA4		VARCHAR2(1)     not null,
	IMP_IMPRT04			NUMBER(21,6)    not null,
	QNU_ROP				NUMBER(6)     	not null,
	XTI_TIPOTRN			VARCHAR2(1)     not null,
	QNU_NDETLOTE		NUMBER(6)     	not null,
	XTI_FIRMA			VARCHAR2(1)     not null,
	COD_APLICAC			VARCHAR2(4)     not null,
	COD_OPERACD			VARCHAR2(2)     not null,
	DES_REFEXTE			VARCHAR2(30)    not null,
	COD_SERV_DV			VARCHAR2(4)     not null,
	FEC_CANAL			DATE     		not null,
	HMS_CANAL			TIMESTAMP  		not null,
	COD_DIISOALB		VARCHAR2(3)     not null,
	COD_DIISOALS		VARCHAR2(3)     not null,
	XTI_AUTODIAR		VARCHAR2(1)     not null,
	XTI_TIMETRAN		VARCHAR2(1)     not null,
	QNU_TIMETRAN		NUMBER(6)     	not null,
	QNU_TIMEPROC		NUMBER(6)     	not null,
	COD_TIPIDENT		VARCHAR2(1)     not null,
	COD_DOCUMPS			VARCHAR2(25)    not null,
	DES_IDCONTAC		VARCHAR2(40)    not null,
	XTI_ANULFIRM		VARCHAR2(1)     not null,
	XTI_RECICLAD		VARCHAR2(1)     not null,
	XTI_ANULREC			VARCHAR2(1)     not null,
	XTI_CAJAEXT			VARCHAR2(1)     not null,
	XTI_ANULCAJA		VARCHAR2(1)     not null,
	XTI_EFECTIVO		VARCHAR2(1)     not null,
	IMP_TOTINREC		NUMBER(18,6)    not null,
	IMP_TOTINCAJ		NUMBER(18,6)    not null,
	IMP_TOTDIREC		NUMBER(18,6)    not null,
	IMP_TOTDICAJ		NUMBER(18,6)    not null,
	TIM_EJECINI			TIMESTAMP     	not null,
	TIM_EJECFIN			TIMESTAMP     	not null,
	TIM_DISPOSIT		TIMESTAMP     	not null,
	DES_IDPETI			VARCHAR2(40)    not null,
	DES_IDSERV		    VARCHAR2(40)    not null,
	COD_APLERROR		VARCHAR2(4)     not null,
	COD_TABERROR		VARCHAR2(8)     not null,
	COD_SQLERROR		NUMBER(11)     	not null,
	COD_PGMERROR		VARCHAR2(8)     not null,
	COD_APXNOMMA		VARCHAR2(20)    not null,
	COD_APXGRUSE		VARCHAR2(20)    not null,
	TIM_APXIPL	    	TIMESTAMP       not null,
	COD_AAP_CONS 		VARCHAR2(20),
	COD_APP_CONS 		VARCHAR2(20),
	COD_USER_OR 		VARCHAR2(20),
	DES_AGE_USER 		VARCHAR2(254),
	DES_AGE_GEST 		VARCHAR2(40),
	COD_MACSECUD 		VARCHAR2(20),
	XTI_TRXCAB 			VARCHAR2(1),
	COD_CABIN 			VARCHAR2(4),
	QNU_REMTIME 		NUMBER(9),
		
   constraint CQWXBBOR primary key (QNU_UID, COD_APXNOMMA, COD_APXGRUSE, TIM_APXIPL)  
)
 
;

/*==============================================================*/
/* Table: TQWXBCVA                                            */
/*==============================================================*/
CREATE TABLE IF NOT EXISTS QWXB.TQWXBCVA  (
   COD_DB2_ID           VARCHAR2(8)         not null,
   QNU_UID_ULT          NUMBER(6)           not null,
   FEC_EJEC             DATE                not null,
   QNU_UID              NUMBER(11)          not null,
   QNU_ORDENROP         NUMBER(6)           not null,
   COD_COPYSAL          VARCHAR2(8)         not null,
   AUD_USUAMOD          VARCHAR2(8)         not null,
   AUD_FECMOD           DATE                not null,
   DES_COPY             VARCHAR2(4000)      not null,
   COD_APXNOMMA         VARCHAR2(20)        not null,
   COD_APXGRUSE         VARCHAR2(20)        not null,
   TIM_APXIPL           TIMESTAMP           not null,
   
   constraint CQWXBCVA primary key (QNU_UID, QNU_ORDENROP, COD_APXNOMMA, COD_APXGRUSE, TIM_APXIPL)
)

;


/*==============================================================*/
/* Table: TQWXBBVC                                              */
/*==============================================================*/
CREATE TABLE IF NOT EXISTS QWXB.TQWXBBVC  (
   COD_DB2_ID           VARCHAR2(8)         not null,
   QNU_UID_ULT          NUMBER(6)           not null,
   FEC_EJEC             DATE                not null,
   QNU_UID              NUMBER(11)          not null,
   QNU_ORDENROP         NUMBER(6)           not null,
   COD_COPYSAL          VARCHAR2(8)         not null,
   AUD_USUAMOD          VARCHAR2(8)         not null,
   AUD_FECMOD           DATE                not null,
   DES_COPY             VARCHAR2(4000)      not null,
   COD_APXNOMMA         VARCHAR2(20)        not null,
   COD_APXGRUSE         VARCHAR2(20)        not null,
   TIM_APXIPL           TIMESTAMP           not null,

   constraint CQWXBBVC primary key (QNU_UID, QNU_ORDENROP, COD_APXNOMMA, COD_APXGRUSE, TIM_APXIPL)
)

;


/*==============================================================*/
/* Table: TQWXBALC                                              */
/*==============================================================*/
CREATE TABLE IF NOT EXISTS QWXB.TQWXBALC  (
   QNU_UID              NUMBER(11)          not null,
   COD_NUORDLOT         NUMBER(6)           not null,
   FEC_CONTABLE         DATE                not null,
   QNU_UIDRELAC         NUMBER(11)          not null,
   COD_IBANORIG         VARCHAR2(4)         not null,
   DES_CTAORIG          VARCHAR2(30)        not null,
   COD_PAISORIG         VARCHAR2(2)         not null,
   COD_IBANDEST         VARCHAR2(4)         not null,
   DES_CTADEST          VARCHAR2(30)        not null,
   COD_PAISEST          VARCHAR2(2)         not null,
   COD_TICLIET          VARCHAR2(2)         not null,
   COD_DOCCLI           VARCHAR2(20)        not null,
   COD_DIISOALF         VARCHAR2(3)         not null,
   IMP_TOT              NUMBER(21,6)        not null,
   COD_TIPREF1          VARCHAR2(2)         not null,
   DES_REF1             VARCHAR2(40)        not null,
   COD_TIPREF2          VARCHAR2(2)         not null,
   DES_REF2             VARCHAR2(40)        not null,
   FEC_OPE              DATE                not null,
   DES_OBSERVDE         VARCHAR2(40)        not null,
   COD_ERRAVI           VARCHAR2(8)         not null,
   COD_SEVERR           VARCHAR2(2)         not null,
   COD_ERRORVA1         VARCHAR2(15)        not null,
   COD_ERRORVA2         VARCHAR2(15)        not null,
   COD_RMSOPER          NUMBER(18)          not null,
   COD_DIVORIG          VARCHAR2(3)         not null,
   IMP_TOTORIG          NUMBER(21,6)        not null,
   COD_DIVINT           VARCHAR2(3)         not null,
   IMP_INTRMS           NUMBER(21,6)        not null,
   COD_DIVCOM           VARCHAR2(3)         not null,
   IMP_COMRMS           NUMBER(21,6)        not null,
   COD_DIVGAS           VARCHAR2(3)         not null,
   IMP_GASTORMS         NUMBER(21,6)        not null,
   COD_PROGRAMA         VARCHAR2(8)         not null,
   COD_PERSCTPN         VARCHAR2(9)         not null,
   AUD_USUALTA          VARCHAR2(8)         not null,
   AUD_TIMALTA          TIMESTAMP           not null,
   COD_APXNOMMA         VARCHAR2(20)        not null,
   COD_APXGRUSE         VARCHAR2(20)        not null,
   TIM_APXIPL           TIMESTAMP           not null,
   
   constraint CQWXBALC primary key (QNU_UID, COD_NUORDLOT, COD_APXNOMMA, COD_APXGRUSE, TIM_APXIPL)
)

;

/*==============================================================*/
/* Table: TQWXBBLC                                              */
/*==============================================================*/
CREATE TABLE IF NOT EXISTS QWXB.TQWXBBLC  (
   QNU_UID              NUMBER(11)          not null,
   COD_NUORDLOT         NUMBER(6)           not null,
   FEC_CONTABLE         DATE                not null,
   QNU_UIDRELAC         NUMBER(11)          not null,
   COD_IBANORIG         VARCHAR2(4)         not null,
   DES_CTAORIG          VARCHAR2(30)        not null,
   COD_PAISORIG         VARCHAR2(2)         not null,
   COD_IBANDEST         VARCHAR2(4)         not null,
   DES_CTADEST          VARCHAR2(30)        not null,
   COD_PAISEST          VARCHAR2(2)         not null,
   COD_TICLIET          VARCHAR2(2)         not null,
   COD_DOCCLI           VARCHAR2(20)        not null,
   COD_DIISOALF         VARCHAR2(3)         not null,
   IMP_TOT              NUMBER(21,6)        not null,
   COD_TIPREF1          VARCHAR2(2)         not null,
   DES_REF1             VARCHAR2(40)        not null,
   COD_TIPREF2          VARCHAR2(2)         not null,
   DES_REF2             VARCHAR2(40)        not null,
   FEC_OPE              DATE                not null,
   DES_OBSERVDE         VARCHAR2(40)        not null,
   COD_ERRAVI           VARCHAR2(8)         not null,
   COD_SEVERR           VARCHAR2(2)         not null,
   COD_ERRORVA1         VARCHAR2(15)        not null,
   COD_ERRORVA2         VARCHAR2(15)        not null,
   COD_RMSOPER          NUMBER(18)          not null,
   COD_DIVORIG          VARCHAR2(3)         not null,
   IMP_TOTORIG          NUMBER(21,6)        not null,
   COD_DIVINT           VARCHAR2(3)         not null,
   IMP_INTRMS           NUMBER(21,6)        not null,
   COD_DIVCOM           VARCHAR2(3)         not null,
   IMP_COMRMS           NUMBER(21,6)        not null,
   COD_DIVGAS           VARCHAR2(3)         not null,
   IMP_GASTORMS         NUMBER(21,6)        not null,
   COD_PROGRAMA         VARCHAR2(8)         not null,
   COD_PERSCTPN         VARCHAR2(9)         not null,
   AUD_USUALTA          VARCHAR2(8)         not null,
   AUD_TIMALTA          TIMESTAMP           not null,
   COD_APXNOMMA         VARCHAR2(20)        not null,
   COD_APXGRUSE         VARCHAR2(20)        not null,
   TIM_APXIPL           TIMESTAMP           not null,
   
   constraint CQWXBBLC primary key (QNU_UID, COD_NUORDLOT, COD_APXNOMMA, COD_APXGRUSE, TIM_APXIPL)
)

;

/*==============================================================*/
/* Table: TQWXBAIG                                              */
/*==============================================================*/
CREATE TABLE IF NOT EXISTS QWXB.TQWXBAIG  (
   AUD_FECMOD           DATE                            not null,
   AUD_USUAMOD          VARCHAR2(8)                     not null,
   COD_APLREFAP         VARCHAR2(2)                     not null,
   COD_APXGRUSE         VARCHAR2(20)                    not null,
   COD_APXNOMMA         VARCHAR2(20)                    not null,
   COD_COMERCOM         VARCHAR2(20)                    not null,
   COD_CONCONT1         VARCHAR2(4)                     not null,
   COD_CONCONT2         VARCHAR2(4)                     not null,
   COD_DB2_ID           VARCHAR2(8)                     not null,
   COD_DIVISOAL         VARCHAR2(3)                     not null,
   COD_DOCUMPS          VARCHAR2(25)                    not null,
   COD_ENTALFA 			VARCHAR2(4)						not null,
   COD_ENTCONT1         VARCHAR2(4)                     not null,
   COD_ENTCONT2         VARCHAR2(4)                     not null,
   COD_ENTTOMAD         VARCHAR2(4)                     not null,
   COD_FECOPEIG         VARCHAR2(8)                     not null,
   COD_FOLCONT1         VARCHAR2(14)                    not null,
   COD_FOLCONT2         VARCHAR2(14)                    not null,
   COD_IUCCONT1         VARCHAR2(26)                    not null,
   COD_IUCCONT2         VARCHAR2(26)                    not null,
   COD_IUCTARJ          VARCHAR2(26)                    not null,
   COD_NSECONT1         VARCHAR2(9)                     not null,
   COD_NSECONT2         VARCHAR2(9)                     not null,
   COD_OFIALFA			VARCHAR2(4)						not null,
   COD_OFICONT1         VARCHAR2(4)                     not null,
   COD_OFICONT2         VARCHAR2(4)                     not null,
   COD_OFITOMAD         VARCHAR2(4)                     not null,
   COD_PAN              VARCHAR2(19)                    not null,
   COD_PERSCTPN         VARCHAR2(9)                     not null,
   COD_PUESTOT 			VARCHAR2(4)						not null,
   COD_SUBTIOP 			VARCHAR2(2)						not null,
   COD_TIOPERC 			VARCHAR2(2)						not null,
   COD_TIPCONIG         VARCHAR2(2)                     not null,
   COD_TIPREFAP         VARCHAR2(2)                     not null,
   COD_TST1             VARCHAR2(4)                     not null,
   COD_TST2             VARCHAR2(4)                     not null,
   COD_TXLOG 			VARCHAR2(8)						not null,
   COD_VRSNOP 			VARCHAR2(2)						not null,
   DES_DETCONT1         VARCHAR2(40)                    not null,
   DES_DETCONT2         VARCHAR2(40)                    not null,
   DES_REFREFAP         VARCHAR2(20)                    not null,
   FEC_EJEC             DATE                            not null,
   HMS_EJEC 			DATE							not null,
   IMP_TOTOPEIG         NUMBER(21,6)                    not null,
   QNU_NUMREMES         NUMBER(11,0)                    not null,
   QNU_UID              NUMBER(11,0)                    not null,
   QNU_UID_ULT          NUMBER(6,0)                     not null,
   TIM_APXIPL           TIMESTAMP                       not null,
   XTI_DOCUMPS          VARCHAR2(1)                     not null,
   IMP_COMISRUI			NUMBER(18,6),
   COD_CANAL_AP			VARCHAR2(2),
   COD_MEDIO_AP			VARCHAR2(4),
   COD_SERV_AP			VARCHAR2(4),
   COD_CANAL_DV 		VARCHAR2(2),
   COD_SUBCANL 			VARCHAR2(4),
   COD_SERV_DV 			VARCHAR2(4),
   COD_PAISOALF 		VARCHAR2(2),
   FEC_CANAL 			DATE,
   HMS_CANAL 			DATE,
   COD_ERRAVI 			VARCHAR2(8),
   COD_SEVERR 			VARCHAR2(2),
   constraint CQWXBAIG primary key (COD_APXNOMMA, COD_APXGRUSE, TIM_APXIPL, QNU_UID)
)

;

/*==============================================================*/
/* Table: TQWXBBIG                                              */
/*==============================================================*/
CREATE TABLE IF NOT EXISTS QWXB.TQWXBBIG  (
   AUD_FECMOD           DATE                            not null,
   AUD_USUAMOD          VARCHAR2(8)                     not null,
   COD_APLREFAP         VARCHAR2(2)                     not null,
   COD_APXGRUSE         VARCHAR2(20)                    not null,
   COD_APXNOMMA         VARCHAR2(20)                    not null,
   COD_COMERCOM         VARCHAR2(20)                    not null,
   COD_CONCONT1         VARCHAR2(4)                     not null,
   COD_CONCONT2         VARCHAR2(4)                     not null,
   COD_DB2_ID           VARCHAR2(8)                     not null,
   COD_DIVISOAL         VARCHAR2(3)                     not null,
   COD_DOCUMPS          VARCHAR2(25)                    not null,
   COD_ENTCONT1         VARCHAR2(4)                     not null,
   COD_ENTCONT2         VARCHAR2(4)                     not null,
   COD_ENTTOMAD         VARCHAR2(4)                     not null,
   COD_ENTALFA 			VARCHAR2(4)						not null,
   COD_FECOPEIG         VARCHAR2(8)                     not null,
   COD_FOLCONT1         VARCHAR2(14)                    not null,
   COD_FOLCONT2         VARCHAR2(14)                    not null,
   COD_IUCCONT1         VARCHAR2(26)                    not null,
   COD_IUCCONT2         VARCHAR2(26)                    not null,
   COD_IUCTARJ          VARCHAR2(26)                    not null,
   COD_NSECONT1         VARCHAR2(9)                     not null,
   COD_NSECONT2         VARCHAR2(9)                     not null,
   COD_OFIALFA 			VARCHAR2(4)						not null,
   COD_OFICONT1         VARCHAR2(4)                     not null,
   COD_OFICONT2         VARCHAR2(4)                     not null,
   COD_OFITOMAD         VARCHAR2(4)                     not null,
   COD_PAN              VARCHAR2(19)                    not null,
   COD_PERSCTPN         VARCHAR2(9)                     not null,
   COD_PUESTOT 			VARCHAR2(4)						not null,
   COD_SUBTIOP 			VARCHAR2(2)						not null,
   COD_TIPCONIG         VARCHAR2(2)                     not null,
   COD_TIPREFAP         VARCHAR2(2)                     not null,
   COD_TIOPERC 			VARCHAR2(2)						not null,
   COD_TST1             VARCHAR2(4)                     not null,
   COD_TST2             VARCHAR2(4)                     not null,
   COD_TXLOG 			VARCHAR2(8)						not null,
   COD_VRSNOP 			VARCHAR2(2)						not null,
   DES_DETCONT1         VARCHAR2(40)                    not null,
   DES_DETCONT2         VARCHAR2(40)                    not null,
   DES_REFREFAP         VARCHAR2(20)                    not null,
   FEC_EJEC             DATE                            not null,
   HMS_EJEC 			DATE							not null,
   IMP_TOTOPEIG         NUMBER(21,6)                    not null,
   QNU_NUMREMES         NUMBER(11,0)                    not null,
   QNU_UID              NUMBER(11,0)                    not null,
   QNU_UID_ULT          NUMBER(6,0)                     not null,
   TIM_APXIPL           TIMESTAMP                       not null,
   XTI_DOCUMPS          VARCHAR2(1)                     not null,
   IMP_COMISRUI			NUMBER(18,6),
   COD_CANAL_AP			VARCHAR2(2),
   COD_MEDIO_AP			VARCHAR2(4),
   COD_SERV_AP			VARCHAR2(4),
   COD_CANAL_DV         VARCHAR2(2),
   COD_SUBCANL 			VARCHAR2(4),
   COD_SERV_DV 			VARCHAR2(4),
   COD_PAISOALF 		VARCHAR2(2),
   FEC_CANAL 			DATE,
   HMS_CANAL 			DATE,
   COD_ERRAVI 			VARCHAR2(8),
   COD_SEVERR 			VARCHAR2(2),
   constraint CQWXBBIG primary key (COD_APXNOMMA, COD_APXGRUSE, TIM_APXIPL, QNU_UID)
)

;








COMMIT;