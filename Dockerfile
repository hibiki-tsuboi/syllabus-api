FROM ruby:2.6.5
ENV APP_ROOT /syllabus-api
RUN apt-get update -qq && \
    apt-get install -y nodejs \
                       graphviz
RUN mkdir $APP_ROOT
WORKDIR $APP_ROOT
RUN gem install bundler -v 2.1.4
COPY . $APP_ROOT
