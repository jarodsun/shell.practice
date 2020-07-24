#!/bin/bash

RBY='\033[31;43m'
RBY1='\033[1;31;43m'
RBY2='\033[2;31;43m'
RBY4='\033[4;31;43m'
RBY5='\033[5;31;43m'
RBY7='\033[7;31;43m'
RBY8='\033[8;31;43m'
RBY9='\033[1;4;5;31;43m'
RES='\033[0m'

echo -e "${RBY} 菜市场海报风格 ${RES}"
echo -e "${RBY1} 高亮菜市场海报风格 ${RES}"
echo -e "${RBY2} 不亮菜市场海报风格 ${RES}"
echo -e "${RBY4} 下划线菜市场海报风格 ${RES}"
echo -e "${RBY5} 闪烁菜市场海报风格 ${RES}"
echo -e "${RBY7} 反转菜市场海报风格 ${RES}"
echo -e "${RBY8} 消隐菜市场海报风格 ${RES}"
echo -e "${RBY9} 高亮+下划线+闪烁菜市场海报风格 ${RES}"

# 另外一种写法

ECHO_SUCCESS="echo -en \\033[1;32m"
ECHO_FAILURE="echo -en \\033[1;31m"
ECHO_WARNING="echo -en \\033[1;33m"
ECHO_NORMAL="echo -en  \\033[0m"

$ECHO_SUCCESS && echo SUCCESS
echo "这行也会变绿"
$ECHO_FAILURE && echo FAILURE
$ECHO_WARNING && echo WARNING
$ECHO_NORMAL  && echo NORMAL

# tput

RED=$(tput setaf 1)
GREEN=$(tput setab 2)
RESET=$(tput sgr0)
echo "${RED}RED!${GREEN}GREEN!${RESET}NORMAL"

c0=$(tput setaf 0)
c1=$(tput setaf 1)
c2=$(tput setaf 2)
c3=$(tput setaf 3)
c4=$(tput setaf 4)
c5=$(tput setaf 5)
c6=$(tput setaf 6)
c7=$(tput setaf 7)

echo "${c0}零${c1}一${c2}二${c3}三${c4}四${c5}五${c6}六${c7}七${RESET}恢复"
