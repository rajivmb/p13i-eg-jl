#!/bin/bash

#<Ref/> https://stackoverflow.com/a/8352939

printf "Setting up Lambda Layer"

/bin/bash ../JavaParentLambdaLayer/setup.sh

printf "Setting up Lambda Function"

/bin/bash ../JavaLambdaFunction/setup.sh

printf "Invoking Lambda Function"

/bin/bash ../JavaLambdaFunction/invoke.sh
