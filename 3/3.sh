num=`sed -n '$=' $1`
let "count=num/5"

if [ `expr ${num} % 5` == 0 ];then
	for i in `seq 1 ${count}`;do
		let "right=5*i"
		let "left=(i-1)*5+1"
		sed -n "${left},${right}p" test.txt > ${i}.txt
	done
else
	let "count1=count+1"
	for i in `seq 1 ${count1}`;do
		if [ $i == $count1 ];then
			let "left=(i-1)*5+1"
			sed -n "${left},${num}p" test.txt > ${i}.txt
			break
		fi
		let "right=5*i"
		let "left=(i-1)*5+1"
		sed -n "${left},${right}p" test.txt > ${i}.txt
	done	
fi
