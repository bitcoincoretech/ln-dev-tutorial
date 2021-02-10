#!/usr/bin/env bash

/Users/moto/go/bin/lnd --noseedbackup --bitcoin.active --bitcoin.simnet --bitcoin.node=btcd \
    --btcd.rpchost=localhost:18351 \
    --lnddir=/Users/moto/Documents/GitHub/bitcoincoretech/ln-dev-tutorial/src/btcd/docker/simnet/volumes/lnd/bob \
    --btcd.rpccert=/Users/moto/Documents/GitHub/bitcoincoretech/ln-dev-tutorial/src/btcd/docker/simnet/volumes/rpc/rpc.cert \
    --btcd.rpcuser=devuser \
    --btcd.rpcpass=devpass \
    --rpclisten=localhost:10052 \
    --listen=0.0.0.0:9736 \
    --restlisten=0.0.0.0:8081 \
    --debuglevel=info \
    --alias=Bob