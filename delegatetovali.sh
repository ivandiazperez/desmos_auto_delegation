#!/bin/bash
VALOPER=desmosvaloper10zmcwh........
WALLET=Yourwalletname
CHAIN_ID=$(curl -s http://localhost:26657/status | jq -r '.result.node_info.network')
FEE=5000
#Put your wallet pubkey in the next line:
AMOUNT=$(desmos query bank balances yourwalletpubkey --chain-id morpheus-apollo-1 --output=json | jq -r '.balances[].amount')
DIFFACC=$(($AMOUNT-1000000))
desmos tx staking delegate ${VALOPER} ${DIFFACC}udaric --from ${WALLET} --chain-id ${CHAIN_ID} --fees ${FEE}udaric -y
