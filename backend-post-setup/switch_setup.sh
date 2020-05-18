#!/bin/bash

curl --location --request POST 'mojaloop-centralledger-service/participants/Hub/accounts' \
--header 'Content-Type: application/json' \
--data '{
  "type": "HUB_MULTILATERAL_SETTLEMENT",
  "currency": "USD"
}'

curl --location --request POST 'mojaloop-centralledger-service/participants/Hub/accounts' \
--header 'Content-Type: application/json' \
--data '{
  "type": "HUB_RECONCILIATION",
  "currency": "USD"
}'

curl --location --request POST 'mojaloop-account-lookup-service-admin/oracles' \
--header 'Date: Sat, 21 Sep 2019 16:54:53 GMT' \
--header 'Content-Type: application/json' \
--data '{
  "oracleIdType": "MSISDN",
  "endpoint": {
    "value": "http://mojaloop-simulator/oracle",
    "endpointType": "URL"
  },
  "currency": "USD",
  "isDefault": true
}'

curl --location --request POST 'mojaloop-simulator/oracle/participants/MSISDN/17039811907' \
--header 'Date: Sat, 21 Sep 2019 16:54:53 GMT' \
--header 'Content-Type: application/json' \
--data '{
    "fspId": "payeefsp",
    "currency": "USD"
}'

curl --location --request POST 'mojaloop-account-lookup-service-admin/oracles' \
--header 'Date: Sat, 21 Sep 2019 16:54:53 GMT' \
--header 'Content-Type: application/json' \
--data '{
  "oracleIdType": "BUSINESS",
  "endpoint": {
    "value": "http://mojaloop-simulator/oracle",
    "endpointType": "URL"
  },
  "currency": "USD",
  "isDefault": true
}'

curl --location --request POST 'mojaloop-simulator/oracle/participants/BUSINESS/Starbucks' \
--header 'Date: Sat, 21 Sep 2019 16:54:53 GMT' \
--header 'Content-Type: application/json' \
--data '{
    "fspId": "payeefsp",
    "currency": "USD"
}'

