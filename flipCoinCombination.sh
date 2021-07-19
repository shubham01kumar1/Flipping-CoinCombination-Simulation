#!/bin/bash -x
declare -A dict
HEAD=1
TAIL=0

dict[headWins]=0
dict[tailWins]=0
for((i=0;i<50;i++))
do
	simulate=$((RANDOM%2))
	if [ $simulate -eq $HEAD ]
	then
		dict[headWins]=$((${dict[headWins]}+1))
	else
		dict[tailWins]=$((${dict[tailWins]}+1))
fi
done
total_Simu=$(( dict["headWins"] + dict[tailWins] ))
percentage_OfHead=$(echo ${dict["headWins"]} $total_Simu | awk '{print $1/$2 *100}')

percentage_OfTail=$(echo ${dict["tailWins"]} $total_Simu | awk '{print $1/$2 *100}')
