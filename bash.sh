#!/bin/bash



SRC_FILE=mutex03.cpp
OUT_FILE=mutex03

for n in 1024 2048 4096 8192 16384 32768
do
  for m in true true true true true false false false false false false false false false false
  do
       /opt/homebrew/Cellar/gcc/12.2.0/bin/g++-12     mutex03.cpp -DNUMN=$n -DUSE_MUTEX=$m  -o proj03 -I /opt/homebrew/Cellar/libomp/16.0.0 -L /opt/homebrew/opt/libomp/lib    -fopenmp
      ./proj03
  done
done