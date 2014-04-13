#!/bin/bash
rm -rf /tmp/jekyllbuild
bundle exec jekyll build -d /tmp/jekyllbuild
rsync -avzPhc --stats /tmp/jekyllbuild/* bob@nimbus.geekcloud.com:web/vhosts/randomness.org.uk/
