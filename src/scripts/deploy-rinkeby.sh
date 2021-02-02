#!/bin/sh

LOG_FILE=./logs/$(date "+%Y-%m-%d")-deploy-rinkeby-log.txt

echo "[ TIME: $(date "+%H:%M-%S")" ]>>$LOG_FILE
truffle migrate --reset --network rinkeby | tee -a $LOG_FILE
echo "----------------------------------------------------------------------------------------------------------" >> $LOG_FILE