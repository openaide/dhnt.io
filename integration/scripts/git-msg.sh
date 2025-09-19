#!/bin/bash
#
# Generate git commit message.
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
#   message: user input

message="Generate a git commit message in no more than 100 words and 3 bullet points."

# add "git" agent first. see examples/agents/git
# read git diff from stdin, e.g.
# git diff | git-msg.sh
curl -XPOST -H "Authorization: Bearer $CURL_TOKEN" \
    -H "X-DHNT-Params: format=text;agent=git;models=default/any" \
    "https://ai.dhnt.io/gab?message=${message}" \
    --data-binary @- \
    -vvv
