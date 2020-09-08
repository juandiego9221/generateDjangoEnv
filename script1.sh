#!/bin/bash
destiny_path=~/Documents/testdir/dirscripts
echo "Enter directory name"
read dirname

if [ ! -d "$dirname" ]
then
  echo "directory does not exits. creating ..."
  mkdir $destiny_path/$dirname
  echo "directory created"
else
  echo "directory existed"
fi
cd $destiny_path/$dirname
echo $PWD
echo "generating enviroment"
python3 -m venv $destiny_path/$dirname
echo "eviroment generated"
