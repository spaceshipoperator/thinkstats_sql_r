#!/bin/sh
gunzip -c data/2002FemResp.dat.gz | 
awk '{
  print FNR","\
  substr($0,1,12)}' | 
sed 's/ *//g' > /tmp/2002FemResp.csv
 