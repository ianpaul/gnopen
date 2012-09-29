# gnopen, a command line utility for opening GUI apps

gnopen is a simple bash script that opens graphical user interface (GUI) apps from the command line. 
The program discards any output from STDOUT, STDERR, and the shell. gnopen also opens apps in the 
background so that you can use your current terminal window for other purposes. 

## Installation

Download the gnopen repository by clicking the "ZIP" button from https://github.com/ianpaul/gnopen. You can then 
extract and save "gnopen.sh" in a directory of your choice such as '/home/user/bin'. 
If you already have a directory dedicated to scripts, put gnopen in there. 
Alternatively, you can just leave the gnopen directory in /home.

Next, make gnopen executable with 'chmod u+rx' and then create an alias in your .bashrc file such as 
"gnopen='~/bin/gnopen.sh'. 

Once you've got it working, type 'gnopen' on the command line and press enter. You will then be prompted for an app name 
and the program will open. Opening apps this way can be very finicky, so you have to make sure you get the name 
right. If you mistype the app's name or use a name the system doesn't expect, gnopen will offer a suggestion on an 
alternative app name. For example, if you want to open the freecell game in Ubuntu, you might try opening it with
'freecell'. Unfortunately, that won't work, so gnopen would suggest entering '/usr/games/sol --freecell' instead. 

# License

gnopen is licensed under the terms of the [GNU General Public License version 3 (GPLv3)](http://www.gnu.org/licenses/gpl.txt).
