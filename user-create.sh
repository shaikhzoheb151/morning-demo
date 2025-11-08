#!/bin/bash
#purpose-script to add a user to linux system inculding password

if [ $(id -u) -eq 0 ]; then
    read -p "Enter username : " username
    read -s -p "Enter password : " password
    egrep "^$username" /etc/passwd >/dev /null
  if [ $? -eq 0 ]; then
      echo "$username exits !"
      exit 1
  else
      pass=$(perl -e 'print crypt ($ARGV[0], "password")'  $password)
      useradd -m -p "$pass" "$username"
   [ $? -eq 0 ] && echo "user has benn added to system!" || echo "failed to add a user "
  fi
else
echo "only root may add a user to the system"
    exit 2
fi
