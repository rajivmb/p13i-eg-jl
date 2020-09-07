#!/bin/bash

#<Ref/> https://stackoverflow.com/a/8352939

functionStart=$(date +%s)
printf "\n\nTearing down Lambda Function\n****************************\n\n"
/bin/bash p13i-eg-jglf/teardown.sh
layerStart=$(date +%s)
functionDuration=$((layerStart - functionStart))
printf "\nLambda Function teardown completed in           [ %02dm %02ds ]\n\n" $((functionDuration / 60)) $((functionDuration % 60))

printf "\n\nTearing down Lambda Layer\n*************************\n\n"
/bin/bash p13i-eg-jpll/teardown.sh
layerDuration=$(($(date +%s) - layerStart))
printf "\nLambda Layer teardown completed in              [ %02dm %02ds ]\n\n" $((layerDuration / 60)) $((layerDuration % 60))


totalDuration=$(($(date +%s) - functionStart))
printf "\n\n"
printf "Lambda Function teardown completed in           [ %02dm %02ds ]\n" $((functionDuration / 60)) $((functionDuration % 60))
printf "Lambda Layer teardown completed in              [ %02dm %02ds ]\n" $((layerDuration / 60)) $((layerDuration % 60))
printf "Teardown completed in                           [ %02dm %02ds ]\n\n" $((totalDuration / 60)) $((totalDuration % 60))
