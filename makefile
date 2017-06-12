SHELL := /usr/bin/env bash

up:
	@source ./vagrant.sh && vagrant:docker:up
provision:
	@source ./vagrant.sh && vagrant:docker:provision
docker-connect:
	@source ./vagrant.sh && vagrant:docker:connect
