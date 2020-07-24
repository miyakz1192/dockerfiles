FROM docker.io/miyakz1192/eng_app_base:1
MAINTAINER miyakz1192 <miyakz1192@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN cd / ; git clone https://github.com/miyakz1192/english_study_app_word_meaning.git ; cd /english_study_app/eng_app_word_meaning ; bundle install
RUN cd /english_study_app_word_meaning/eng_app_word_meaning ; rails webpacker:install

RUN  cd /english_study_app_word_meaning/eng_app_word_meaning ; git pull origin master
