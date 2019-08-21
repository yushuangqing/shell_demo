for file in $1/*.sh;do
	if [ -x $file ];then
		echo "$file"
		echo `ls -l  $file | awk '{print $1}'`
	fi
done