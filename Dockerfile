FROM ruby:3.0.1
ENV APP_ROOT /syllabus-api
RUN apt-get update -qq && \
    apt-get install -y graphviz vim default-mysql-client && \
    gem install bundler -v 2.2.19
RUN mkdir $APP_ROOT
WORKDIR $APP_ROOT
COPY . $APP_ROOT
