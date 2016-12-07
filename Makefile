#!/usr/bin/make -f

GIT_COMMIT_SHORT:=$(shell git log -n 1 --format="%H" | cut -b 1-7)

build:
	sudo docker build -t naftulikay/probe:${GIT_COMMIT_SHORT} ./
	sudo docker tag naftulikay/probe:${GIT_COMMIT_SHORT} naftulikay/probe:latest
