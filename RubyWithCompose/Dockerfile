FROM ruby:2.6.2

ENV HOME=/maple-bear

WORKDIR $HOME

RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get update -y &&                                    \
    apt-get install -y apt-utils &&                         \
    apt-get install -y build-essential nodejs npm  &&       \
    npm install -g yarn &&                                  \
    npm install webpack --save-dev &&                       \
    npm install webpack-cli --save-dev

COPY entrypoint.sh Gemfile Gemfile.lock package.json $HOME/

RUN bundle install && yarn

EXPOSE 3000

ENTRYPOINT ["./entrypoint.sh"]