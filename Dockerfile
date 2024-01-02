FROM ruby:3.2.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs default-mysql-client vim
RUN mkdir /rails-sandbox
WORKDIR /rails-sandbox
COPY Gemfile /rails-sandbox/Gemfile
COPY Gemfile.lock /rails-sandbox/Gemfile.lock
RUN bundle install
COPY . /rails-sandbox
