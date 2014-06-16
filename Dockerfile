FROM ubuntu:14.04

MAINTAINER Daniel Lawrence <dannyla@linux.com>

RUN apt-get install -y ruby
RUN gem install --verbose capistrano
ADD . /capistranodeploy

ADD README.md /README.md

CMD bash
