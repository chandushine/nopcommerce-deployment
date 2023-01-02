#!/bin/bash
docker image build -t nopcommerce:1.43 .
docker images ls
docker container run -d --name chandu143 -P nopcommerce:1.43
docker container ls -a
docker image tag nopcommerce:1.43 9848016515/nopcommerce:1.43
docker push 9848016515/nopcommerce:1.43