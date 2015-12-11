#!/bin/bash
set -e

apt-get update
apt-get install -y --force-yes --no-install-recommends git ca-certificates perl nodejs npm
ln -s /usr/bin/nodejs /usr/bin/node
npm install bower gulp json-minify -g
npm install gulp-inline-source gulp-nunjucks-render gulp-minify-inline-scripts --save-dev
npm install
bower --allow-root install --save
