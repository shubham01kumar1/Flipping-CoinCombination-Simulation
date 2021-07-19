#!/bin/bash -x
declare -A dict

TH=3
HT=2
HH=1
TT=0

dict[HH]=0
dict[TT]=0
dict[TH]=0
dict[HT]=0

for((i=0;i<100;i++))
do
	simulate=$(( RANDOM % 4 ))
	case $simulate in
		$HH)
			dict[HH]=$((${dict[HH]}+1));;
		$HT)
			dict[HT]=$((${dict[HT]}+1));;
		$TH)
			dict[TH]=$((${dict[TH]}+1));;
		*)
			dict[TT]=$((${dict[TT]}+1));;
	esac
done
total_Simu=$(( dict[HH] + dict[HT] + dict[TH] + dict[TT]))
percentage_OfHH=$(echo ${dict[HH]} $total_Simu | awk '{print $1/$2 *100}')

percentage_OfHT=$(echo ${dict[HT]} $total_Simu | awk '{print $1/$2 *100}')

percentage_OfTH=$(echo ${dict[TH]} $total_Simu | awk '{print $1/$2 *100}')

percentage_OfTT=$(echo ${dict[TT]} $total_Simu | awk '{print $1/$2 *100}')
