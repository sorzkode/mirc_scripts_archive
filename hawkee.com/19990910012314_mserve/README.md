# multi-fserve v11 by MacPhisto

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

**Script Name:** multi-fserve  
**Version:** 11  
**Category:** addon  
**Author(s):** MacPhisto  
**Email(s):** <nuncio_gen@hotmail.com>  
**Website(s):** [http://nuncio.hypermart.net](http://nuncio.hypermart.net)  
**Release Year:** 1998  
**Tags:** timer, greet, fserver, bot, plugin, alias, fserve, interface, popups, popup, notify, dcc, sockets, trigger, files, fserver  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990910012314_mserve/19990910012314_mserve.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990910012314_mserve.zip",
  "file_count": 5,
  "file_types": [
    ".html",
    ".ini",
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1998-04-14",
  "min_file_date": "1998-03-26",
  "total_size": 147.21,
  "largest_file": "fserve.mrc",
  "text": [
    "fserve.mrc",
    "fserve.ini",
    "changes.txt",
    "readme.txt"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## changes.txt

```text
multi-fserve[v1.011] changes
get the latest version of multi-fserve at http://nuncio.hypermart.net
NOTE : see the end of this document for a sneak-peek at some of the
       features planned for v1.02 and v1.03

1.011 - bug-fix release [4.98]
* fixed error some were experiencing w/ leech fserves (Kelvin)
* fixed repeat-entry bug. (Srinivas Kommireddy)

1.01 - minor version change [3.98]
* added popup control of advertisement construction (Hawkee)
* silenced version reply
* reversed 'who' list order for rADMINs
* corrected channel popup 'viewing entries <n>-<n>' for non-entries.
* fixed permanent user database update bug (Selom Ofori)
* modified initial titlebar scroll
* added function-key support
   f7 users window
   shift+f7 user window for most recent user
   f8 statistics window
* improved text file streaming
* specifiable greeting file for CD-ROM based fserves.
* fixed DCC get killing on file download (Selom Ofori)
* fixed rADMIN give/take/set credit value of 0
* added ratio by file type
* added max gets per user
* implemented wildcard 'get' command (Hawkee)
* added accepted file types to 'info' command
* fixed minor display glitch in statistics window.
* shifted timeout code to be less obtrusive (FervServ)
* added .ini uncaching for non-updating advert text (FervServ)
* fixed problem w/ spaced directory parsing (FervServ)
* added support for DOS-style cd.. and cd\ commands (FervServ)
* fixed problem w/ spaced directory jumping

PLANNED FEATURES
v1.02
- support for multiple languages
- fserve plugins for adding things like games to your fserves
- fserve on/off switch! (I can't believe I left this out.)
- socket-based DCC GETs and SENDs (I may leave this for v1.03)
- user tracking window, in case you miss mIRC's old fserve windows

v1.03
- Graphical User Interface for all portions of fserve (Daryth :)
- ftpd functionality.  fserve and ftpd in one!  Is it possible?
```

## readme.txt

```text
multi-fserve[v1.011] readme file.

This mIRC 5.31+ fserve script supports multiple fserves, each with a
wide range of options for configurability.
Remote administration allows for distributed fserve control and a
simple interface enables complex administration possible even for
fserve beginners.

To load this script, type //load -rs $findfile(c:\,fserve.mrc,1)

For more info see http://nuncio.hypermart.net
(there really is a lot more info :)

== thanks to ==
Hawkee        : suggestions and a damn fine server
Selom Ofori   : monster bug-fixes.
treason       : suggestions for multi-fserve[v1.02]
MacPhisto     : this could have been  b o r i n g . . .
#mirc_scripts : DALnet's most egotistical channel.
|Gravity|     : thanks for cracking those shells.  names.dict rules!
sm0ke         : are you ever NOT juping?
item          : for asking more questions than there are atoms.
ssds          : you'll always own my .it skills.
DeltaBot      : sexy, perpetual +v
magick.net    : I have devoured you.

```
