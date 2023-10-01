#!/bin/bash

[[ "$1" == "" ]] && {
    echo "Usage: ./bpc-prepare.sh src.list"
    exit
}

rm -rf ./Webman
rsync -a                        \
      --exclude=".*"            \
      -f"+ */"                  \
      -f"- *"                   \
      ./                        \
      ./Webman
for i in `cat $1`
do
    if [[ "$i" == \#* ]]
    then
        echo $i
    else
        filename=`basename -- $i`
        if [ "${filename##*.}" == "php" ]
        then
            echo "phptobpc $i"
            phptobpc $i > ./Webman/$i
        else
            echo "cp       $i"
            cp $i ./Webman/$i
        fi
    fi
done
cp bpc.conf $1 Makefile ./Webman/
