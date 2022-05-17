#!/bin/bash

backup() {
	find $path -name "*.$exp" -exec cp --backup=numbered {} ./$folder \;
}

archive() {
	tar -zcf $archive ./$folder
}

path=$1
exp=$2
folder=$3
archive=$4

mkdir $folder

backup

archive

echo "done"
