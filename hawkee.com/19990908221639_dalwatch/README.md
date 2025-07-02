# DALnet WATCH v1 by Mark Paciga (MarkP)

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

**Script Name:** DALnet WATCH  
**Version:** 1  
**Category:** addon  
**Author(s):** Mark Paciga (MarkP)  
**Email(s):** <markp@dal.net>, <mdpaciga@h201-109.reznet.uwo.ca>  
**Website(s):** [http://www3.nbnet.nb.ca/pacman/scripts.html](http://www3.nbnet.nb.ca/pacman/scripts.html), [http://www.mirc.co.uk](http://www.mirc.co.uk)  
**Release Year:** 1998  
**Tags:** last seen, alias, toolbar, dialog, mp3, addon, notify  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990908221639_dalwatch/19990908221639_dalwatch.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990908221639_dalwatch.zip",
  "file_count": 3,
  "file_types": [
    ".mirc",
    ".txt"
  ],
  "max_file_date": "1998-01-15",
  "min_file_date": "1998-01-15",
  "total_size": 22.07,
  "largest_file": "dalwatch.mirc",
  "text": [
    "dalwatch.txt",
    "dwatch-new.txt"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## dalwatch.txt

```text
-----------------------------------------------------------------------
                      DALnet WATCH Addon for mIRC
-----------------------------------------------------------------------

  The DALnet WATCH addon provides transparent support for DALnet's new
  server-side notify system. (On servers with version dal4.5.17 or
  above.) This enhancement gives you instant notification when someone
  arrives or leaves IRC (no more 50 second delays), and also shows the
  time of logon, or last seen.

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
        /load -rs c:\mirc\scripts\dalwatch.mirc
     Replace the path with the actual path where the file is located.
   - A box will appear asking if you are sure you want to load the
     script. Choose "Yes".

  That's all there is to it. :)
  
  The script will begin functioning next time you connect to a server
  that supports WATCH.


------------------------
 What is WATCH, anyway?
------------------------

  The WATCH protocol is a server-side notify system that is part of
  DALnet's new ircd. (version dal4.5 and above.)  It provides immediate
  notification of people logging on and off, and will lighten the load
  on the servers and your client.
  
  Notify messages will be a bit differet, as well.  When you first
  connect to a server, you see messages like this for everyone on
  your notify list who is online:
  
  *** MarkP (mdpaciga@h201-109.reznet.uwo.ca) has been on IRC 10mins 5secs (Since 22:59:22)

  In addition, you see a new type of message, that tells you how long
  ago people on your notify list left IRC: (this only works as long as
  someone still has the person on notify):
  
  *** MarkP (mdpaciga@h201-109.reznet.uwo.ca) left IRC at 23:15:39 (1min 36secs ago)

  
  As people come and go, you get messages like this:

  *** MarkP (mdpaciga@h201-109.reznet.uwo.ca) is on IRC (2secs ago, 23:00:17)
  *** MarkP (mdpaciga@h201-109.reznet.uwo.ca) has left IRC (2secs ago, 23:00:14)

  The time they came and left gives you an idea of how lagged they are,
  or an idea of how far off the server's clock your computer's clock is. :)


-----------------------
 Commands and Features
-----------------------

  This script attempts to operate transparently. It automatically reads
  your mIRC notify list every time you connect to a server. It obeys the
  settings in the mIRC options dialog (such as "show notifies in active
  window", and "whois on notify". Support for sounds will be added if
  people start requesting it.) It also turns itself on and off depending
  on whether your current server supports WATCH.

  A few switches were added to /notify, as well:

    /notify [-a|r][+]Nick  Adds/removes a nick (just like normal)

    /notify -s|-h          Opens/hides the notify window. (like normal)
                           Sorry, the toolbar button won't work.

    /notify                Lists people online (like normal)
    
    /notify -l             Lists everyone on your notify list.
    
    /notify -i             Shows a bit of info on your notify list:

                           You have 17 and are on 3 WATCH entries
                           
                           This means that you have 17 people in your
                           notify list, and 3 people have you on their
                           notify lists. (Tells how popular you are :)


  In the menu, under "DALnet Options", there are two menu items:
  
  WATCH Support: ON        Activates/deactivates the script.
  -----------------
  Current Status: ON       Tells whether or not the script is currently
                           active; that is, if the current server
                           supports WATCH. You can't change this setting.


----------------------------------------
 Notes About ON NOTIFY Events and Menus
----------------------------------------

  When the script is active, regular ON NOTIFY events don't work, and
  neither does the notify window menu.  As workarounds for these issues,
  pseudo-events and aliases have been created.  To use these, open the
  remote editor (Alt-R), and select "dalwatch.mirc" from the View menu.
  Instructions on how to use these events and the menu are included.


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

## dwatch-new.txt

```text
-----------------------------------------------------------------------
                 What's New in the DALnet WATCH Addon
-----------------------------------------------------------------------

Version 1.01 - January 15, 1998

  Support for as many nicknames as the server will allow.
  If you have too many entries on your notify list, an error will be
    displayed.  Most servers currently allow 128 nicks.
  Now gives an error message when you try to use a WATCH-specific
    switch on a server that doesn't support it.  (/notify ? -i -l)
  Removes debug info that slipped in by accident.


Version 1.0 - December, 1997
  
  Initial public release.  See the file dalwatch.txt for more info.
  Bugfix "c" adds support for networks that use 006 instead of 005.
```
