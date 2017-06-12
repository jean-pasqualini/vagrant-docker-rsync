  GNU nano 2.7.4                                                                             Fichier : vagrant.sh                                                                                       

#!/bin/bash

function vagrant:docker:up()
{
        TARGETDIR=$(echo $PWD | sed 's/\//\\\//g')
        sed -i 's/PWD/'$TARGETDIR'/g' Vagrantfile
        export DOCKER_HOST=tcp://192.168.33.10:2371
        sudo vagrant up --provision
}
