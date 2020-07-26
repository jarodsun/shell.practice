#!/bin/bash
# 放置该文件到Jekyll项目的根目录

cd _posts/

echo "切换到目录$(pwd)"

read -p "Enter post title:" title 

post=$(echo $title | sed 's/[ ]/-/g')

echo "正在创建$(date +%Y-%m-%d)-${post}.md中"

touch $(date +%Y-%m-%d)-$post.md

echo "创建完成"
