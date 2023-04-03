#!/bin/bash

# Replace <PORT_NUMBER> and <SLACK_WEBHOOK_URL> with your desired port and Slack webhook URL
PORT=<PORT_NUMBER>
SLACK_WEBHOOK_URL=<SLACK_WEBHOOK_URL>

# Check if the port is open using nc command
nc -z localhost $PORT > /dev/null

# If the port is not open, send a Slack alert and exit with status code 1
if [ $? -ne 0 ]; then
    curl -X POST -H 'Content-type: application/json' --data '{"text":"*ALERT*: Port '$PORT' is not open on the local machine."}' $SLACK_WEBHOOK_URL
    exit 1
fi

# If the port is open, exit with status code 0
exit 0
