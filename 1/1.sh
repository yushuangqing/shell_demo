echo "input upper; loewer; exit/quit; other"
read str1
while [ 1 ];do
	case $str1 in
		upper)
			while [ 1 ];do
				read str1 
				if [[ "$str1" == "lower" || "$str1" == "exit" || "$str1" == "quit" ]];then
					break
				else
					echo $(echo $str1 | tr '[a-z]' '[A-Z]')
				fi
			done
			;;
		lower)
			while [ 1 ];do
				read str1 
				if [[ "$str1" == "upper" || "$str1" == "exit" || "$str1" == "quit" ]];then
					break
				else
					echo $(echo $str1 | tr '[A-Z]' '[a-z]')
				fi
			done
			;;
		exit)
			exit ;;
		quit)
			exit ;;
		*)
			
			echo $(echo $str1 | tr '[A-Z]' '[a-z]')
			echo $str1 | sed 's/ //g' | wc -L 
			read str1 ;;
	esac
done
