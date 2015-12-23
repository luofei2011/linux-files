#!/bin/bash
date=`date +%Y%m%d`
dbs=( 'heibaipig' 'app_poised' 'rss_vim_ren' 'theast_blog' 'zll160_blog' )
backup_path=$HOME/backup/sql/${date}

if [ ! -d ${backup_path} ]
then
    mkdir -p $backup_path
fi

for db in ${dbs[@]};do
    mysqldump -h 127.0.0.1 -uxxx -pxxx --opt --default-character-set=utf8   --hex-blob ${db} --skip-triggers  > ${backup_path}/${db}.sql
done

# 添加到自动备份脚本中
#crontab -e
#00 9 * * 5 /bin/bash /root/backup.sh
