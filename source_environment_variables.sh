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

export ML_HTTP_USER= USERNAME
export ML_HTTP_AUTH_PASS_ENC= ENCRYPTED_PASSWORD

if [ -z ${NOTEBOOKS_FOLDER+x} ]; then echo "NOTEBOOKS_FOLDER is unset"; else echo "NOTEBOOKS_FOLDER is set to '$NOTEBOOKS_FOLDER'"; fi
