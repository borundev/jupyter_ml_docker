export NB_UID=$(id -u)
export NB_GID=$(id -g)
export NB_USER=$(whoami)
export HOSTNAME=$(hostname)

export ML_HTTP_USER=user
export ML_HTTP_AUTH_PASS_ENC="\$apr1\$0rh0Tkr3\$ALeFxLzN7Q7m7fvaBFB8H0"

if [ -z ${NOTEBOOKS_FOLDER+x} ]; then echo "NOTEBOOKS_FOLDER is unset"; else echo "NOTEBOOKS_FOLDER is set to '$NOTEBOOKS_FOLDER'"; fi