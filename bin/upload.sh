#!/bin/bash
rm -rf _site
bundle exec jekyll build
rsync -avzPh --stats _site/* bob@nimbus.geekcloud.com:web/vhosts/randomness.org.uk/
