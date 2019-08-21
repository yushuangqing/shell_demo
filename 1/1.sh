read str2
while [[ "$str2" != "exit" && "$str2" != "quit" ]];do
	if [ "$str2" == "lower" ];then
		echo "please input a string:"
		typeset -l str1
		read str1
		echo "$str1"
		read str2
	elif [ "$str2" == "upper" ];then
		echo "please input a string:"
		typeset -u str1
		read str1
		echo "$str1"
		read str2
	else
		num=0
		echo "please input a string:"
		typeset -l str1
		read str1
		echo "$str1"
		echo $str1 | sed 's/ //g' | wc -L
		read str2
	fi
done