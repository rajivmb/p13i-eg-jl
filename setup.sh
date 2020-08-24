#!/bin/bash

#<Ref/> https://stackoverflow.com/a/8352939

printf "\n\nSetting up Lambda Layer"

/bin/bash p13i-mit-eg-jpll/setup.sh

printf "\n\nSetting up Lambda Function"

/bin/bash p13i-mit-eg-jglf/setup.sh

printf "\n\nInvoking Lambda Function"

/bin/bash p13i-mit-eg-jglf/invoke.sh
