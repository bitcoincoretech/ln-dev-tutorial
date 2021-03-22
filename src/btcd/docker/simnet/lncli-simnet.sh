#!/usr/bin/env bash

/Users/moto/go/bin/lncli --network=simnet --rpcserver=localhost:10052 \
    --lnddir=/Users/moto/Documents/GitHub/bitcoincoretech/ln-dev-tutorial/src/btcd/docker/simnet/volumes/lnd/bob \
    $1