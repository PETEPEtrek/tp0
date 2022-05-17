#!/bin/bash

backup() {
	find $path -name "*.$exp" -exec cp -backup=numbered {} ./$3 \;
}

archive() {
	tar -zcf $archive $folder
}
path=$1
exp=$2
folder=$3
archive=$4
cd $path
mkdir $folder

backup

archive

echo "done"
