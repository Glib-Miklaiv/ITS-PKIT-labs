#!/bin/bash
name=Глєб
count=$(ls -lAh | grep "$name" |wc -l)
for i in {1..25}
do
  touch $name$(($i+$count))
done

