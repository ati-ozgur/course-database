#!/bin/bash

# https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
# The -e option will cause a bash script to exit immediately when a command fails. 
# The -u option causes the bash shell to treat unset variables as an error and exit immediately. 
# The -x option causes bash to print each command before executing it. 
# The -o pipefail option sets the exit code of a pipeline to 
# that of the rightmost command to exit with a non-zero status.

set -euo pipefail

CONTAINER_NAME="chinook-sqlserver-container1"
IMAGE_NAME="chinook-sqlserver-image1"
DB_PASSWORD="Karkas@Passw0rd"

#!/bin/bash

WORKING_DIR=$PWD
echo $PWD



docker build -t $IMAGE_NAME .

echo "docker build finished"

if docker ps -a --format '{{.Names}}' | grep -q "^$CONTAINER_NAME\$"; then
     echo "Container $CONTAINER_NAME is running"
     echo "Stopping Container $CONTAINER_NAME "
  	docker stop "$CONTAINER_NAME" &>/dev/null && echo "Stopped container $CONTAINER_NAME"
  	docker rm "$CONTAINER_NAME"
 else
   echo "Container $CONTAINER_NAME is not running"
 fi

echo "starting docker container $CONTAINER_NAME with image $IMAGE_NAME"

docker run --detach -p 1433:1433 --name $CONTAINER_NAME  --hostname $CONTAINER_NAME  $IMAGE_NAME



CONTAINER_ID=$(docker inspect --format="{{.Id}}" "$CONTAINER_NAME")
echo "CONTAINER_ID $CONTAINER_ID"


timeout 60s grep -q 'Recovery is complete' <(docker logs -f $CONTAINER_ID) || exit 1


echo "go to ${WORKING_DIR}"
cd $WORKING_DIR

CONTAINER_ID=$(docker inspect --format="{{.Id}}" "$CONTAINER_NAME")
echo "CONTAINER_ID ${CONTAINER_ID}"


docker exec $CONTAINER_ID bash /home/create_chinook_sqlserver_autoincrementpks.bash



