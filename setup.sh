#!/bin/bash

#<Ref/> https://stackoverflow.com/a/8352939

layerStart=$(date +%s)
printf "\n\nSetting up Lambda Layer\n***********************\n\n"
/bin/bash p13i-mit-eg-jpll/setup.sh
functionStart=$(date +%s)
layerDuration=$((functionStart - layerStart))
printf "\nLambda Layer setup completed in              [ %02dm %02ds ]\n\n" $((layerDuration / 60)) $((layerDuration % 60))

printf "\n\nSetting up Lambda Function\n**************************\n\n"
/bin/bash p13i-mit-eg-jglf/setup.sh
invokeStart=$(date +%s)
functionDuration=$((invokeStart - functionStart))
printf "\nLambda Function setup completed in           [ %02dm %02ds ]\n\n" $((functionDuration / 60)) $((functionDuration % 60))

printf "\n\nInvoking Lambda Function\n************************\n\n"
/bin/bash p13i-mit-eg-jglf/invoke.sh

totalDuration=$(($(date +%s) - layerStart))
printf "\n\n"
printf "Lambda Layer setup completed in              [ %02dm %02ds ]\n" $((layerDuration / 60)) $((layerDuration % 60))
printf "Lambda Function setup completed in           [ %02dm %02ds ]\n" $((functionDuration / 60)) $((functionDuration % 60))
printf "Setup completed in                           [ %02dm %02ds ]\n\n" $((totalDuration / 60)) $((totalDuration % 60))
