#!/bin/bash

# $1 - error code, $2 - message, when error occured
check_error_code () {
    if [ $1 -ne 0 ]; then
        echo $2
        exit $1
    fi
}

cd ~
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

curl -sSL https://get.rvm.io -o ~/rvm.sh
sudo chmod +x ~/rvm.sh && ~/rvm.sh

source ~/.rvm/scripts/rvm
rvm requirements
rvm install 2.4.1
rvm use 2.4.1 --default
gem install bundler -V --no-ri --no-rdoc

ruby -v
check_error_code $? "Ruby Installation Error"

bundle -v
check_error_code $? "Bundler Installation Error"