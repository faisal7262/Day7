
MAXCOUNT=10
count=1

while [ "$count" -le "$MAXCOUNT" ];
do
	num[$count]=$(( RANDOM % (999-100+1) + 100 ))
	let "count += 1"
done
	echo "${num[@]}"

largest=${num[0]}
secondLargest='unset'

for(( i=1; i < ${#num[@]}; i++ ))
do
if [[ ${num[i]} > $largest ]]
then
	seconLargest=$largest
	largest=${num[i]}
elif (( ${num[i]} != $largest )) && { [[ "$secondLargest" = "unset" ]] || [[ ${num[i]} > $secondLargest ]]; }
then
	secondLargest=${num[i]}
fi
done

echo "Second Largest number:" $secondLargest
secondGreatest=$(printf '%s\n' "${num[@]}" | sort -n | tail -2 | head -1)
echo "$secondGreatest"
echo "------------------------------------------------------------------------------------------------------------"
smallest=${num[i]}
secondSmallest='unset'
for ((i=1; i < ${#num[@]}; i++))
do
if [[ ${num[i]} < $smallest ]]
then
	secondSmallest=$smallest
	smallest=${num[i]}
elif (( ${num[i]} != $smallest )) && { [[ "$secondSmallest" = "unset" ]] || [[ ${num[i]} < $secondSmallest ]]; }
then
	secondSmallest=${num[i]}
fi
done
echo "Second Smallest number : " $secondSmallest
secondsmall=$(printf '%s\n' "${num[@]}" | sort -n | tail +2 | head -1)
echo "$secondsmall"
