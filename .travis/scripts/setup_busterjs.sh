export DISPLAY=:99.0
sh -e /etc/init.d/xvfb start
sleep 3
node_modules/.bin/buster-server &
sleep 3
firefox http://localhost:1111/capture &
sleep 3
phantomjs node_modules/buster/script/phantom.js http://localhost:1111/capture &
sleep 3