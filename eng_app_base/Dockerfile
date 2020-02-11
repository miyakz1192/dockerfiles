FROM docker.io/miyakz1192/rails:1
MAINTAINER miyakz1192 <miyakz1192@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

# thease install is needed for rails6 server execution. detail is shown laster
RUN apt install gnupg curl -y
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update && apt install yarn -y
RUN cd / ; git clone https://github.com/miyakz1192/english_study_app.git ; cd /english_study_app/eng_app ; bundle install 
RUN cd /english_study_app/eng_app ; rails webpacker:install

