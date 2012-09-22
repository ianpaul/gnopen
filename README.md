This is a simple bash script for Linux users that opens an app from the command line and discards any output from STDOUT,
STDERR, and the shell. The best way to use this script is to stash it in a folder such as '~/bin' with your other scripts,
make it executable with chmod, and then create an alias such as "gnopen='~/bin/gnopen.sh'. 

Once you've got it working, the script will prompt you for an app name and then open the program. Bash is very finicky about
opening apps this way, so you have to make sure you get the name right. For example, if you want to open Google Chrome, you 
would type 'google-chrome' and not just 'chrome'. Or, if you wanted to open Movie Player in Ubuntu you would type 'totem' and 
not 'Movie\ Player'.

As my bash and general programming know-how improves I hope to morph this script into something similar to the 'open' command in OSX.

