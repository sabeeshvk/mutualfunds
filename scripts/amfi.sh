#/bin/ksh
cmd="date"
cur_month=`$cmd | cut -d " " -f 2`
cur_year=`$cmd | cut -d " " -f 6`
echo $cur_month $cur_year
for i in {1..5}
do
 cmd="date -j -v -$i"m
 echo $cmd 
 $cmd
 prev_month=`$cmd | cut -d " " -f 2` 
 prev_month_num=`$cmd +"%m"` 
 prev_year=`$cmd | cut -d " " -f 6`
 ccmd="curl  -o ../navdata/monthly/$prev_year-$prev_month_num  --request GET http://portal.amfiindia.com/DownloadNAVHistoryReport_Po.aspx?frmdt=01-$prev_month-$prev_year&todt=01-$cur_month-$cur_year"
 echo $prev_month $year $prev_month_num
 echo $ccmd
 $ccmd
 cur_month=$prev_month
 cur_year=$prev_year
done
