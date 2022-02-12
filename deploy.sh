#!/usr/bin/env sh

set -e # abort on error

# Build app
npm run build

# Deploy app
cd dist
echo 'www.keye.dev' > CNAME
git init
git add -A
git commit -m 'Deploy'
git push -f git@github.com:jabberwockydevelopment/keye-dev.github.io.git main:gh-pages
cd -