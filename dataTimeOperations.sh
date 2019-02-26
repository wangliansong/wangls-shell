#!/bin/bash
. /etc/profile

#当前时间往前推一个月(返回的格式：2018-01-01)
START=`date -d "1 month ago" "+%F"`
END=`date +%F`

#START='2018-12-19'
#END='2018-12-30'

#得到时间戳
startTime=`date -d "$START" "+%s000"`
endTime=`date -d "$END" "+%s000"`