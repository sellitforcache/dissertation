#! /bin/bash

bcount=`gs -o - -sDEVICE=inkcov  $1 | grep '0.00000  0.00000  0.00000' | wc -l`
tcount=``
echo 'BW page = $bcount, total pages=$tcount'