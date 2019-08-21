SRC=/etc
DST=/home/sqyu/yushuangqing/shell/homework/file_data
DATE=`date +%Y_%m_%d_%H_%M`
TAR_NAME="file_data_back_$DATE.tar.gz"
LINUX_USER=root
#DAYS=7

cp -r $SRC $DST 
cd $DST
tar -czf $TAR_NAME ./etc
rm -rf ./etc
chown $LINUX_USER:$LINUX_USER $DST/$TAR_NAME
find ./ -mmin +2 -name "*.tar.gz" -exec rm -rf {} \;
