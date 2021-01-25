#!/bin/zsh
bundle update github-pages
bundle install
echo "Opening firefox and starting server"
./openfox.zsh &
bundle exec jekyll serve --livereload --drafts
