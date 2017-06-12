up:
  TARGETDIR=$(echo $CURDIR | sed 's/\//\\\//g')
  cat Vagrantfile | sed 's/PWD/'$TARGETDIR'/g' > Vagrantfile
  export DOCKER_HOST=tcp://192.168.33.10:2375
  sudo vagrant up --provision
