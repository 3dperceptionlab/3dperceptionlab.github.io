FROM ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive

Label MAINTAINER 3dperception

RUN apt-get update -y && apt-get install -y --no-install-recommends \
    locales \
    imagemagick \
    ruby-full \
    build-essential \
    zlib1g-dev \
    jupyter-nbconvert \
    inotify-tools procps && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*


RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && \
    locale-gen


ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8 \
    JEKYLL_ENV=production

# install jekyll and dependencies
#RUN gem install jekyll bundler
# install bundler only, not jekyll
RUN gem install bundler -v 2.6.9

RUN mkdir /srv/jekyll

ADD Gemfile /srv/jekyll
ADD jekyll-agency.gemspec /srv/jekyll

WORKDIR /srv/jekyll

RUN bundle install --no-cache
# && rm -rf /var/lib/gems/3.1.0/cache
RUN bundle clean --force
EXPOSE 8080

COPY bin/entry_point.sh /tmp/entry_point.sh

CMD ["/tmp/entry_point.sh"]
