FROM ruby:alpine3.6

RUN apk --update add --virtual build_deps cmake \
      build-base ruby-dev libc-dev linux-headers bash && \
    gem install addressable github-pages

COPY ./run-jekyll.sh /usr/bin/
COPY ./plugins_extractor.rb /usr/bin/

RUN chmod +x /usr/bin/run-jekyll.sh && \
    chmod +x /usr/bin/plugins_extractor.rb

VOLUME /blog
WORKDIR /blog

EXPOSE 4000 80

CMD ["run-jekyll.sh"]
