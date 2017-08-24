FROM ruby:2.4.0

RUN DEBIAN_FRONTEND=noninteractive apt-get update

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
COPY Gemfile* $APP_HOME/

RUN bundle install

COPY . $APP_HOME/
EXPOSE 3000

CMD bundle exec rails server -b 0.0.0.0 -p 3000
