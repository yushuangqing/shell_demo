for file in ${1}/*;do
	string=`ls -l $file | awk '{print $1}'` 
	sub="${string:1}"
	if [ "$sub" == "rwxrwxrwx" ];then
		chmod 754 $file
	fi
done