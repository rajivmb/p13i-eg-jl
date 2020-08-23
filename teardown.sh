#!/bin/bash

#<Ref/> https://stackoverflow.com/a/8352939

printf "Tearing down Lambda Function"

/bin/bash p13i-mit-eg-jpll/teardown.sh

printf "Tearing down Lambda Layer"

/bin/bash p13i-mit-eg-jglf/teardown.sh
