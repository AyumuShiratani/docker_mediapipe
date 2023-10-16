set -x

SUDO_STRING=`groups|grep docker`
SUDO=""
if [ -z "$SUDO_STRING" ]; then
  SUDO="sudo "
fi

DOCKER_BUILDKIT=1 $SUDO docker build \
    --force-rm=true \
    -t docker_mediapipe .