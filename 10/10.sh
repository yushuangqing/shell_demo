fun ()
{
	let "num=$1-1"
	for i in `seq 2 $num`;do
		let "a=$1%$i"
		if [ $a -eq 0 ];then
			echo "$i"
			let "b=$1/$i"
			fun $b
			exit
		else
			continue
		fi
	done
	echo $1
}

if [ `echo "$1 < 0" | bc` -eq 1 ];then
	echo "Please input a positive integer"
	exit
fi

if [ -n "`echo $1 | sed 's/[0-9]//g'`" ];then
	echo "Please input a positive integer"
	exit
fi

fun $1