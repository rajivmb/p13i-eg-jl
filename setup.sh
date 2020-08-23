#!/bin/bash

#<Ref/> https://stackoverflow.com/a/8352939

printf "Setting up Lambda Layer"

/bin/bash p13i-mit-eg-jpll/setup.sh

printf "Setting up Lambda Function"

/bin/bash p13i-mit-eg-jglf/setup.sh

printf "Invoking Lambda Function"

/bin/bash p13i-mit-eg-jglf/invoke.sh
