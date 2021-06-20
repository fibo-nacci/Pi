# lsblk

# sudo apt-get install hdparm
# sudo hdparm -t --direct /dev/'lsblk'

# sudo apt install sysbench


#!/bin/bash
clear
#nice little loop

for f in {1..7}
do
	vcgencmd measure_temp
	sysbench --test=cpu --cpu-max-prime=25000 --num-threads=4 run>/dev/null
done

vcgencmd measure_temp

# temp.test.sh properties/permissions

./temp.test.sh
