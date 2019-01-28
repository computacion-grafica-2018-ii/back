FROM ruby:2.5-alpine

RUN apk add --no-cache \
    build-base \
    tzdata \
    git \
    postgresql-dev \
    nodejs \
    imagemagick
    
RUN mkdir /api_gateway

WORKDIR /api_gateway

ENV RAILS_ENV development
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true
ENV WEB_CONCURRENCY 2
ENV MIN_THREADS 5
ENV MAX_THREADS 20
ENV PORT=80

ADD Gemfile /api_gateway/Gemfile
ADD Gemfile.lock /api_gateway/Gemfile.lock

RUN bundle install --without development test

COPY . .

LABEL maintainer="CAMILO DAJER <cadajerp@slabcode.com>"

EXPOSE 80

CMD puma -C config/puma.rb  

