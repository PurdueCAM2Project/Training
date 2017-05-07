#!/bin/bash

# METHOD 1... old
#for i in {1..6}
#do
#    python archiveList.py url_$i 7200 60 &
#done

# KILLS ALL PYTHON PROCESSES
# ps aux | grep python | awk '{print $2}' | xargs -I name kill name



number=$((($(cat large.csv | wc -l)) / 2))
camList=($(tail -n$number large.csv))

echo $number

count=0
begin=0
end_length=20
while [ "$count" -lt "$number" ]
do
    for ((i=$begin; i<$end_length; i=i+2))
    do
	echo ${camList[i]} ${camList[i+1]} > >(tee -ai gen.txt)
	count=$(($count+1))
    done
    end_length=$((number-count < 10 ? $((2 * $((number-count))))+end_length : 20+end_length))
    begin=$((begin+20))
    python archiveList.py gen.txt 7200 60 &
    rm gen.txt   
done



