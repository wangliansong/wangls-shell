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






#这个得到输入时间当前一整月的时间戳
#e.g. 输入20190110 得到20190101-20190131的时间戳
day=$1
#判断有没有输入参数，如果没有day给个默认值
if [ -z "$day" ];then
   day=`date +"%Y%m%d"`
fi
dataTime=`date -d"$day" +%Y%m`
tmp_day_start=`date -d"$day" +%Y%m01`
tmp_day_end1=`date -d"$day 1 month" +%Y%m01`
tmp_day_end=`date -d"$tmp_day_end1 -1 day" +%Y%m%d`

st_tmp=`date -d ${tmp_day_start} +%s`
et_tmp=`date -d ${tmp_day_end} +%s`
startTime=$[st_tmp*1000]
endTime=$[et_tmp*1000]
echo "startTime="$startTime "endTime="$endTime "dataTime="$dataTime

#输入2019-05-22
#输出startTime=1558281600000,endTime=1558368000000
#[22号0点到23号0点]
START=$1
if [ -z "$START" ];then
  START=`date -d "-1 day" +"%Y-%m-%d"`
fi
END=`date -d "$START +1 day" +"%Y-%m-%d"`
startTime=`date -d "$START" "+%s000"`
endTime=`date -d "$END" "+%s000"`
echo "startTime=$startTime","endTime="$endTime
