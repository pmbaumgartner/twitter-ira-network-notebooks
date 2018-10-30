#!/bin/sh
# This is for documentation -- use the docker-compose.yml file

LOCAL_PORT=8888

docker run -ti --rm \
  -u user \
  -w /home/user \
  -v $(PWD):/home/user \
  -p $LOCAL_PORT:8888 \
  -p 6006:6006 \
  tiagopeixoto/graph-tool \
  bash -c "jupyter notebook --ip 0.0.0.0"