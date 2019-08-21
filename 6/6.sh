num=0
for file in ./*.txt;do
	if [ -s "$file" ];then
		continue
	else
		rm $file
		let "num=num+1"
	fi
done
echo "$num"