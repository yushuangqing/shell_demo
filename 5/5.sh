sum=0
for i in `seq 1 $#`;do
	let "val=$i*$i"
	echo $val
	let "sum=sum+$val"
done
echo "$sum"
