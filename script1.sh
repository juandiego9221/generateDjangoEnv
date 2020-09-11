#!/bin/bash

function prop {
  grep "${1}" main.properties|cut -d'=' -f2 
}

destiny_path=$(prop 'destiny.path')
dirname=$1
dirname2=$2
app=$3

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
mkdir $destiny_path/$dirname/$dirname2
echo " Creating project ..."
django-admin startproject $dirname2 $destiny_path/$dirname/$dirname2
echo " Finish creating projectt"
echo " Creatin  app ..."
mkdir $destiny_path/$dirname/$dirname2/$app
django-admin startapp $app $destiny_path/$dirname/$dirname2/$app
