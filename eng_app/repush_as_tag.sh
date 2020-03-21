set -x

tag=$1

if [ -z $tag ]; then
  tag=1
fi

#delete sudo docker image rm miyakz1192/eng_app:1 docker image

sudo docker image list | grep "miyakz1192/eng_app " | awk '{print $2}' | while read line
do
  sudo docker image rm miyakz1192/eng_app:${line}
done

sudo docker build -t eng_app . --no-cache
sudo docker tag `sudo docker image list | grep "eng_app " | awk '{print $3}'` miyakz1192/eng_app:${tag}
sudo docker push miyakz1192/eng_app:${tag}


