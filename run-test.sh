#!/bin/bash

# ./run-test.sh calculator 2

#error message
errormessage="*****************************************************\nInvalid Command!\n\nCOMMAND => ./run-test.sh [tag] [threads] e.g. ./run-test.sh calculator 2 \n*****************************************************\n"

# check argument tag
if [ "$1" = "" ] ;then
  echo -e "$errormessage"
  exit 1 
else
  tag="-i $1 --exclude ignore"
fi  

# How many thread
if [ "$2" = "" ] ;then
  echo -e "$errormessage"
  exit 1 
else
  thread="$2"
fi

# SETUP ENV
ENV="$tag src/scenario"

BASE_PORT=8817
INCREMENT=1

port=$BASE_PORT
isfree=$(netstat -taln | grep $port)

while [[ -n "$isfree" ]]; do
    port=$[port+INCREMENT]
    isfree=$(netstat -taln | grep $port)
done

PABOT_PORT=$port

#####################################################################################
#####################################################################################
echo
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "=============================================================================="
echo "                           Running Automated Test "
echo "=============================================================================="
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo 


#E.g. ./run-test.sh calculator 2
pabot --pabotlibport $PABOT_PORT --testlevelsplit --pabotlib --resourcefile DevicesSet.dat --processes $thread --verbose $ENV