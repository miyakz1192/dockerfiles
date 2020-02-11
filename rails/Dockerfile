FROM docker.io/ubuntu:19.10
MAINTAINER miyakz1192 <miyakz1192@gmail.com>

#thank you this link
#https://qiita.com/yagince/items/deba267f789604643bab
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update ;  apt-get --ignore-missing install build-essential git-core curl openssl libssl-dev libcurl4-openssl-dev zlib1g zlib1g-dev libreadline6-dev libyaml-dev libxml2-dev libxslt1-dev libffi-dev software-properties-common libgdm-dev libncurses5-dev automake autoconf bison libpq-dev pgadmin3 libc6-dev ruby-dev libsqlite3-dev libsqlite3-0 nodejs git make gcc ruby ruby-dev g++ libmariadb-dev -y

RUN  gem install bundler ; gem install rails 

