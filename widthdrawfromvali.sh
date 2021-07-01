#!/bin/bash
VALOPER=desmosvaloper10zmc.......
WALLET=Yourwalletname
CHAIN_ID=$(curl -s http://localhost:26657/status | jq -r '.result.node_info.network')
FEE=5000
desmos tx distribution withdraw-rewards ${VALOPER} --commission --from ${WALLET} --chain-id ${CHAIN_ID} --fees ${FEE}udaric -y
