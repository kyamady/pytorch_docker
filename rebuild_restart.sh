#!/bin/bash

docker-compose down ; docker rmi img_jupyter_pytorch ; docker-compose up -d
