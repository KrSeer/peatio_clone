FROM peatio_base

MAINTAINER joffrey.oh@gmail.com

RUN git clone https://github.com/KrSeer/peatio_clone $APP_HOME/peatio

RUN cd $APP_HOME/peatio; gem install bundler; bundle install

RUN cd $APP_HOME/peatio; bundle exec rake tmp:create

WORKDIR $APP_HOME/peatio
