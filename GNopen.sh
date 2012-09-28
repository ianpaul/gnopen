#!/bin/bash

#------------------------------------------------------------------------------------------------------------------------
# Copyright 2012 Ian Paul
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 3 
# as published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>. 
#------------------------------------------------------------------------------------------------------------------------

read -p "Name your app: " app

if
  type $app &>dev/null; 
then
  $app >/dev/null 2>&1 &  
else 
  grep -h $app /usr/share/applications/*.desktop | grep -m 1 "^Exec=" | sed 's/^Exec=//' | echo "That didn't work. Here's a suggestion:" `sed 's/%.//'` 
fi 
