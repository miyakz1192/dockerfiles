FROM docker.io/miyakz1192/rails:1
MAINTAINER miyakz1192 <miyakz1192@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN cd / ; rails new msa_app ; echo "DUMMY succcess to install webpacker in Docker building process!!!"
# thease package are needed due to installing mysql db
RUN apt update ; apt install libmariadb-dev libssl-dev gnupg curl -y
RUN apt install libmysqlclient-dev -y

RUN echo "gem 'mysql2'" >> /msa_app/Gemfile
RUN echo "gem 'dotenv-rails'" >> /msa_app/Gemfile

# thease install is needed for rails6 server execution. detail is shown laster
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update && apt install yarn -y
RUN cd /msa_app ; bundle install ; rails webpacker:install

