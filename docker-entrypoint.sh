#!/bin/bash 
#while true
#do
# Check if the environment variable is set to true
#    if [ "$ART_VIEW" = "true" ]; then
#        echo "View deletion, do not execute."
#        autoremove-torrents --view --conf=/config/config.yml
#    else
#        echo "Executing deletion."
autoremove-torrents --conf=/config/config.yml --log=/config/logs/
#    fi
#sleep 3600
#done
