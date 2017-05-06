#!bin/bash

declare -a FILENAME

FILENAME=`ls -la | tail -n29804 | awk -F' ' '{print $9}'`

for i in ${FILENAME};
do
    echo $FILENAME[$i]
done
