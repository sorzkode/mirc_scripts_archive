# by misterme v0.5 by misterme

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

**Script Name:** by misterme  
**Version:** 0.5  
**Category:** game  
**Authors:** misterme  
**Email(s):** <Millenium@grn-sc4-02.ix.netcom.com>, <markg@commslab.gov.au>, <Syndi@os2.scoc.org>, <z0so@geocities.com>, <deranged@stu056.bsc.edu>, <mrhoades@thunderbolt.ecsel.psu.edu>, <redman@absence.com>, <jwhit@nfinity.nfinity.com>  
**Website(s):** [http://lien.no:/server](http://lien.no:/server), [http://fl.us.dal.net:/server](http://fl.us.dal.net:/server), [http://fl.us.dal.net](http://fl.us.dal.net), [http://(%j).desc](http://(%j).desc), [http://www.geocities.com/TimesSquare/3873/irc.html](http://www.geocities.com/TimesSquare/3873/irc.html)  
**Release Year:** 1996  
**Tags:** wav, raw events, protection, notify, nicklist, auto-op, timer, alias, dcc, auto-deop, addon, bot, uno, greet, gui, popup, flood protection, auto op, xdcc, mass kick, highlight, popups, mp3  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/Other/infi/infi.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "infi.zip",
  "file_count": 38,
  "file_types": [
    ".faq",
    ".gk",
    ".hlp",
    ".ini",
    ".lng",
    ".mir",
    ".not",
    ".raw",
    ".txt",
    ".ver"
  ],
  "max_file_date": "1996-12-30",
  "min_file_date": "1996-09-07",
  "total_size": 131.97,
  "largest_file": "INFI/ADDON/EXP.RAW",
  "text": [
    "INFI/ADDON/EXP.TXT",
    "INFI/ADDON/ADDON.FAQ"
  ]
}
```

## 📋 Text Content (from INFI/ADDON/EXP.TXT)

```text
### .x(exp)x. 

### version 2.1 by `Zoso

###

###

### stuph i'd like to say:



Exp is an addon for raw clones. to load it, unzip it into your

addon dir and type /load exp.mir



If you don't know what the hell I'm talking about, here's some stuff from

the addon faq by [x|x] and webba:



+------------------------------------------------------------------------+

In order to add compatibility for addons in your script you need:



1. %VER variable containg your scripts version

2. An /ADDON directory off of your main MIRC directory

3. Install the alias /LOAD below

load {

  if (%ver == $null) {

    echo 4 $active This is a non-compliant script, load failed.

    halt

  }

  elseif (( $right(5,$1) == .mirc ) || ( $right(4,$1) == .mir )) {

    play -c $me $mircdir $+ addon\ $+ $1 0

    goto end

  }

  else /load $1 $2

  }

  else {

    echo 4 $active Unsupported extension, load failed.

  }

  :end

}



Thats IT! Do those 3 things and all your scripts will be compatible

with addons.

+------------------------------------------------------------------------+



 * End of thingy...



 * For more info, and the entire addon.faq, go to:

                 http://www.varium.com/xix/



### Here's some niftly features of exp:



    Popups (first addon I know of that does this)



    Raw clones (that's the whole point of this)



    Events (not the first addon to use these)



### Stuff to look for later (don't hold your breath, im pretty lazy)



    Other neato raw features



    Bug fixes (if there are bugs, which is most likely) btw, if you find a 

     bug, im z0so on efnet, or you can email me at z0so@geocities.com



    Maybe other addons, and some code to satisfy yer hunger 



### Other notes, read it.



    exp *requires* the addon dir in yer mircdir.  If you don't have it, exp

     will detect this on load, and stop the play.  It needs this, because it

     reads from a text file (exp.raw) for most stuff in yer mirc addon dir.



    type /exphelp when it loads, for help of course.



    you must have a %ver, ie /set %ver )-(G )-(Gh /<. (hurts yer 

     eyes, doesnt it?



    This *is* for mirc 4.6, not 4.7, 4.7 came out right when i was about to

     release this :P



Shootoutz to:

ANSee, mcbain, acidjag, acidx, bleach, MrBubbles, bice, selstice, stickb, 

kaleido, ctennis, bice, shylock



IN NOT PARTICULAR ORDER!@^$% :) 



and i probly fergot you, i just looked in the channel list and 

picked out some random ppl who i know. :)



### stuff you dont care about

And of course, the usual boring disclaimer..you don't have to read this, it 

basically says leave me alone if this causes anything bad..:P



### DISCLAIMER: ###

I am not responsible for any damage to anything, nothing, but I'll go ahead

and list what I'm not responsible for (the likely stuph) and all..



 - K:lines, g:lines, or /kill's (don't act surprised!)

 - Any loss of friendship or damage to your irc life

 - Channel ban's or kick's or anything else

 - Anything else.



so you get the point.. don't try to pull anything on me. (especially

lawsuits)
```
