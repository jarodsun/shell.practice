#!/bin/bash

for ((i=0; i<=50; i ++))
do
	echo "t${i}='\033[${i}m'" >> echoscript
done

for ((i=0; i<=50; i ++))
do
	echo echo -e \"\$t${i} 测试用文字${i} '${t0}'\" >> echoscript
done
