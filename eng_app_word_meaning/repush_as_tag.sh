set -x

if [ $# -ne 1 ]; then
  echo "USAGE: tag"
  exit 1
fi

tag=$1

if [ -z $tag ]; then
  tag=4
fi

docker image rm eng_app_word_meaning:latest

docker image list | grep "miyakz1192/eng_app_word_meaning " | awk '{print $2}' | while read line
do
  docker image rm miyakz1192/eng_app_word_meaning:${line}
done

docker build -t eng_app_word_meaning . --no-cache
docker tag `docker image list | grep "^eng_app_word_meaning " | awk '{print $3}'` miyakz1192/eng_app_word_meaning:${tag}
docker push miyakz1192/eng_app_word_meaning:${tag}


