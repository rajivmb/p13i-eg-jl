#!/bin/bash

#<Ref/> https://stackoverflow.com/a/8352939

printf "Tearing down Lambda Function"

/bin/bash ../JavaLambdaFunction/teardown.sh

printf "Tearing down Lambda Layer"

/bin/bash ../JavaParentLambdaLayer/teardown.sh
