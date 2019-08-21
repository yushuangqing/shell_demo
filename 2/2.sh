cd ~
if [ -d "50dir" ];then
	rm -rf 50dir
	mkdir 50dir
else
	mkdir 50dir
fi

cd ./50dir
for i in `seq 1 50`;do
	mkdir user${i}
	chmod u=rwx,g=rx,o=r user${i}
done	
