#!/bin/bash

function vagrant:docker:up()
{
        TARGETDIR=$(echo $PWD | sed 's/\//\\\//g')
        sed -i 's/PWD/'$TARGETDIR'/g' Vagrantfile
        export DOCKER_HOST=tcp://192.168.33.10:2375
        sudo vagrant up
}

function vagrant:docker:provision()
{
        sudo vagrant up --provision
}

function vagrant:docker:connect()
{
        export DOCKER_HOST=tcp://192.168.33.10:2375
}
