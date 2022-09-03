# ENTORNO LOCAL APX -


## Desarrollado por: Cristhian Paraguay <cristhian.paraguay.contractor@bbva.com>
## Sumario
* [Primeros Paso](#init)
* [[Estructura APX]](#apx)
* [[Estructura BD]](#bd)
* [[Configuración de propiedades locales]](#propiedades)
* [Comandos](#comandos)
* [Probar en local](#probar-en-local)

## INIT
### | Descargar todas las imagenes |
```bash
#Descargar todas las imagenes
docker-compose -f docker-compose.yml pull
```

## APX
### | Estructura del entorno apx |

```bash
ephemeral/apx
├── logs
├── dirBaseRepositorio
└── standalone.xml
```


#### logs
Carpeta de salida de los logs.

```bash
logs
├── qwpo_UuaasDefault.log    | pintado de los logs de desarrollo a nivel de consola.
├── server.log               | logs del servidor jboss.
├── qwpo_RuntimeOnline.log   | logs del aplicativo bundle, el gestor de aplicaciones basado en osgi.
└── APX_Operation_BBVA.log   | logs de la configuacion de la consola de operacion del entorno apx.
```

#### dirBaseRepositorio
Carpeta donde se instalara los componentes a desplegar.

#### standalone.xml
Archivo de configuración de nuestro jboss.

### | Lanzar solo el entorno apx |

1. Lanzar comando para levantar el entorno apx.
```bash
#Lanzar solo Apx
docker-compose -f docker-compose.yml up -d apx-local
```

2. Comprobar que las siguientes urls esten disponibles, se debe hacer en orden.

```bash

# 1.- Revisar Apx Operation
http://localhost:8101/APX_Operation/?iv-user=ADMIN

# 2.- Revisa el status, debe indicar ARCHITECTURE READY
http://localhost:8101/APX_Repository/check/status.do


# 3.- Revisa que el bundle este disponible, la contraseña para el ingreso es admin/admin
http://localhost:8101/APX_Runtime_Online/system/console/bundles


```

3. Luego que ya este disponible nuestro ambiente, colocar nuestras transaciones apx en:
```bash
ephemeral/apx
├── ....
├── dirBaseRepositorio      | Colocar aqui nuestras transacciones.
└── ...
```

4. Bajar servicio solo de apx
```bash
#Detener solo Apx
docker-compose -f docker-compose.yml stop apx-local
```

5. Reiniciar servicio solo de apx
```bash
#Reiniciar solo Apx
docker-compose -f docker-compose.yml restar apx-local
```

## BD
### | Estructura del entorno BD Oracle |

```bash
#Los sql se lanza en orden alfabetico.
#Los scrips sql iran en función a lo que tengamos que tener construido al momento del arranque de la bdoracle.

ephemeral/oracle
├── init.sql | sql inicial de arranque, sirve para la creacion de esquemas y usuarios.
├── ppan.sql | sql de nuestro esquema, crea la estructura de tablas de nuestro esquema.

```

### | Lanzar la bd Oracle |

1. Lanzar comando para iniciar la bd oracle.
```bash
#Lanzar solo dboracle
docker-compose -f docker-compose.yml up -d dboracle
```


2. Esperar y luego intentar conectarse a nuestra ide para nuestra bd oracle.
```bash
#Datos de conexión
Host: localhost
Puerto: 1521
SID: XE
```

```bash
#Credenciales de conexión PPAN
Usuario: PPAN
Contraseña: 123456
```

3. Bajar servicio solo de dboracle
```bash
#Detener solo dboracle
docker-compose -f docker-compose.yml stop dboracle
```

4. Reiniciar servicio solo de dboracle
```bash
#Bajar solo dboracle
docker-compose -f docker-compose.yml restart dboracle
```

## PROPIEDADES
### | Configuraciónes necesarias para registrar propiedades en modo local
#### | Servicios ASO
1. Implementar un servicio mock que actué como token, luego registrarlo en el archivo **...dirBaseEjecucion\qwjr\online\sql\QWJR_DDL.sql**

```bash
UPDATE QWJR.TQWJRCAR
SET DES_CFG_DATA = 'http://host.docker.internal:9091/V02'
WHERE DES_COD_CFG = 'security.token.url';
COMMIT;
```
2. Implementar Los servicios web mock o locales que van a ser usados, luego registrarlo en el archivo **...dirBaseEjecucion\qwjr\online\sql\QWJR_DDL.sql**

```bash
-- URL Token JWT - Notificacion Manager
MERGE INTO QWJR.TQWJRCAP (DES_COD_CFG, XTI_REC_TYPE, COD_APLICACI, DES_CFG, TIM_FX_MODIF, XTI_REC_STAT, DES_CFG_DATA, AUD_USUARIO,	DES_FAMILYPR,	DES_CFG2,	XTI_DEP, COD_PROFI) values ('api.connector.jwtNotificacion.url', '1', 'FLVX',	null, PARSEDATETIME('21/01/2019 18:11:18,0','dd/MM/yy HH:mm:ss,SS'), '3', 'http://host.docker.internal:9091/auth/token?grant_type=client_credentials', 'ADMIN', 'Servicio ASO', 'propiedades - onl_notification_manager', '0', 'DE');
MERGE INTO QWJR.TQWJRCAP (DES_COD_CFG, XTI_REC_TYPE, COD_APLICACI, DES_CFG, TIM_FX_MODIF, XTI_REC_STAT, DES_CFG_DATA, AUD_USUARIO,	DES_FAMILYPR,	DES_CFG2,	XTI_DEP, COD_PROFI) values ('api.connector.jwtNotificacion.invoke.type', '1', 'FLVX',	null, PARSEDATETIME('21/01/2019 18:11:18,0','dd/MM/yy HH:mm:ss,SS'), '3', '2', 'ADMIN', 'Servicio ASO', 'propiedades - onl_notification_manager', '0', 'DE');

-- URL enviar - Notificacion Manager
MERGE INTO QWJR.TQWJRCAP (DES_COD_CFG, XTI_REC_TYPE, COD_APLICACI, DES_CFG, TIM_FX_MODIF, XTI_REC_STAT, DES_CFG_DATA, AUD_USUARIO,	DES_FAMILYPR,	DES_CFG2,	XTI_DEP, COD_PROFI) values ('api.connector.enviarNotificacion.url', '1', 'FLVX',	null, PARSEDATETIME('21/01/2019 18:11:18,0','dd/MM/yy HH:mm:ss,SS'), '3', 'http://host.docker.internal:9091/notifications-manager/v1/notifications', 'ADMIN', 'Servicio ASO', 'propiedades - onl_notification_manager', '0', 'DE');
MERGE INTO QWJR.TQWJRCAP (DES_COD_CFG, XTI_REC_TYPE, COD_APLICACI, DES_CFG, TIM_FX_MODIF, XTI_REC_STAT, DES_CFG_DATA, AUD_USUARIO,	DES_FAMILYPR,	DES_CFG2,	XTI_DEP, COD_PROFI) values ('api.connector.enviarNotificacion.invoke.type', '1', 'FLVX',	null, PARSEDATETIME('21/01/2019 18:11:18,0','dd/MM/yy HH:mm:ss,SS'), '3', '2', 'ADMIN', 'Servicio ASO', 'propiedades - onl_notification_manager', '0', 'DE');

```

## Comandos
### | Comandos para trabajar con todos los servicios | Solo usar si se tiene buenos recursos disponibles.

Antes, ubicarse en la misma ruta exacta del archivo **docker-compose.yml**

1. Iniciar todo los servicios
```bash
#Lanzar todo
docker-compose -f docker-compose.yml up -d
```

2. Bajar todos los servicios
```bash
#Bajar todo
docker-compose -f docker-compose.yml down
```

2. Visualizar todos los servicios
```bash
#Visualizar los contenedores desplegados
docker-compose -f docker-compose.yml ps
```
3. Reiniciar todos los servicios.
```bash
docker compose -f docker-compose.yml restart
```

4. Reiniciar solo wiremock
```bash
#Datos de conexión
docker compose -f docker-compose.yml server-web-mock
```

5. Reiniciar solo apx
```bash
#Datos de conexión
docker compose -f docker-compose.yml apx-local
```

## PROBAR EN LOCAL
### | Lanzar Comando |

1. Lanzar comando para iniciar el contexto de prueba.
```bash
docker compose -f docker-compose.yml up -d apx-local server-web-mock dboracle
```

2. Lanzar liquibase: ubicarse en la ruta del pom 

```bash
liquibase\pom.xml
```
2. 1. Lanzar liquibase: lanzar el siguiente comando
```bash
mvn liquibase:update
```

3. Lanzar postman: lanzar la prueba en postman del suguiente folder
```bash
strong warriors\apx\flujo-local-exitoso\P12RT001 - enviarNotificacion
```

