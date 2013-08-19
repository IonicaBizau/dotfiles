#!/bin/bash

#########################################################
# Move dev git tag                                      #
#########################################################
# Follow me on Github :: https://github.com/IonicaBizau #
#########################################################

echo "> Move dev."
git tag  -d dev
git tag     dev
git push --tags
