#!/bin/bash

#-------------------------------------------------------------------------
# 									
# gnopen version 0.20							
# Copyright 2012-2013 Ian Paul						
# https://github.com/ianpaul/gnopen 					
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
#--------------------------------------------------------------------------

# First check to see if there is an argument added to the gnopen 
# command. If there isn't one, print a request to the terminal
# asking the user to input an app name

	if [ -z "$1" ]; then
#ask the user for the name of the app
	 read -p "Name your app: " app

	 else app=$1
	fi

# then test to see if $app exists
if
  type $app &>/dev/null;
# if $app exists, execute $app and send all output to /dev/null so you don't bother the user 
then
  $app >/dev/null 2>&1 &
# print a message to tell the user their request succeeded
  echo "Coming right up!"

# if $app does not exist, then search the '*.desktop' files and see if you can match '*$app*.desktop', but don't 
# print the results.
else 
   if 
     grep -h -q $app /usr/share/applications/*.desktop; 
# If there was a match or several matches repeat the search. This time look inside the first matching '.desktop' file
# and find the line that says "Exec=." Next, strip out the "Exec=" and the "%" arguments and 
# print the result to the terminal. 
# This is not an efficient solution. Later, I hope to figure out how to pass the
# results from the first 'grep' to the THEN statement below.
   then  
     grep -h $app /usr/share/applications/*.desktop | grep -m 1 "^Exec=" | sed 's/^Exec=//' |  echo "That didn't work. Here's a suggestion:" `sed 's/%.//'`
# If no match was found then print the fail message below
   else
      echo "Sorry, that command doesn't exist and an alternative was not found."
   		fi 
	fi 
