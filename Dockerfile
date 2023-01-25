FROM ruby:2.7

WORKDIR /app

COPY . .

RUN bundle install
RUN cd example/zoo-app && bundle install
