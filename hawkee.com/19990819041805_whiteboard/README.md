# Whiteboard v2.0 by Mark Paciga (MarkP)

## ⁉️ This is part of an mIRC script archiving project. Please read the [README](https://github.com/sorzkode/mirc_scripts_archive/blob/main/README.md) file located in the [main project repository](https://github.com/sorzkode/mirc_scripts_archive) for more information / disclaimers  

## ⚠️ Important Disclaimers

- **I am not the original author** of this script and do not claim any ownership or authorship
- **Historical Preservation Only**: This script is archived for historical and educational purposes
- **No Support**: I cannot provide support, updates, or fixes for this script
- **Not Thoroughly Tested**: The script has not been thoroughly tested in modern environments
- **Use at Your Own Risk**: Any use of this script is entirely at your own risk
- **Potentially Outdated/Incompatible**: This script was designed for much older versions of mIRC and Windows
- **Educational Value**: This archive serves to document the evolution of IRC scripting and early internet culture

## 🔍 Script Information (metadta parsed from files)

**Script Name:** Whiteboard  
**Version:** 2.0  
**Category:** addon  
**Author(s):** Mark Paciga (MarkP)  
**Email(s):** <markp@dal.net>  
**Website(s):** [http://www3.nbnet.nb.ca/pacman/scripts.html](http://www3.nbnet.nb.ca/pacman/scripts.html), [http://www.mirc.co.uk](http://www.mirc.co.uk), [http://www3.nbnet.nb.ca/pacman](http://www3.nbnet.nb.ca/pacman)  
**Release Year:** 1998  
**Tags:** timer, greet, alias, toolbar, popup, addon, highlight, entertainment, draw  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990819041805_whiteboard/19990819041805_whiteboard.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990819041805_whiteboard.zip",
  "file_count": 3,
  "file_types": [
    ".mirc",
    ".txt"
  ],
  "max_file_date": "1998-01-02",
  "min_file_date": "1998-01-02",
  "total_size": 39.09,
  "largest_file": "whiteboard.mirc",
  "text": [
    "wboard-new.txt",
    "whiteboard.txt"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## wboard-new.txt

```text
-----------------------------------------------------------------------
               What's New in the Shared Whiteboard Addon
-----------------------------------------------------------------------

Version 2.0 - January 2, 1998

  Unfortunately, this version is not compatible with previous versions.
    mIRC 5.31 is strongly recommended, especially with a dynamic IP.
  Added editbox to the main window for chatting.
  It's now easier to connect many people together with the whiteboard.
    As before, any number of people can connect to you.  Now, you can
    add other people even if the whiteboard is already open by typing
    /whiteboard <nick or IP or host>.
  Added "Pic" tool that lets you draw .BMP pictures in the window.
    A subdirectory called "grphics" is created below the mIRC
    directory, and is used as a picture cache.
  Moved toolbar out of the main window. Drawing is now more efficient.
  May now open more than one window at the same time.  Each window is
    independent, and may have a separate set of participants.
    To open a new window:
       /whiteboard -l <WindowName>
    To connect to a named whiteboard on soemone else's computer:
       /whiteboard <nick or IP or host> <WindowName>
    The default window name is "Main"
  When you connect to someone's whiteboard, you are informed of any
    other connections that person already has in that window, so you
    can connect to them as well.  Note: If you wish to keep the channel
    private, use a window name others won't be likely to connect on.
    (Don't use the default)
    For security reasons, connections are not established automatically.
  If a window isn't open when a connection is requested, it is opened.
    To turn off listening for connections, type /whiteboard -off
    To turn on listening for connections (default), type /whiteboard -on
    To listen only on whiteboards that are already open, /whiteboard -auto
  Improved /WhiteboardInfo
  Huge performance/speed increase.
  Fixed ignore bug, improved flood protection.
  Suggestion: If you're looking for other people with the Whiteboard
    addon, try hanging around the channel #whiteboard.  If nobody is
    there, hang around for a while -- it'll take a while to catch on. :)


Version 1.0 - 13 December 1997
  
  Initial public release. See the file whiteboard.txt for more info.
  Bugfix "a" adds workaround for a bug in mIRC that may cause it to
    freeze for 30 seconds when opening the whiteboard locally.  This
    occurs when the IP address specified in Setup/Local Info is
    incorrect.  As a result of the workaround, the script will give
    an error message when run in two copies of mIRC at the same time,
    but performance is otherwise unaffected.  The next version of mIRC
    will fix this problem.
```

## whiteboard.txt

```text
-----------------------------------------------------------------------
                     mIRC Shared Whiteboard Addon
-----------------------------------------------------------------------

  The Shared Whiteboard addon demonstrates some of the amazing new
  features of mIRC 5.3. With it, you can draw pictures within your mIRC
  window. You can also draw pictures in real-time with other people.

  This script requires mIRC 5.3 or above. (5.31 strongly recommended)
  You can download the latest version at http://www.mirc.co.uk

  If you have a bug to report, or if you have comments or suggestions
  for the script, feel free to send them to me at markp@dal.net.

  No part of this script may be copied without prior consent of the
  author.  I didn't steal anyone else's work in making this; neither
  should you.  I put a lot of work into this script, and do not want
  it to be plagiarized.  See contact information, below.


--------------
 Installation
--------------

  Unzip the other files in this .ZIP, and place them in the directory
  where you will store the script.  (Commonly c:\mirc\scripts\)

   - First, start mIRC.
   - From any command entry box, type:
        /load -rs c:\mirc\scripts\whiteboard.mirc
     Replace the path with the actual path where the file is located.
   - A box will appear asking if you are sure you want to load the
     script. Choose "Yes".

  That's all there is to it. :)
  

-----------------------
 Commands and Features
-----------------------

----- GETTING STARTED: DRAWING PICTURES BY YOURSELF

  To open the whiteboard in local mode. (Without connecting to anyone
  else), type /whiteboard
  
  You can open several windows at the same time by specifying a window
  name.  To do this, type /whiteboard -l WindowName.  (The -l switch
  stands for "local".)  The default window name (the one that is used
  when you don't specify one), is "Main".
  
  
----- CONNECTING TO OTHER PEOPLE
  
  You can connect to other people using their nick, their address, or
  their IP address.  Examples are:

      /whiteboard MarkP
      /whiteboard h201-109.reznet.uwo.ca
      /whiteboard 129.100.201.109
    
  Using the address is faster, as the client doesn't have to look up
  the address from the IRC server.  Using the address, you can also
  connect to people while not connected to the IRC server.
  
  You can also use different window names to connect to people.  A
  window is similar to a channel on IRC; each window is independent, and
  can have a different set of participants.  To specify a window name:

  /Whiteboard <nick|host|IP> [WindowName]

  After a connection is made, both users will be able to see what the
  other draws.  You will not be able to see what the other has drawn
  before you connected, so it's a good idea to clear the screen.
  

----- DRAWING WITH MANY PEOPLE AT ONCE

  Once a window is open, you can add more people at any time using the
  /window <nick|host|IP> [WindowName] command.

  When you connect to someone's whiteboard, you are informed of any
  other connections that person already has in that window, so you can
  connect to them as well.  If you don't, you won't be able to see what
  they draw, and it'll get confusing. :)  You will see a message like
  this in your status window:
  
  *** MarkP has another participant on this whiteboard. To connect this
    person, type /whiteboard 100.200.150.123 Main

  You should then type the command given to connect the other person.
  (For security reasons, connections are not established automatically.)
  
  Note: If you wish to have a private session, and not reveal the other
  participants, choose a window name that others won't be likely to try
  to connect on.


----- LISTENING FOR CONNECTIONS

  There are several commands you can use to specify whether or not you
  want the whiteboard to listen for incoming connections:

  /whiteboard -on   (this option is the default)
  
     With this setting, the whiteboard constantly listens for people
     trying to connect.  If someone attempts a connection, the window
     will automatically open.
     
  /whiteboard -off
  
     This setting prevents anyone from connecting to your whiteboard.
     You can still use the whiteboard by yourself, and you can still
     connect to other people, but they can't connect to you.
     
  /whiteboard -auto
  
     This setting causes the whiteboard to listen only for connections
     on windows that are already open.  Normally, nobody can connect.
     When you open a window, other people can then connect to it (if
     they know the window name that is open).


----- CHATTING

  The whiteboard window has an editbox, just like other windows in mIRC.
  By typing in it, you can send messages to other participants on that
  "channel".


----- STATUS REPORT

  The /WhiteboardInfo command shows a list of everyone who is connected
  to your whiteboard, and the status of BMP file transfers (if any).
  Use the popup menu in this window to disconnect people, and refresh
  the display.


----- DRAWING PICTURES

  When you draw a BMP picture on the whiteboard, it must be sent to
  other people before it can be drawn on their machines.  This happens
  automatically, but can take a while.  Use the /WhiteboardInfo feature,
  above, to see whether anyone is still being sent a picture.
  
  Pictures are saved in a folder so they can be quickly re-drawn again
  later.  This folder is under the mIRC folder, probably named
  C:\mIRC\graphics\.  You can delete the files in this folder if they
  are no longer wanted.


----- OTHER NOTES

  To ignore someone who is sending repeated whiteboard requests, add the
  IP address to the mIRC ignore list. Type /ignore *!*@100.200.250.123
  
  You can't save pictures yet, but try pressing the "Print Screen" key
  on your keyboard (Maybe called "PrtSc"), and pasting the image into
  Windows Paint (press Ctrl-V to paste).
  
  Suggestion: If you're looking for other people with the Whiteboard
  addon, try hanging around the channel #whiteboard. If nobody's there,
  hang around for a while -- it'll take a while to catch on. :)


---------------------------------------------
 The Author, Web Page, and Other Information
---------------------------------------------

  The author (me) is Mark Paciga, known for the past year to the IRC
  community as MarkP.  I can usually be found helping out on DALnet's
  mIRC help channel, #mIRC

  Feel free to distribute this .zip file as much as you like.  However,
  you may not modify any of its files in any form, nor may you charge
  any amount of money for it.  If you plan on distributing this archive
  in any large-scale form, such as inclusion on a relatively high-traffic
  web site, please contact me at the address below before doing so.

  Comments, suggestions, and bug reports are always welcome.  I can be
  reached by email at markp@dal.net

  Updated versions will be available at:
	  http://www3.nbnet.nb.ca/pacman/scripts.html

```
