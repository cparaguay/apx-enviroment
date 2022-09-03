set mode Oracle;

CREATE SCHEMA IF NOT EXISTS ETNZ;


/*==============================================================*/
/* Table: TQPIPLAN                                              */
/*==============================================================*/
CREATE TABLE IF NOT EXISTS ETNZ.TQPIPLAN 
(
   COD_IDIOMISO         VARCHAR2(2)     not null,
   DES_IDIOMA_C         VARCHAR2(40)    not null,
   constraint CQPIPLAN primary key (COD_IDIOMISO)
)

;

/*==============================================================*/
/* Table: TQPIPLIT                                              */
/*==============================================================*/
CREATE TABLE IF NOT EXISTS ETNZ.TQPIPLIT 
(
   COD_APLICACI        VARCHAR2(4)     NOT NULL,
   COD_IDIOMISO         VARCHAR2(2)     not null,
   COD_TRADUCC          VARCHAR2(10)     not null,
   XTI_TRADUCC			VARCHAR2(1)		not null,
   DES_CORTALIT			VARCHAR2(40)	not null,
   DES_LITERALM			VARCHAR2(80)	not null,
   AUD_USUALTA			VARCHAR2(8)		not null,
   AUD_TIMALTA			TIMESTAMP		not null,
   AUD_USUMOD			VARCHAR2(8)		not null,
   AUD_TIMMOD			TIMESTAMP		not null,
   COD_TABLA			VARCHAR2(8)		not null,
   DES_LARGALIT			VARCHAR2(3000)	not null,
   XTI_LTCORTO			VARCHAR2(1)		not null,
   XTI_LTNORMAL			VARCHAR2(1)		not null,
   XTI_LTLARGO			VARCHAR2(1)		not null,
   XTI_ORIGINAL			VARCHAR2(1)		not null,
   constraint CQPIPLIT primary key (COD_TRADUCC, COD_IDIOMISO),
   constraint RQPIPLAN_QPIPLIT_1 foreign key (COD_IDIOMISO) references ETNZ.TQPIPLAN (COD_IDIOMISO)	
)
;

commit;

MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('EN' , 'ingles' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ES' , 'espanol' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('aa' , 'afar' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ab' , 'abjaso (o abjasiano)' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ae' , 'avéstico' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('af' , 'afrikaans' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ak' , 'akano' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('am' , 'amárico' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('an' , 'aragonés' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ar' , 'árabe' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('as' , 'asamés' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('av' , 'avar' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ay' , 'aimara' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('az' , 'azerí' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ba' , 'baskir' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('be' , 'bielorruso' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('bg' , 'búlgaro' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('bh' , 'bhojpurí' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('bi' , 'bislama' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('bm' , 'bambara' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('bn' , 'bengalí' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('bo' , 'tibetano' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('br' , 'bretón' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('bs' , 'bosnio' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ca' , 'catalán' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ce' , 'checheno' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ch' , 'chamorro' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('co' , 'corso' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('cr' , 'cree' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('cs' , 'checo' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('cu' , 'eslavo eclesiástico antiguo' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('cv' , 'chuvasio' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('cy' , 'galés' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('da' , 'danés' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('de' , 'alemán' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('dv' , 'maldivo' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('dz' , 'dzongkha' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ee' , 'ewe' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('el' , 'griego (moderno)' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('en' , 'inglés' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('eo' , 'esperanto' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('es' , 'español (o castellano)' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('et' , 'estonio' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('eu' , 'euskera' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('fa' , 'persa' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ff' , 'fula' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('fi' , 'finés (o finlandés)' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('fj' , 'fiyiano (o fiyi)' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('fo' , 'feroés' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('fr' , 'francés' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('fy' , 'frisón (o frisio)' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ga' , 'irlandés (o gaélico)' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('gd' , 'gaélico escocés' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('gl' , 'gallego' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('gn' , 'guaraní' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('gu' , 'guyaratí (o guyaratí)' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('gv' , 'manés (gaélico manés o de Isla de Man)' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ha' , 'hausa' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('he' , 'hebreo' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('hi' , 'hindi (o hindú)' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ho' , 'hiri motu' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('hr' , 'croata' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ht' , 'haitiano' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('hu' , 'húngaro' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('hy' , 'armenio' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('hz' , 'herero' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ia' , 'interlingua' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('id' , 'indonesio' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ie' , 'occidental' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ig' , 'igbo' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ii' , 'yi de Sichuán' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ik' , 'inupiaq' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('io' , 'ido' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('is' , 'islandés' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('it' , 'italiano' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('iu' , 'inuktitut' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ja' , 'japonés' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('jv' , 'javanés' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ka' , 'georgiano' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('kg' , 'kongo' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ki' , 'kikuyu' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('kj' , 'kuanyama' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('kk' , 'kazajo (o kazajio)' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('kl' , 'groenlandés (o kalaallisut)' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('km' , 'camboyano (o jemer)' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('kn' , 'canarés' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ko' , 'coreano' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('kr' , 'kanuri' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ks' , 'cachemiro' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ku' , 'kurdo' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('kv' , 'komi' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('kw' , 'córnico' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ky' , 'kirguís' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('la' , 'latín' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('lb' , 'luxemburgués' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('lg' , 'luganda' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('li' , 'limburgués' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ln' , 'lingala' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('lo' , 'lao' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('lt' , 'lituano' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('lu' , 'luba-katanga' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('lv' , 'letón' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('mg' , 'malgache (o malagasy)' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('mh' , 'marshalés' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('mi' , 'maorí' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('mk' , 'macedonio' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ml' , 'malayalam' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('mn' , 'mongol' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('mr' , 'maratí' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ms' , 'malayo' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('mt' , 'maltés' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('my' , 'birmano' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('na' , 'nauruano' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('nb' , 'noruego bokmål' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('nd' , 'ndebele del norte' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ne' , 'nepalí' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ng' , 'ndonga' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('nl' , 'neerlandés (u holandés)' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('nn' , 'nynorsk' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('no' , 'noruego' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('nr' , 'ndebele del sur' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('nv' , 'navajo' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ny' , 'chichewa' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('oc' , 'occitano' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('oj' , 'ojibwa' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('om' , 'oromo' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('or' , 'oriya' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('os' , 'osético' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('pa' , 'panyabí (o penyabi)' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('pi' , 'pali' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('pl' , 'polaco' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ps' , 'pastú (o pashto)' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('pt' , 'portugués' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('qu' , 'quechua' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('rm' , 'retorrománico' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('rn' , 'kirundi' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ro' , 'rumano' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ru' , 'ruso' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('rw' , 'ruandés' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('sa' , 'sánscrito' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('sc' , 'sardo' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('sd' , 'sindhi' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('se' , 'sami septentrional' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('sg' , 'sango' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('sh' , 'serbocroata' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('si' , 'cingalés' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('sk' , 'eslovaco' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('sl' , 'esloveno' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('sm' , 'samoano' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('sn' , 'shona' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('so' , 'somalí' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('sq' , 'albanés' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('sr' , 'serbio' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ss' , 'suazi (swati o siSwati)' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('st' , 'sesotho' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('su' , 'sundanés' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('sv' , 'sueco' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('sw' , 'suajili' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ta' , 'tamil' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('te' , 'telugú' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('tg' , 'tayiko' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('th' , 'tailandés' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ti' , 'tigriña' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('tk' , 'turcomano' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('tl' , 'tagalo' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('tn' , 'setsuana' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('to' , 'tongano' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('tr' , 'turco' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ts' , 'tsonga' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('tt' , 'tártaro' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('tw' , 'twi' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ty' , 'tahitiano' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ug' , 'uigur' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('uk' , 'ucraniano' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ur' , 'urdu' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('uz' , 'uzbeko' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('ve' , 'venda' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('vi' , 'vietnamita' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('wl' , 'walisiano' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('vo' , 'volapük' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('wa' , 'valón' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('wo' , 'wolof' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('xh' , 'xhosa' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('yi' , 'yídish (o yiddish)' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('yo' , 'yoruba' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('za' , 'chuan (o zhuang)' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('zh' , 'chino' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('zu' , 'zulú' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('10' , 'MEXICANO' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('11' , 'ARGENTINO' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('12' , 'COLOMBIANO ' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('13' , 'PERUANO  ' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('14' , 'PUERTORRIQUEÑO ' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('15' , 'VENEZOLANO' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('16' , 'CHILENO ' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('17' , 'BRASILEÑO' );
MERGE INTO ETNZ.TQPIPLAN (COD_IDIOMISO,DES_IDIOMA_C)  VALUES('18' , 'INGLES USA' );

COMMIT;

--LITERALES
MERGE INTO ETNZ.TQPIPLIT (COD_TRADUCC,COD_IDIOMISO,XTI_TRADUCC,DES_CORTALIT,DES_LITERALM,AUD_USUALTA,AUD_TIMALTA,AUD_USUMOD,AUD_TIMMOD,COD_APLICACI,COD_TABLA,DES_LARGALIT,XTI_LTCORTO,XTI_LTNORMAL,XTI_LTLARGO,XTI_ORIGINAL) VALUES('D01211000','ES','P','EL ERROR $112$ SE HA LLEVADO ACABO','EL ERROR $112$ SE HA LLEVADO A CABO DURANTE LA EJECUCIÓN DE LA TRANSACCION','XE34865','2012-07-26','XE34865','2012-07-26','QPIP','QPIP0001','EL ERROR DE ARQUITECTURA $112$ SE HA LLEVADO ACABO DURANTE LA EJECUCION DE LA TRANSACCION DEBIDO A LA FINALIZACION DE LA EJECUCION','S','S','S','S');
MERGE INTO ETNZ.TQPIPLIT (COD_TRADUCC,COD_IDIOMISO,XTI_TRADUCC,DES_CORTALIT,DES_LITERALM,AUD_USUALTA,AUD_TIMALTA,AUD_USUMOD,AUD_TIMMOD,COD_APLICACI,COD_TABLA,DES_LARGALIT,XTI_LTCORTO,XTI_LTNORMAL,XTI_LTLARGO,XTI_ORIGINAL) VALUES('D01211001','EN','P','ERROR PROCESSING THE HEADER FIELD $115$','ERROR PROCESSING THE HEADER FIELD $115$','XE34865','2012-07-26','XE34865','2012-07-26','QPIP','QPIP0001','ERROR PROCESSING THE HEADER FIELD $115$','S','S','S','S');
MERGE INTO ETNZ.TQPIPLIT (COD_TRADUCC,COD_IDIOMISO,XTI_TRADUCC,DES_CORTALIT,DES_LITERALM,AUD_USUALTA,AUD_TIMALTA,AUD_USUMOD,AUD_TIMMOD,COD_APLICACI,COD_TABLA,DES_LARGALIT,XTI_LTCORTO,XTI_LTNORMAL,XTI_LTLARGO,XTI_ORIGINAL) VALUES('D01211002','EN','P','','','XE34865','2012-07-26','XE34865','2012-07-26','QPIP','QPIP0001','','N','N','N','S');
MERGE INTO ETNZ.TQPIPLIT (COD_TRADUCC,COD_IDIOMISO,XTI_TRADUCC,DES_CORTALIT,DES_LITERALM,AUD_USUALTA,AUD_TIMALTA,AUD_USUMOD,AUD_TIMMOD,COD_APLICACI,COD_TABLA,DES_LARGALIT,XTI_LTCORTO,XTI_LTNORMAL,XTI_LTLARGO,XTI_ORIGINAL) VALUES('D01211004','EN','P','ERROR PROCESSING THE HEADER FIELD $115$','ERROR PROCESSING THE HEADER FIELD $115$','XE34865','2012-07-26','XE34865','2012-07-26','QPIP','QPIP0001','ERROR PROCESSING THE HEADER FIELD $115$','S','S','S','S');



COMMIT;
