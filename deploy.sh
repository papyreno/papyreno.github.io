#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run generate

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'deploy'

cd -

git subtree push --prefix dist origin gh-pages
