#/bin/bash

cd ../navdata/monthly/source

for filename in *.csv
do
 sed -e 's/ISIN Div Payout\/ISIN Growth/ISIN_Div/g'  $filename > ../csv/$filename
 ls -l $filename ../csv/$filename 
 #mv -vf $filename ./source
 exit 0
done 
