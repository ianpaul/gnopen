# gnopen, a command line utility for opening apps

gnopen is a simple bash script that opens an app from the command line and discards any output from STDOUT,
STDERR, and the shell. gnopen also opens in the backgroudn so that you can use your current terminal window for other
purposes. 

## Installation

Download and save gnopen.sh in a directory of your choice such as '/home/user/bin'. If you have a directory already
dedicated to scripts put gnopen in there.

Next, make gnopen executable with 'chmod u+rx' and then create an alias in your .bashrc file such as "gnopen='~/bin/gnopen.sh'. 

Once you've got it working, type 'gnopen' on the command line and press enter. You will then be prompted for an app name and
the program will open. Bash is very finicky about opening apps this way, so you have to make sure you get the name right.
If you mistype the app's name or use a name the system doesn't expect, gnopen will offer a suggestion on how to
type in the app name. For example, if you want to open the freecell game in Ubuntu, you might try opening it with
'freecell'. Unfortunately, that won't work, but gnopen knows what you're looking for and would suggest you enter 
'/usr/games/sol --freecell' instead. 

# License

gnopen is licensed under the terms of the [GNU General Public License version 3 (GPLv3)](http://www.gnu.org/licenses/gpl.txt).
