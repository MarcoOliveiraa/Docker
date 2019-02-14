FROM ruby:2.6.0

ENV HOME=/usr/src/

RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get install -y nodejs npm && npm install -g yarn

WORKDIR $HOME/app

COPY Gemfile Gemfile.lock package.json package-lock.json $HOME/app

RUN bundle install && yarn install

COPY . $HOME/app

EXPOSE 3000
