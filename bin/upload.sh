#!/bin/bash
# script to generate and upload randomness.org.uk to ashbrook
rm -rf /tmp/jekyllbuild
bundle exec jekyll build -d /tmp/jekyllbuild
rsync -avzPhc --stats /tmp/jekyllbuild/* ashbrook.default.rjw1.uk0.bigv.io:/srv/randomness.org.uk/public/htdocs/
