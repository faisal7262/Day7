

arr=(2 -1 -1 2 -1)
echo ${arr[@]}

for(( index=0; index<5; index++ ))
do
	for(( i1=index+1; i1<5; i1++ ))
	do
		for(( i2=i1+1; i2<5; i2++ ))
		do
			if [ $(($((arr[index]))+$((arr[i1]))+$((arr[i2])))) -eq 0 ]
			then
				echo "${arr[index]} ${arr[i1]} ${arr[i2]}"
			fi
		done
	done
done
