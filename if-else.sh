#!/bin/bash
echo "Enter username"
read username
echo "Enter password"
read password
if [[ ( $username == "admin" && $password == "pass123" ) ]];
then
echo "valid credentials"
else
echo "invalif credentials"
fi

