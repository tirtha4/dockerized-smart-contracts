#!/bin/sh
echo "_________________WARNING_______________\n DEPLOYMENT INITIATING FOR MAIN NETWORK"
LOG_FILE=./logs/$(date "+%Y-%m-%d")-deploy-mainnet-log.txt

echo "[ TIME: $(date "+%H:%M-%S")" ]>>$LOG_FILE
truffle migrate --reset --network live | tee -a $LOG_FILE
echo "----------------------------------------------------------------------------------------------------------" >> $LOG_FILE