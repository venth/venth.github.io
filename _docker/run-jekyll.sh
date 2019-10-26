#!/bin/bash

# install requiremes for blog
eval $(plugins_extractor.rb --source-yaml "/blog/_config.yml" --prefix "CONFIG_")
for plugin in $CONFIG_plugins; do
  [[ $plugin == *"/"* ]] && gem_plugin=${plugin/\//-} || gem_plugin=$plugin
  [ $gem_plugin == 'jekyll-watch' ] && gem_plugin_with_version='jekyll-watch -v 1.5.0' || gem_plugin_with_version=$gem_plugin
  gem install $gem_plugin_with_version
done

jekyll serve --incremental -s ./ -d ./_site --config _config.yml,_config_dev.yml --watch --force_polling -H 0.0.0.0 -P 4000 "$@"
