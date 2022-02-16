#!/usr/bin/env sh

# Program options
set -e # abort on error

# Build app
pnpm build

# Deploy app
cd dist
echo 'www.keye.dev' > CNAME
git init
git add -A
git commit -m 'Deploy'
git push -f git@github.com:jabberwockydevelopment/keye-dev.github.io.git main:gh-pages
cd -
