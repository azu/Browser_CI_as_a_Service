#!/bin/sh

function exists { which $1 &> /dev/null }
# start buster server
node_modules/.bin/buster-server &
sleep 5
# start browsers
firefox http://localhost:1111/capture &
sleep 5
phantomjs node_modules/buster/script/phantom.js http://localhost:1111/capture &
sleep 5
if exists google-chrome; then
    google-chrome --no-default-browser-check --no-first-run --disable-default-apps http://localhost:1111/capture &
    sleep 5
fi