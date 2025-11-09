# xirc_810_hack v1.5 by David Gravereaux

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

**Script Name:** xirc_810_hack  
**Version:** 1.5  
**Category:** channel  
**Authors:** David Gravereaux  
**Email(s):** <spawn@leetcode.com>, <davygrvy@bigfoot.com>  
**Website(s):** [http://www.cogent.net/~duquette/tcl/namespaces.html](http://www.cogent.net/~duquette/tcl/namespaces.html), [http://www.scriptics.com/software/8.1.html](http://www.scriptics.com/software/8.1.html)  
**Release Year:** 1999  
**Tags:** gui, alias, timer  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/xirc_810_hack/xirc_810_hack.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "xirc_810_hack.zip",
  "file_count": 6,
  "file_types": [
    ".dll",
    ".ini",
    ".tcl",
    ".txt"
  ],
  "max_file_date": "1999-06-30",
  "min_file_date": "1999-05-05",
  "total_size": 69.63,
  "largest_file": "Xtcl.dll",
  "text": [
    "readme.txt",
    "changes.txt",
    "lametutorial.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
RCS: @(#) $Id: readme.txt,v 1.5 1999/06/30 09:09:56 DaveG Exp $

===============================================================



  XiRC_810_hack  v1.9



  by David Gravereaux <davygrvy@bigfoot.com>



  10:50 PM 6/29/99



===============================================================



Q:  What is this?

A:  This is my "hack" to enable XiRCON to use the scriptics' release

    binaries of the Tcl library instead of Mark's custom compile that

    came with the client.



Q:  Why should I upgrade?

A:  The author has lost interst in his project.  He hasn't released an

    upgrade for what seems like an eternity (July '97, i think).  This

    hack allows the use of the LATEST and BEST Tcl code.  Some of the 

    additional features are the fact that:



       1) Tk, and ANY Stubs-enabled extension, can now load into XiRC!

       2) XiRCON extension authors now have all 700+ Tcl functions to

           play with.  An astounding improvement over the limiting 12

           in the original Xtcl.dll.

       3) Monsterous amounts of improvements have been done to the Tcl

           core since 7.6p2 was release in late '96.

       4) Upgrading the core when a new version of Tcl is released

           will also update XiRCON.



Q:  What are some of the bugs?

A:  none that I know of.



     1) The byte-code compiler may not like some Tcl syntax that XiRCON

         didn't mind.  This is not a bug, just a different interpreter

         that pre-compiles to byte code.

     2) Tk will run, but not well due to how Mark isn't using Tcl's

         notifier the way it was meant to be used.  Which isn't fixable

         without his source code.  This is the infamous 'on timer' bug.



Q:  Can this work with any Tcl core besides 8.1.0?

A:  No.  Just Stub-enabled cores like 8.1.x or even 8.2+



Q:  Can any extension made for Tcl 8.1.x run in XiRCON now?

A:  hell yezzz.  The package loader works (never did before).



   'info nameofexecutable' works, too.  So does 'package present XiRCON'



Q:  Is this backward compatible with older scripts.

A:  NO!  I've changed how hooks run.  And the XiRCON commands are in their

    own namespace.  Please see lametutorial.txt for an explanation how to

    update your scripts.



Q:  How do I install it?

A:

    1) download Tcl 8.1.0 (or whatever the latest is) from Scriptics and

        install it.   http://www.scriptics.com/software/8.1.html

    2) exit XiRCON, if it's running.. duh!

    3) rename your original Xtcl.dll to something else like "Xtcl.dll.org"

    4) place the new Xtcl.dll, Xtcl.ini and xircrc.tcl into your XiRCON

        directory.

    5) edit Xtcl.ini to point to where tcl81.dll is.  Most likely, it will

        be "c:\program files\tcl\bin\tcl81.dll"

    6) edit xircrc.tcl and add the correct path to where the Tk dll is.

        This step is optional.  Only if you want to play with Tk in XiRCON.





David Gravereaux

mailto:davygrvy@bigfoot.com
```
