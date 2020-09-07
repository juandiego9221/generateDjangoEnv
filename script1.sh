#!/bin/bash
#echo "hola mundo"
echo "Enter directory name"
read dirname

if [ ! -d "$dirname" ]
then
  echo "file does not exits. creating ..."
  mkdir ~/Documents/testdir/dirscripts/$dirname
  echo "file created"
else
  echo "file existed"
fi
