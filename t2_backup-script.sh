#!/bin/bash


src_dir=/home/ubuntu/scripts
dst_dir=/home/ubuntu/backup


curr_timestamp=$(date "+%Y-%m-%d-%H-%M-%S" )
backup_file=$dst_dir/$curr_timestamp.tgz

echo "taking backup on $curr_timestamp"


tar czf $backup_file --absolute-names $src_dir

echo "backup done"
