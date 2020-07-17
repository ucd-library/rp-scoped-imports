#! /bin/bash

export DOCKER_BUILDKIT=1
docker build \
  -t ucdlib/rp-scoped-imports \
  --build-arg BUILDKIT_INLINE_CACHE=1 \
  .