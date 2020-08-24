#!/bin/bash

#<Ref/> https://stackoverflow.com/a/8352939

printf "\n\nTearing down Lambda Function"

/bin/bash p13i-mit-eg-jglf/teardown.sh

printf "\n\nTearing down Lambda Layer"

/bin/bash p13i-mit-eg-jpll/teardown.sh
