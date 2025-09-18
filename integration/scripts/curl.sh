#!/bin/bash

#
# Generate your access token at https://ai.dhnt.io/settings/access-token and run:
# export CURL_TOKEN=<your-token>
#
# You may specify the following options in the X-DHNT-Params header or as query params.
# the latter takes precedence.
# Options:
#   format: json | text
#   agent: name of active agent
#   models: name of active model alias.
#
curl -XPOST -H "Authorization: Bearer $CURL_TOKEN" \
    -H "X-DHNT-Params: format=json;agent=agent;models=default/any" \
    "https://ai.dhnt.io/gab?format=text&agent=news&models=gpt4/L1&message=what+is+new+today" \
    -vvv
