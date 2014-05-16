#! /bin/bash

bcount=`gs -o - -sDEVICE=inkcov  $1 | grep '0.00000  0.00000  0.00000' | wc -l`
tcount=`gs -o - -sDEVICE=inkcov  $1 | wc -l`
declare -i bcount
declare -i tcount
tcount=(tcount-4)/2
ccount=$((tcount-$bcount))
echo "total pages=$tcount | BW pages = $bcount, COLOR pages = $ccount"