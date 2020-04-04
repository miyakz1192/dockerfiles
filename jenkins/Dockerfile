FROM docker.io/ubuntu:19.10
MAINTAINER miyakz1192 <miyakz1192@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir /var/lib/jenkins ; apt update;apt install wget -y ;apt install gnupg -y ;apt install openjdk-11-jdk -y ;(wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key |  apt-key add -) ; bash -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list' ;   apt update ; apt install git -y ; apt install jenkins -y 

# installing docker-ce
# thanks https://qiita.com/tkyonezu/items/0f6da57eb2d823d2611d
RUN apt update; apt-get install -y apt-transport-https ca-certificates curl software-properties-common ; curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - ;  apt-key fingerprint 0EBFCD88 ; add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" ; apt update; apt-get install -y docker-ce
   
  

    
    
    
    



