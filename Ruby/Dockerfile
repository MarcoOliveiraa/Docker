FROM ruby:2.5.1

RUN apt-get update
RUN apt-get install -y ruby-full
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get install -y nodejs npm
RUN apt-get install -y npm
RUN npm install -g yarn

CMD gem install rails -v 5.2.0

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

VOLUME /usr/src/app

EXPOSE 3000
EXPOSE 9200
