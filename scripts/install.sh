#!/bin/bash

#######################
###   REQUIERMENT   ###
#######################
# check python, pip and grep command
if ! command -v python3 &> /dev/null; then
  echo "Error : python3 not installed. Please install python >=3.6"
  exit 1
fi

if ! command -v pip3 &> /dev/null; then
  echo "Error : pip3 not installed. Please install pip3"
  exit 1
fi

if ! command -v grep &> /dev/null; then
  echo "Error : grep not installed. Please install grep"
  exit 1
fi




# check python version
v=$(python3 --version | grep -Po '(?<=Python 3\.)[0-9]+')
if [ "$v" == "" ] || [ $v \< 6 ]; then
  echo "Error : python3 require version >=3.6 . Please update python3"
  exit 2
fi

######################
###   PYTHON ENV   ###
######################
if [ ! -d ".venv" ] ; then
  pip3 install virtualenv
  python3 -m venv .venv
fi
source .venv/bin/activate
pip3 install -r requirements.txt


####################
###   Database   ###
####################
mkdir -p database

##################
###   CONFIG   ###
##################
mkdir -p config

if [ ! -f "config/django.key" ] ; then
  read -p 'Enter the django secret key (invisible) : ' -s DJANGO_SECRET_KEY
  echo -n "${DJANGO_SECRET_KEY}" > "config/django.key"
  echo
fi

if [ ! -f "config/allowedHost.conf" ] ; then
  read -p "Enter the allowed host (separed by , ) : " ALLOWED_HOSTS
  echo -n "${ALLOWED_HOSTS}" | sed 's/,/\n/g' > "config/allowedHost.conf"
  echo
fi


echo
echo "Install finish"