#!/bin/bash

echo 'RUN SQS QUEUE CREATE'

aws --endpoint-url=http://localhost:4576 sqs create-queue --queue-name $AWS_QUEUE_PLANS_TO_WHITELIST
aws --endpoint-url=http://localhost:4576 sqs create-queue --queue-name $AWS_QUEUE_BANK_ACCOUNT_TO_PLANS
aws --endpoint-url=http://localhost:4576 sqs create-queue --queue-name $AWS_QUEUE_TRANSACTIONS_TO_PLANS

#aws sqs send-message --endpoint-url=http://localhost:4576 --queue-url http://localhost:4576/queue/vg8-hlg-plans-to-whitelist.fifo --message-body '{"vehicle":{"licensePlateCode":"aaa","customer":{"id":1},"status":"aaa"},"partner":{"id":1}}'
#aws sqs send-message --endpoint-url=http://localhost:4576 --queue-url http://localhost:4576/queue/vg8-hlg-transactions-to-plans.fifo --message-body '{"meta": {"correlationId": "CORRELATION-ID"},"transaction": {"parkingEntranceDate": "2019-10-04T18:01:22.000Z", "parkingExitDate": "2019-10-04T18:01:22.000Z", "receivedDate": "2019-10-04T18:01:22.000Z","licensePlateCode": "XYZ8218","value": 7.50}}'