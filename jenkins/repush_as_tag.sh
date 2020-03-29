tag=$1
target=$2

if [ -z $target ]; then
  echo "USAGE: tag target"
  echo "EX: 1 miyakz1192/eng_app"
  echo "EX: 1 miyakz1192/jenkins"
  echo "if tag is not specified, DEFAULT TAG is 1"
  exit 1
fi

if [ -z $tag ]; then
  tag=1
fi

sudo docker image list | grep "${target} " | awk '{print $2}' | while read line
do
  sudo docker image rm ${target}:${line}
done

sudo docker build -t ${target} . --no-cache
sudo docker tag `sudo docker image list | grep "${target} " | awk '{print $3}'` ${target}:${tag}
sudo docker push ${target}:${tag}


