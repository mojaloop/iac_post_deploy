#!/bin/bash
SIM_NAME=$1
curl --location --request POST 'sim-${SIM_NAME}-backend:3003/repository/parties' \
--header 'Content-Type: application/json' \
--header 'Content-Type: text/plain' \
--data-raw '{
    "displayName": "SimFirst SimLast",
    "firstName": "SimFirst",
    "middleName": "SimMiddle",
    "lastName": "SimLast",
    "dateOfBirth": "2010-10-10",
    "idType": "MSISDN",
    "idValue": "17039811907"
}'
