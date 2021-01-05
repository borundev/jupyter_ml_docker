#!/bin/bash
export NB_UID=$(id -u)
export NB_GID=$(id -g)
export NB_USER=$(whoami)
if [ -z ${HOSTNAME+x} ]
then 
	export HOSTNAME=$(hostname)
	echo "SETTING HOSTNAME = '$HOSTNAME'"
else 
	echo "HOSTNAME = '$HOSTNAME'"
fi

export ML_HTTP_USER=user
export ML_HTTP_AUTH_PASS_ENC="\$apr1\$8WVsyj71\$PYI615e5zi40cmlzPvph6."
export MINIO_ACCESS_KEY=minio
export MINIO_SECRET_KEY=minio@fey9ma9
export MINIO_DIR=$HOME/minio/
export MINIO_HTTP_USER=user
export MINIO_HTTP_AUTH_PASS_ENC="\$apr1\$8WVsyj71\$PYI615e5zi40cmlzPvph6."


if [ -z ${NOTEBOOKS_FOLDER+x} ]; then echo "NOTEBOOKS_FOLDER is unset"; else echo "NOTEBOOKS_FOLDER is set to '$NOTEBOOKS_FOLDER'"; fi
