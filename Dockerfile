FROM ubuntu:xenial
MAINTAINER Zhenbo Li

# zlib is required by jekyll
RUN apt-get update && apt-get install -y \
	bundler \
	jekyll \
	zlib1g-dev

ADD Gemfile
RUN bundle install

