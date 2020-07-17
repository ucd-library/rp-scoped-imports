#! /bin/bash

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $ROOT_DIR

NETWORK=""
if [[ ! -z $1 ]]; then
  NETWORK="--network=$1"
  echo "connecting to network: $1"
fi

docker run -ti --rm $NETWORK \
  -e FUSEKI_PASSWORD=${FUSEKI_PASSWORD} \
  -v $(pwd)/data:/data \
  -v $(pwd)/lib:/service/lib \
  -v $(pwd)/index.js:/service/index.js \
  -v $(pwd)/reindex.js:/service/reindex.js \
  ucdlib/rp-scoped-imports \
  bash