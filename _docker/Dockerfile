FROM ruby:2.6-alpine

RUN apk --update add --virtual build_deps cmake \
      build-base ruby-dev libc-dev linux-headers bash \
      jq curl sed

COPY ./run-jekyll.sh /usr/bin/
COPY ./plugins_extractor.rb /usr/bin/
COPY ./create_github_pages_plugins_installator.sh /usr/bin/
COPY ./install_additional_gems.sh /usr/bin/

RUN chmod +x /usr/bin/run-jekyll.sh && \
    chmod +x /usr/bin/plugins_extractor.rb && \
    chmod +x /usr/bin/create_github_pages_plugins_installator.sh && \
    /usr/bin/create_github_pages_plugins_installator.sh /tmp/install_plugin_gems.sh && \
    cat /usr/bin/install_additional_gems.sh >> /tmp/install_plugin_gems.sh && \
    /tmp/install_plugin_gems.sh

VOLUME /blog
WORKDIR /blog

EXPOSE 4000 80

ENTRYPOINT ["run-jekyll.sh"]
