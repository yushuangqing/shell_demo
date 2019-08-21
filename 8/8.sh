if [ -f "./result.txt" ];then
	rm result.txt
fi

sum=0
for file in ${1}/*;do
	if [[ "$file" == *.c || "$file" == *.h ]];then
		num=`sed -n '$=' $file`
		echo "$file  行数:  "$num"" >> ./result.txt
		#echo "$num" >> ./result.txt
		let "sum=sum+num"
	fi
done
echo "总行数:  $sum" >> result.txt