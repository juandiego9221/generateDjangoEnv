#!/bin/bash
#echo "hola mundo"
echo "Enter directory name"
read dirname

if [ ! -d "$dirname" ]
then
  echo "file does not exits. creating ..."
  mkdir ./$dirname
  echo "file created"
else
  echo "file existed"
fi
