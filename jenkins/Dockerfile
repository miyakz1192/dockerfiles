FROM docker.io/ubuntu:19.10
MAINTAINER miyakz1192 <miyakz1192@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir /var/lib/jenkins ; apt update;apt install wget -y ;apt install gnupg -y ;apt install openjdk-11-jdk -y ;(wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key |  apt-key add -) ; bash -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list' ;   apt update ; apt install git -y ; apt install jenkins -y



