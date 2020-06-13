set -x

if [ $# -ne 1 ]; then
  echo "USAGE: tag"
  exit 1
fi

tag=$1

if [ -z $tag ]; then
  tag=4
fi

docker image rm msa_app:latest

docker image list | grep "miyakz1192/msa_app " | awk '{print $2}' | while read line
do
  docker image rm miyakz1192/msa_app:${line}
done

docker build -t msa_app . --no-cache
docker tag `docker image list | grep "^msa_app " | awk '{print $3}'` miyakz1192/msa_app:${tag}
docker login
docker push miyakz1192/msa_app:${tag}


