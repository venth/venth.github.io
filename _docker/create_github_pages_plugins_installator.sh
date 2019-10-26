#!/usr/bin/env bash

echo '#!/usr/bin/env bash' > $1
echo 'set -x' >> $1

curl -L 'https://pages.github.com/versions.json' | jq 'to_entries | .[] | "gem install " + .key+ " -v " + .value' | \
    sed 's/"//g' >> $1
chmod +x $1
