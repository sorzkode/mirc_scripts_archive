# mIRC Address Book v1 by Mark Paciga (MarkP)

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

**Script Name:** mIRC Address Book  
**Version:** 1  
**Category:** addon  
**Author(s):** Mark Paciga (MarkP)  
**Email(s):** <markp@dal.net>  
**Website(s):** [http://www3.nbnet.nb.ca/pacman/scripts.html](http://www3.nbnet.nb.ca/pacman/scripts.html), [http://www.mirc.co.uk](http://www.mirc.co.uk), [http://www3.nbnet.nb.ca/pacman](http://www3.nbnet.nb.ca/pacman)  
**Release Year:** 1998  
**Tags:** timer, greet, nicklist, flood protection, alias, dialog, popup, mp3, trigger, welcome message, protection  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990908041934_abook-ext/19990908041934_abook-ext.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990908041934_abook-ext.zip",
  "file_count": 3,
  "file_types": [
    ".mirc",
    ".txt"
  ],
  "max_file_date": "1998-01-12",
  "min_file_date": "1998-01-12",
  "total_size": 34.03,
  "largest_file": "abook-ext.mirc",
  "text": [
    "abook.txt",
    "abook-new.txt"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## abook.txt

```text
-----------------------------------------------------------------------
                      mIRC Address Book Extension
-----------------------------------------------------------------------

  This is a new must-have script for mIRC 5.3. It allows you to
  retrieve other people's address book profile, including the picture.
  Every mIRC user should have this script! (Only works if they're
  running the script too -- so tell all your friends.)

  This script requires mIRC 5.3 or above.  If you don't have it, you
  can download the new version at http://www.mirc.co.uk

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
        /load -rs c:\mirc\scripts\abook-ext.mirc
     Replace the path with the actual path where the file is located.
   - A box will appear asking if you are sure you want to load the
     script. Choose "Yes".

  After loading the script, the address book will open to an entry
  called <profile>.  Fill in your personal information here.  This is
  the information that will be available to other people.
  

----------------------
 Dual Picture Support
----------------------

  Please keep the picture as small as possible. To keep the picture
  small, try reducing the colour depth to 256 colours, and shrinking
  the size of the picture.  Keep in mind that the maximum size of
  picture mIRC can display is 100 pixels tall and 80 pixels wide.
  Pictures will look best in mIRC if they are a multiple of this size.
  (For example, 100 by 80, 200 by 160, etc.)
  
  By default, the script will only retreive a picture that it less than
  80 KB in size.  You will be warned if yours is bigger.
  
  The script supports a second picture, which is not restricted by the
  80 KB limit.  This is ideal if you want to send a thumbnail of your
  picture first, and offer a larger version of the picture for those
  who are interested.  It is also good if you have a second picture
  that you want to make available.
  
  To select your alternate picture, type /GetABook
  
  To retrieve someone's alternate picture, use /GetABook -a <nick>
  
  If someone has an alternate picture available, this will be indicated
  by a note at the end of the person's "Notes" box.


-----------------------
 Commands and Features
-----------------------

  /GetABook           Pops up configuration dialog.

  /GetABook <nick>    Retrieves someone else's address book profile.
                      You can also use /GetABook <address|IP>, or use
                      /GetABook <channel> to get the profile for
                      everone on the channel.

  /ABookScan <nick>   Checks if someone else has a profile available.
                      /ABookScan #channel also works.


  Also try the right-click popup menu on nicks in channel window.

  To ignore someone who is sending repeated getabook requests, add their
  IP address to the mIRC ignore list. Type /ignore *!*@100.200.250.*


---------------------------
 Frequently Asked Question
---------------------------

  Q. Nobody else has the script, so I can't get their profile. What good
     is it?
     
  A. It's a new script. Wait for it to catch on. Those .WAV getters
     started off the same way.  In the meantime:
     
     Tell all your friends.
     
     Use /GetABook #channel to get the any profiles that are available.
     
     If you have problems checking a large number of users at once, try
     /ABookScan #channel to bring them to you. You'll get a CTCP reply
     from everyone who is using the script.


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

## abook-new.txt

```text
-----------------------------------------------------------------------
                 What's New in Address Book Extension
-----------------------------------------------------------------------

Version 1.01 - 2 January 1998

  Removes the workaround for the mIRC bug.  Using mIRC 5.31 is highly
    recommended.
  Improved startup procedure.
  The "Started script" welcome message can be disabled by adding the
    key ShowGreeting=none to the [Global] section of the mscripts.ini
    file. This file is located in the same directory as the script.
    If the [Global] section doesn't exist, add it.
  The menus can now be disabled by typing /disable #abookMenus
  Fixed request IP not showing, ignore, /abookscan
  Improved flood protection.
  Bugfix "a" fixes nickname bugs, also tweaked /getabook #channel
    The ] character in a nickname is now replaced with a ~.  Sorry,
    there is nothing I can do about it.
  Bugfix "b" fixes /getabook #channel when many nicks aren't in the IAL.


Version 1.0 - 13 December 1997

  Initial public release.  See the file abook.txt for more information.
  Bugfix "a" fixes the problem of freezing when mIRC is started, caused
    by a bug in mIRC.  As a result of this workaround, if you open a
    second copy of mIRC with the script loaded, you will receive an
    error message.  This is "normal".  The problem will hopefully be
    fixed in the bugfix release of mIRC.
    


```
