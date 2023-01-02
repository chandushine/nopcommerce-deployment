#!/bin/bash
docker image build -t nopcommerce:1.44 .
docker images ls
docker container run -d --name chandu144 -P nopcommerce:1.44
docker container ls -a
docker image tag nopcommerce:1.44 9848016515/nopcommerce:1.44
docker push 9848016515/nopcommerce:1.44
