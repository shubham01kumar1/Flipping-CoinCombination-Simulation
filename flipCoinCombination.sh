#!/bin/bash -x

HEAD=1
TAIL=0

headWins=0
tailWins=0
for((i=0;i<20;i++))
do
	simulate=$((RANDOM%2))
	if [ $simulate -eq $HEAD ]
	then
		((headWins++))
	else
		((tailWins++))
fi
done
total_Simu=$((headWins + tailWins))
percentage_OfHead=$(echo $headWins $total_Simu | awk '{print $1/$2 *100}')

percentage_OfTail=$(echo $tailWins $total_Simu | awk '{print $1/$2 *100}')
