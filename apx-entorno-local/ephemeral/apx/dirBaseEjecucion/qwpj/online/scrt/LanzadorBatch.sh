#!/usr/bin/ksh

################################################################################
#   LanzadorBatch.sh                                            ELARA BATCH
#
#      Lanzador de procesos batch
#
################################################################################
#  SINTAXIS:
#
#     LanzadorBatch.sh <NOMBRE_JOB> [<PARAMETRO=VALOR> ...]
#
#         	NOMBRE_JOB = nombre del job a ejecutar (sin .jar)
#		PARAMETRO=VALOR = listado de parametros y sus valores recibidos por el job
#
################################################################################

ENTORNO=/D/lo

#Comprobacion de parametros de entrada
if [ $# -lt 1 ]
then
	echo "#######################"
       echo "PARAMETROS INCORRECTOS nombre_job [parametro=valor ...]"
       echo "#######################"
       exit 1
fi

#echo "$PATH"

#Añadir al PATH la JRE
#if [ "$JRE" = "SI" ] ;
#  then	
#    JRE=SI
#  else  
#    PATH=
#    export PATH
#    JRE=SI
#    export JRE
#fi;

# Se llama al lanzador de jobs
java -classpath "$ENTORNO/qwjj/batch/es/jar:$ENTORNO/qwjj/batch/es/jar/com.springsource.org.apache.log4j-1.2.16.jar:$ENTORNO/qwjj/batch/es/jar/com.springsource.slf4j.api-1.6.1.jar:$ENTORNO/qwjj/batch/es/jar/com.springsource.slf4j.log4j-1.6.1.jar:$ENTORNO/qwjj/batch/es/jar/elara-batch-domain.jar:$ENTORNO/qwjj/batch/es/jar/qwjj_batch_launcher.jar" com.bbva.elara.LoaderMain $* $ENTORNO
RC=$?

#Comprobacion del retorno del lanzador
echo "#######################"

case $RC in

0)
	echo "EJECUCION FINALIZADA. EL JOB HA FINALIZADO CON ESTADO COMPLETED."
	;;
4)
	echo "EJECUCION FINALIZADA. EL JOB HA FINALIZADO CON ESTADO STOPPED."
	;;
5)
	echo "EJECUCION FINALIZADA. EL JOB HA FINALIZADO CON ESTADO FAILED."
	;;
6)
	echo "EJECUCION FINALIZADA. EL JOB HA FINALIZADO CON ESTADO ABANDONED."
	;;
7)
	echo "EJECUCION FINALIZADA. EL JOB HA FINALIZADO CON ESTADO UNKNOWN."
	;;

9)
	echo "OPERACION REALIZADA."
	;;
	
*)
	echo "EJECUCION FINALIZADA CON ESTADO DEL JOB DESCONOCIDO."
	RC=13
	;;
esac

echo "#######################"

echo "RC = ${RC}"

exit $RC

