#!/bin/bash
log_path="/home/purandarrao/ims_v3/Logs/"
latest_folder=`ls -t $log_path | head -n1`
log_filename="messages.log"
log=$log_path$latest_folder/$log_filename
echo $log
tail -f $log
