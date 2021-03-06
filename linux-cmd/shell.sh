#! /bin/bash
#读取命令执行结果
for line in `grep worker *yaml | grep 146 | awk '{print $1}' | awk -F':' '{print $1}'`
do
 echo $line
 kubectl replace -f $line --force
done

for line in `cat ./fz`
do
 echo $line.yaml
 kubectl replace -f $line.yaml --force
done


#! /bin/bash
#从文件中读入
file=d5

for line in `cat ./file`
do
  cat /data/docker/dokuwiki/logs/lighttpd/lighttpd/access.log | grep `echo $line |awk -F, '{print $1}'` | grep `echo $line |awk -F, '{print $2}'` | awk '{print $1}'|sort | uniq -c | wc -l
done


#! /bin/bash
# 从文件中读取
for line in `cat ./additems.txt`
do
 echo rm -rf $line
done


file= `ls *yaml`
for line in $file
do
  echo $line
done


for line in `cat ./fz`
do
#  echo $line
  cd $line
  git remote -v | grep fetch
  cd ../
done



for line in `cat ./filez`
do
#  echo $line
  cd $line
  git remote -v | grep inner | grep fetch | awk -v testEnv="git remote set-url origin " '{print testEnv$2}' >> filezh
  cd ../
done



for line in `cat ./filezh`
do
  echo $line
  echo "========"
#  cd $line
#  git remote -v | grep 3000 | grep fetch
#  cd ../
done




cat filezh | while read line; do
  cd `echo $line | awk -F '[/|.]' '{print $7}'`
  $line
  cd ../
  done


  cat fz2 | while read line; do
  cd `echo $line | awk -F '[/|.]' '{print $7}'`
  $line
  cd ../
  done


  cat fz2 | while read line; do
  cd `echo $line | awk -F '[/|.]' '{print $7}'`
  $line
  cd ../
  done



  for line in `cat ./fz`;
  do
    cd $line;
    git pull| grep "not found" ;
    cd ../; done