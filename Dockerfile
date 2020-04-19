FROM ruby:2.6.5
ENV APP_ROOT /syllabus-api
RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       libpq-dev \
                       nodejs \
                       graphviz
RUN mkdir $APP_ROOT
WORKDIR $APP_ROOT
ADD ./Gemfile $APP_ROOT/Gemfile
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock
RUN gem install bundler -v 2.1.4
RUN bundle install
COPY . $APP_ROOT
