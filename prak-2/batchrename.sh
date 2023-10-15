#!/bin/bash
list=$(ls -w 1 $1/)
for file in $list;
do
  if [[ "$file" =~ \."$2"$ ]]; then
    old=$1/$file
    new=$1/$(sed 's/'"$2"'$/'$3'/' <<< $file)
    echo "Переіменовую $old на $new"
    mv $old $new
  fi
done
