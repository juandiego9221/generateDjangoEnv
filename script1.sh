#!/bin/bash
destiny_path=~/Documents/testdir/dirscripts
echo "Enter directory workspace name"
read dirname

if [ ! -d "$dirname" ]
then
  echo " Directory does not exits. creating ..."
  mkdir $destiny_path/$dirname
  echo " Directory created"
else
  echo " Directory existed"
fi
#echo $PWD
echo " Generating enviroment ..."
python3 -m venv $destiny_path/$dirname
echo " Enviroment generated"
echo " Activating enviroment ..."
source $destiny_path/$dirname/bin/activate
echo " Finish activation"
echo " Installing requirements ..."
pip install -r requirements.txt
echo " Finish with requirementst "
echo "Enter project name:"
read dirname2
mkdir $destiny_path/$dirname/$dirname2
echo " Creating project ..."
django-admin startproject $dirname2 $destiny_path/$dirname/$dirname2
echo " Finish creating projectt"
