#/bin/bash

cd ../navdata/monthly

for filename in *
do
 sed 's/;/,/g' $filename > $filename.csv
 ls -l $filename $filename.csv 
 mv -v $filename ../semicolon
 #exit 0
done 
