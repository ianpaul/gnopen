# gnopen, a Bash script for opening Linux GUI apps

gnopen (guh-nopen) is a simple Bash script for Linux that opens graphical user interface (GUI) apps from the command line. gnopen discards any output usually printed to the screen so that you can use your current terminal window for other purposes. 

## Installation

Download the gnopen repository by clicking the "ZIP" button from https://github.com/ianpaul/gnopen. Then extract and save the file "GNopen.sh" in a directory of your choice such as /home/user/bin.
 
If you already have a directory dedicated to scripts put gnopen in there.

Alternatively, you can just leave gnopen in /home/user.

Next, make gnopen executable with `chmod u+rx ~/GNopen.sh` and then create an alias in your home folder's .bash_aliases file such as 
`gnopen='~/bin/GNopen.sh'`. 

## Using gnopen

Once you're set up, jump onto the command line and type `gnopen <app>`. If you wanted to open Spotify, for example, you'd type `gnopen spotify`.

gnopen was designed to be as user friendly as possible. So if you type the gnopen command, but forget to add an app name, gnopen will prompt you for one.

Also, if you mistype the app's name or use a name the system doesn't recognize, gnopen will try to offer an 
alternative. 

Say you wanted to open the image editing program Gimp, for example, but you typed `gnopen gim` by accident. In that case, gnopen might suggest using "gimp" instead. As of version 0.2 you have to retype the gnopen command after a suggestion is made. In our Gimp example, you'd have to type `gnopen gimp` to open the app.

## Testing

gnopen was developed and tested on Ubuntu and may not work properly on other Linux distributions.

## License

gnopen is licensed under the terms of the [GNU General Public License version 3 (GPLv3)](http://www.gnu.org/licenses/gpl.txt).
