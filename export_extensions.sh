#!/bin/zsh

echo '{"recommendations": [' > extensions.json
code --list-extensions | awk '{print "\"" $1 "\","}' >> extensions.json
echo '],"unwantedRecommendations":[]}' >> extensions.json
