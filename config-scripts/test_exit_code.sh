#!/bin/sh



# $1 - error code, $2 - message, when error occured
check_error_code () {
    if [ $1 -ne 0 ]; then
        echo $2
        exit $1
    fi
}

sudo systemctl status mongod
check_error_code $? "Mongodb Installation Error"

ruby -v
check_error_code $? "Ruby Installation Error"

bundle -v
check_error_code $? "Bundler Installation Error"


