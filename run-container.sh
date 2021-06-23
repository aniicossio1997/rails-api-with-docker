#!/bin/bash
`docker-compose build`
`docker container stop $(docker container ls -q)`
`docker-compose up`
