#!/bin/sh
gunzip -c data/2002FemPreg.dat.gz | 
awk '{
  print FNR","\
  substr($0,1,12)","\
  substr($0,22,1)","\
  substr($0,56,1)","\
  substr(57,2)","\
  substr($0,59,2)","\
  substr($0,275,2)","\
  substr($0,277,1)","\
  substr($0,278,2)","\
  substr($0,284,4)","\
  substr($0,423,18)}' | 
sed 's/ *//g' > data/2002FemPreg.csv