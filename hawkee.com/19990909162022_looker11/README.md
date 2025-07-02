# mIRC Link Looker v1.1 by Dude

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

**Script Name:** mIRC Link Looker  
**Version:** 1.1  
**Category:** addon  
**Author(s):** Dude  
**Email(s):** <matt@snip.net>  
**Website(s):** [http://www.mirc.co.uk/get.html](http://www.mirc.co.uk/get.html)  
**Release Year:** 1997  
**Tags:** alias, popups, dialog, popup, search, addon, dcc, highlight  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990909162022_looker11/19990909162022_looker11.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990909162022_looker11.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1997-11-12",
  "min_file_date": "1997-11-12",
  "total_size": 31.83,
  "largest_file": "LINKLOOK.MRC",
  "text": [
    "HELP.TXT",
    "LINKLOOK.MRC"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## HELP.TXT

```text
+---------------------------+
-   mIRC Link Looker v1.1   -
-  By Dude <matt@snip.net>  -
+---------------------------+

Released on November 12, 1997


--TABLE OF CONTENTS--

  I - Introduction
 II - Disclaimer
III - Instructions On How To Use This Addon
 IV - Conclusion



---
 |     INTRODUCTION
---

Thanks for downloading the newest release of mIRC Link Looker. This addon
allows you to easly and quickly find servers that are split from the
IRC Network. It does this by comparing two files. Any differences found
between the two files is reported as a 'possible' split server.

You can freely copy, modify, and use this addon in your own scripts and
bots aslong as you give me credit. Alot of time has been put into the
making of this addon so if you have any suggestions for future versions,
comments, and/or questions about this addon then please let me know
via email (matt@snip.net). Thanks and enjoy the addon! :o)

NEW FEATURES

-Changed layout of addon making it more user friendly.

-Added more ERROR Checking to avoid problems from occuring in certain
 situations.

-Renamed LINKLOOK.INI to LINKLOOK.MRC.

-Added some comments throughout the LINKLOOK.MRC file to identify certain
 sections of the file.

-Removed all command /'s in addon's mrc file. It is not required to use
 /'s before each command in mIRC Remote, Popups, or Aliases so I decided
 to remove them to cut down on the size of the file.

-Changed all $parm(N) to $(N) which cuts down on the size of the addon.

-Added some mIRC Custom Windows to display search results and other
 information.

-Added some custom identifiers to handle certain operations.

-To cut down on how many files are used by mIRC Link Looker, I decided
 to move all server lists into one file called a Server Log. By default
 this file is called SERVLIST.INI. This name can, however, be changed
 to any name that you wish. Also mIRC Link Looker now makes use of a
 LINKLOOK.CFG file which stores a list of all server list names in
 every Server Log file that is created by mIRC Link Looker.

-Made it so that their will be a less chance of a conflict between a
 script or bot while used along with this addon. I did this by using
 this new variable, alias, and custom identifier syntax format:

 linklook.(variable name)
 linklook.(alias name)
 linklook.(custom identfier name)

REQUIREMENTS

This addon should work without any problems if used with either mIRC
versions 5.02, 5.1, or 5.11. Their is also a 90% chance that it will
work with future versions of mIRC. However, any versions below v5.02
is not recommended and will probably result in errors. If you do not
have a version of mIRC that is compatable, you can always download
the lastest version of mIRC at the mIRC Homepage:

http://www.mirc.co.uk/get.html



-----
 | |    DISCLAIMER
-----

In no event shall I be liable for any damages whatsoever including direct,
indirect, incidental, consequential, loss of business profits or special
damages, even if I have been advised of the possibility of such damages.
I can not be held responsible for your own actions that may get you
K:lined from a IRC Server or G:lined/Akilled from a IRC Network because
of using this Addon, even if it results in your account being terminated.

By using this addon you therefore agree to the above disclaimer and to
take full responsiblity for your own actions.



-------
 | | |    INSTRUCTIONS ON HOW TO USE THIS ADDON
-------

This addon is easy to install and use. Follow the following steps in order
to activate the addon.

1. Run your mIRC Program

2. Then click the "Remote button" (has a C and a E on it)

3. Next click the file menu. Scroll down and select load/script

4. A dialog box should now pop up. Change to the directory/folder where
   this addon is being kept and double click on the file called LINKLOOK.MRC

5. Once you've completed steps 1-4, then click OK and you are finally
   finished installing the addon for use. Remember to type "/REMOTE ON"
   if you haven't already so that remote is turned on (CTCPS, EVENTS,
   AND RAW). This addon is designed to work side by side with most mIRC
   Scripts and Bots. It uses a variable, alias, and custom identifier
   format in this syntax:

   linklook.(variable name)
   linklook.(alias name)
   linklook.(custom identfier name)

   This lowers the chances of a conflict with a mIRC Script or Bot while
   using this addon along with them.

--

After you've installed the addon, the first thing you'll need to do inorder
to make use of this addon is to log onto a IRC Network and create a list of
servers for that network by going up to:

Link Looker/Server Log/Server List/Create

Once your done creating the list of servers you can now search for split
servers by going up to:

Link Looker/Search

Be aware that if you were to scan the network right after you created the
list that their is hardly any chance that you'll find any split servers.

--

Once the addon is loaded their should be a new menu called Link Looker
under the Commands menu inbetween the DCC and Window menus. Below is
several descriptions of the different menus that you'll find under the
Link Looker menu.

ABOUT: Gives you a list of information on what the addon is called, the
version number, who created it and how you can contact them for help,
etc...

SEARCH: By clicking this you will activate the link looker. A Window
will pop up where all the Search Results will be displayed. The addon
will then scan the entire IRC Network that your on for split servers
by comparing two files and finding any differences between the two.

SERVER LOG:

  FILE NAME: Allows you to change and/or set a new file name to
  be used as the server log file.

  STATUS: Gives you a detailed file status report on what files and
  server lists are being used by mIRC Link Looker. Also reports the
  current IRC Server and port that you are connected to.

  SERVER LIST:

    VIEW: This menu command will allow you to view any Server List file
    within the Server Log file that you have loaded. You can then
    rename or delete any server from the server list or connect to one
    of the listed servers.

    LOAD: Loads a Server Listing that is stored in the Server Log File.
    Server listings are a list of servers that were logged down into
    the Server Log file when you used the 'CREATE' Command. You can
    easly switch between different listings of servers for certain IRC
    Networks by using this 'LOAD' command.

    CREATE: Use this command to create new Server Listings within the
    Server Log File. This command should be used for the first time when
    you use mIRC Link Looker. If your one of those people who go to many
    nets at one time then this command could come in handy. For example,
    you could create a different Server List for each IRC Network that
    you go to.

    UPDATE: This command will update the server listing by adding any
    new servers that it finds that are connected to the current IRC
    Network that you are on.

    DELETE: You can delete different Server Listings using this command.

--

Below are a list of popup menus that you can access by pressing the
right mouse button. This menus can only be accessed through the
@SearchResults window that pops up whenever you use the SEARCH, CREATE,
UPDATE and VIEW menu commands.

  CONNECT: Allows you to connect to a server that is listed in the
  @SearchResults window.

  RENAME: Renames a server listed in the @SearchResults window to the
  one you choose.

  DELETE: Deletes a server listed in the @SearchResults window.

These popup menus listed above will only work if your highlighting one of
these several lines:

Server - (server name)
Split Server Detected - (server name)
Added Server - (server name)
Added New Server - (server name)



------
 | \/    CONCLUSION
------

Once again, thanks for downloading this addon. This addon is designed to be
a loadable/configurable addon making it one of my most invanced, coolest
addons ever! You are allowed to copy, paste and edit this addon aslong
as you agree to give me credit and not to distribute the edited version
of this addon unless it's part of a script or bot.

Please let me know via email (matt@snip.net) if you have any questions,
comments, and/or suggestions about this addon. C-ya.

```
