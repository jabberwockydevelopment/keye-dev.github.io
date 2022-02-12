#!/usr/bin/env sh

set -e # abort on error

pnpm build
cd dist
echo 'www.keye.dev' > CNAME
git init
git add -A
git commit -m 'Deploy'
git push -f git@github.com:jabberwockydevelopment/keye-dev.github.io.git main:gh-pages
cd -