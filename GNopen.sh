#!/bin/bash

read -p "Name your app: " app

if
  type $app &>dev/null; 
then
  $app >/dev/null 2>&1 &  
else 
  grep -h $app /usr/share/applications/*.desktop | grep -m 1 "^Exec=" | sed 's/^Exec=//' | echo "That didn't work. Here's a suggestion:" `sed 's/%.//'` 
fi 
