#!/bin/bash
log_path="<absolute_folder_path>"
latest_folder=`ls -t $log_path | head -n1`
log_filename="<log_filename>"
log=$log_path$latest_folder/$log_filename
echo $log
tail -f $log
