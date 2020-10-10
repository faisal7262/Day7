maxcount=9
count=1

i=1
while [ $i -le 9 ]
do
	while [ "$count" -le "$maxcount" ];
	do
		num[$count]=`expr 11 \* $i`
		i=`expr $i + 1`
		let "count += 1"
	done
done
echo "${num[@]}"
