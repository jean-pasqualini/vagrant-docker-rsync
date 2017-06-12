SHELL := /usr/bin/env bash

up:
	@source ./vagrant.sh && vagrant:docker:up
