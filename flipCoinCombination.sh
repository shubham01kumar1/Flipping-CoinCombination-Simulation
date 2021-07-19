#!/bin/bash -x
declare -A dict
HHH=7
HTH=6
HHT=5
HTT=4
THH=3
TTH=2
THT=1
TTT=0

dict[HHH]=0
dict[HTH]=0
dict[HHT]=0
dict[HTT]=0
dict[THH]=0
dict[TTH]=0
dict[THT]=0
dict[TTT]=0

for((i=0;i<100;i++))
do
	simulate=$(( RANDOM % 8 ))
	case $simulate in
		1)
			dict[THT]=$((${dict[THT]}+1));;
		2)
			dict[TTH]=$((${dict[TTH]}+1));;
		3)
			dict[THH]=$((${dict[THH]}+1));;
		4)
			dict[HTT]=$((${dict[HTT]}+1));;
		5)
			dict[HHT]=$((${dict[HHT]}+1));;
		6)
			dict[HTH]=$((${dict[HTH]}+1));;
		7)
			dict[HHH]=$((${dict[HHH]}+1));;
		*)
			dict[TTT]=$((${dict[TTT]}+1));;
	esac
done
total_Simu=$(( dict[THT] + dict[TTH] + dict[THH] + dict[HTT] + dict[HHT] + dict[HTH] + dict[HHH] + dict[TTT]))
percentage_OfHHH=$(echo ${dict[HHH]} $total_Simu | awk '{print $1/$2 *100}')

percentage_OfTTT=$(echo ${dict[TTT]} $total_Simu | awk '{print $1/$2 *100}')

percentage_OfTHT=$(echo ${dict[THT]} $total_Simu | awk '{print $1/$2 *100}')

percentage_OfTTH=$(echo ${dict[TTH]} $total_Simu | awk '{print $1/$2 *100}')

percentage_OfTHH=$(echo ${dict[THH]} $total_Simu | awk '{print $1/$2 *100}')

percentage_OfHTT=$(echo ${dict[HTT]} $total_Simu | awk '{print $1/$2 *100}')

percentage_OfHHT=$(echo ${dict[HHT]} $total_Simu | awk '{print $1/$2 *100}')

percentage_OfHTH=$(echo ${dict[HTH]} $total_Simu | awk '{print $1/$2 *100}')
