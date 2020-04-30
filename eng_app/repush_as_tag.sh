set -x

tag=$1

if [ -z $tag ]; then
  tag=1
fi

#delete docker image rm miyakz1192/eng_app:1 docker image

docker image list | grep "miyakz1192/eng_app " | awk '{print $2}' | while read line
do
  docker image rm miyakz1192/eng_app:${line}
done

docker build -t eng_app . --no-cache
docker tag `docker image list | grep "miyakz1192/eng_app " | awk '{print $3}'` miyakz1192/eng_app:${tag}
docker push miyakz1192/eng_app:${tag}


