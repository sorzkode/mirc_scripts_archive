# darkpaladin v2.0.7 by hitting F12 and

## ⁉️ This is part of an mIRC script archiving project. Please read the [README](https://github.com/sorzkode/mirc_scripts_archive/blob/main/README.md) file located in the [main project repository](https://github.com/sorzkode/mirc_scripts_archive) for more information / disclaimers

## ⚠️ Important Disclaimers

- **I am not the original author** of this script and do not claim any ownership or authorship
- **Historical Preservation Only**: This script is archived for historical and educational purposes
- **No Support**: I cannot provide support, updates, or fixes for this script
- **Not Thoroughly Tested**: The script has not been thoroughly tested in modern environments
- **Use at Your Own Risk**: Any use of this script is entirely at your own risk
- **Potentially Outdated/Incompatible**: This script was designed for much older versions of mIRC and Windows
- **Educational Value**: This archive serves to document the evolution of IRC scripting and early internet culture

## 🔍 Script Information (metadata parsed from files)

**Script Name:** darkpaladin  
**Version:** 2.0.7  
**Category:** game  
**Authors:** hitting F12 and  
**Email(s):** <the_psionic@hotmail.com>  
**Website(s):** [http://members.xoom.com/paladinart/](http://members.xoom.com/paladinart/), [http://www.IRC-Scripts.com](http://www.IRC-Scripts.com), [http://psionic.irc-scripts.com](http://psionic.irc-scripts.com), [http://members.xoom.com/paladinart/darkpaladin.zip](http://members.xoom.com/paladinart/darkpaladin.zip)  
**Release Year:** 1999  
**Tags:** wav, trigger, protection, notify, rejoin, away system, nicklist, bad word, timer, alias, dcc, last seen, channel protection, addon, bot, interface, uno, gui, kickban, dialog, user levels, auto kick, popup, flood protection, auto op, highlight, popups  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/darkpaladin/darkpaladin.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "darkpaladin.zip",
  "file_count": 16,
  "file_types": [
    ".ini",
    ".mrc",
    ".psi",
    ".txt"
  ],
  "max_file_date": "1999-09-09",
  "min_file_date": "1999-08-14",
  "total_size": 160.37,
  "largest_file": "utility2.psi",
  "text": [
    "readme.txt",
    "kicks.txt",
    "ReadMe-MultiIRC.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
              -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

              -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

              -=-=-=-=-=-     The DarkPaladin version 2.0.7     -=-=-=-=-=-

              -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

              -=-=-=-=-=- http://members.xoom.com/psionicscript -=-=-=-=-=-

              -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

              -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

 





-----------------------------------------------

--  Contents                                 --

--    1) Introduction and Information        --

--    2) Modules and How to use this script  --

--    3) Contact Information                 --

-----------------------------------------------







How to load..

 

  Unzip to the C:\mirc\ directory, or whatever is your mIRC directory.

  Start up mIRC, and type this in the status window: 

    /load -rs install.psi

  The rest of the script loads itself.

  Your done!



-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

-=-=-=-=-=-=-=-=-=-=-=-=-=-Section 1-=-=-=-=-=-=-=-=-=-=-=-=-=-

-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-



I began writing this script on April 23, 1999. This version was released on September 9th.

There is nothing violent, vengeful, or lamerish in this script. This script includes kick/ban

features using function keys, Clone scanning and sweeping, Bad word/nick kicker, Caps kicker, 

auto Ident, and many more features all included into several GUI Dialogs. If you are looking for

a war script, revenge script, "Cool" script, that you can abuse people with, this isn't the one. 

But if you are looking for good all around channel protection, very customizable script, ease 

of use, and more.. Then you've found the right script :)



If your one of those people who want to know what this script is putting on to your harddrive,

here is the list: 

utility.psi, nc.psi, utility2.psi, misccom.psi, miscoptions.psi, levels.psi, clonescan.psi, 

stopmsg.psi, instal.psi, kickban.psi, help.ini,and the script itself will create a paladin.ini 

file to store its settings. The script will also create an akicks.ini file for the channel akick

listings.

                -Psionic





  How To's on the upgrades.

  July 27th - 

     I have changed the way this script stores information from variables to ini files.

     Here's how to configure it for your channel(s):

     1) Hit F12

     2) In the dropbox type in the channel you want to add settings for

     3) Configure the settings, click OK

     

     Later on if you want to change those settings:

     You can do 1 of three things:

     1) In the channel hit F12, and it will load the settings into the dialog

     2) Hit F12, click the downarrow in the combobox, and select your channel.

     3) Type the channel name into the combobox, if it is a valid channel

         (one that has already been configured) it will load it into the dialog

      --Any of these will load your settings into the dialog for you to change

 

   August 6th -

      Beta of my MultiServ addon which allows multiple server connections.

      In the "Commands" menu, select "Multiple Server Connection" and enter the information

      that is requested.





  +++++++++++

  ++Updates++

  +++++++++++

   +2.0.7 --- September 9th

     -Many bugs fixed with the installation processes, special thanks to LadyDana for the review

        on www.IRC-Scripts.com which let me know about them.

     -Completely rewrote the clonescan.psi aliases: more efficient, easier to use/read.

     -New addition to the clone killing system. This addition allows the user to select, for

        each channel, whether they want to kick the ghost/old clone of the incomming nick, or

        kick both/all clones of the incomming nick.

     -Help system is still in the works, need to finish writing the file

     -New autokick addition: Kick banned users - This does what it says, kicks anyone banned 

        from the channel.

     -A few cosmetic upgrades were made to the

     -Added /autoghost and upgraded /autoid. /autoghost ghosts the nick you specify with the 

        stored password. /autoid can now use parameters, to identify as a different nick than

        you are using do this: /autoid psionic - This would send the identify command to nickserv

        with the valid password for that nick (/msg nickserv identify nick password)

     -Added special thanks area to the about box.

     -Fixed away response bug to word/phrase.

     -Too many cosmtic errors and bugs were fixed.

   +2.0.5 --- August 22nd

     -Almost 100% complete with the new help system.

     -More bugs fixed

     -Added /autoid command which sends identify to nickserv

     -Fixed the problem with setting the messageblocker autoreplies.

     -In the process of working on an idlekicke
```
