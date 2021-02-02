#!/bin/sh

LOG_FILE=./logs/$(date "+%Y-%m-%d")-test-log.txt

echo "[ TIME: $(date "+%H:%M-%S")" ]>>$LOG_FILE
truffle test | tee -a $LOG_FILE
echo "----------------------------------------------------------------------------------------------------------" >> $LOG_FILE