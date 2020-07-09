FROM ruby:2.5.1
RUN apt-get update -qq && apt-get install -y nodejs

RUN mkdir -p /rails-app
COPY Shopping-App-IRIS-master/ /rails-app/
COPY entrypoint.sh /rails-app/
RUN chmod +x /rails-app/entrypoint.sh

WORKDIR /rails-app/

RUN bundle install
ENTRYPOINT ["./entrypoint.sh"]
