#!/bin/bash
docker image build -t nopcommerce:1.44 .
docker images ls
docker container run -d --name chandu144 -P nopcommerce:1.44
docker container ls -a
