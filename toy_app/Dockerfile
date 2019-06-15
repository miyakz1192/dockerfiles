FROM docker.io/miyakz1192/rails:1
MAINTAINER miyakz1192 <miyakz1192@gmail.com>

RUN  TMP_BUNDLE_VER=`bundler -v` ; gem uninstall bundler $TMP_BUNDLE_VER ; gem install bundler -v 2.0.1
RUN  cd / ; git clone https://github.com/miyakz1192/rails_apps.git ; cd /rails_apps/toy_app ; bundle install 
