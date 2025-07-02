# TDCC (PimpIRC Addon) v1 by Tritian

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

**Script Name:** TDCC (PimpIRC Addon)  
**Version:** 1  
**Category:** addon  
**Author(s):** Tritian  
**Email(s):** <Tritian@PlanetQuake.com>  
**Website(s):** [http://www.pimpin.net/~tritian/](http://www.pimpin.net/~tritian/), [http://www.planetquake.com/mod/pimpirc/](http://www.planetquake.com/mod/pimpirc/), [http://www.pimpin.net/~pimpirc/](http://www.pimpin.net/~pimpirc/)  
**Release Year:** 1998  
**Tags:** timer, alias, popups, dialog, popup, dcc, nicklist  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19991103014236_tdccv06/19991103014236_tdccv06.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19991103014236_tdccv06.zip",
  "file_count": 3,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1998-04-17",
  "min_file_date": "1998-04-17",
  "total_size": 23.53,
  "largest_file": "tdcc.mrc",
  "text": [
    "tdcc.txt",
    "tdcc.mrc",
    "PimpIRC/tdcc.mrc"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## tdcc.txt

```text
TDCC v0.6 by Tritian
A subscript of PimpIRC by Tritian
4-18-98

*** CONTACTING ME ***

mailto:Tritian@PlanetQuake.com
http://www.pimpin.net/~pimpirc/
http://www.planetquake.com/mod/pimpirc/

also try:

Efnet #pimpirc,#quake,#quakeed
Undernet #quake2

*** INFORMATION ***

Ok, all them XiRCON users keep bragging about TDCC support
in XiRCON.. but hey, who can blaim em?  It's about twice as
fast on average then normal DCC.  I've gotten 3.2kps TDCC
transfers with this script on a 33.6, and i've never dropped
below 2kps.  With normal DCC i get around 0.6kps to 1.4kps
So i sat down one day with the goal to bring the world of TDCC
to all mIRC users everywhere.  Maybe now those XiRCON'ers
will shut up eh?  Then again... probably not, but it's worth
a try.

This script was written as an additional DCC protocal as if
Khaled wrote it in mIRC himself (which he should).  Currently
this script tries it's best to imitate the current DCC setup
but due to some hard coded limitation in mIRC, i cannot
completely recreate some ways that normal DCC behaves (namely
the DCC ACCEPT dialog boxes, etc..)

This script does come pretty damn close to recreated a DCC
GET/SEND progress window.  I did take some liberty in adding
a KPS indicator instead of the traditional CPS indicator.
CPS is dead anyway, it died with the days of the BBS, let it
rest in piece.  I also used $duration to get the hour/min/secs
to look how i feel it should look.  Currently Khaled uses some
wack HR:MN:SC format thing which is just wierd and i never
really liked it.

Just do a /tdcc SEND <nick> <file> or use the nicklist popups
The next version should have resume.  I know it's a tad
clunky now but hey, atleast it works (for the most part)

Thanks to luser for all his help with the math (a subject that
I am less then remarkable in.)

*** BUGS ***

OK, i haven't added multiple TDCC's at the same time support yet
so you just plain cant do it.  sorry.  If you attempt to, you get
a big fat error saying only one tdcc at a time.  and it could
start to mess up things

Resizing the window can get a tad odd, the resize takes effect 
when the next packet is sent, since mirc has no events to detect
a resize.

And, ofcourse, you cant tdcc someone a file with spaces in it, and
getting a file with spaces in it may fux0r things up also.  this is
a hard coded limitation of mirc.

*** INSTALLATION ***

1) Place the tdcc.mrc file in your mIRC dir
2) Load mirc
3) In any mIRC window, type in:

	/load -rs tdcc.mrc

4) Enjoy TDCC.

*** FUTURE PLANS ***

RESUME is going in the next version
Multiple TDCC's is going in the next version aswell
```
