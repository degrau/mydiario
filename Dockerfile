FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /mydiario
WORKDIR /mydiario
COPY Gemfile /mydiario/Gemfile
COPY Gemfile.lock /mydiario/Gemfile.lock
RUN bundle install
COPY . /mydiario