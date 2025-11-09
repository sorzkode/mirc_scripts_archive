# hex v1.02 by Unknown

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

**Script Name:** hex  
**Version:** 1.02  
**Category:** protection  
**Authors:** Unknown  
**Email(s):** <hexagon@gim.net>, <yu132952@yorku.ca>, <david.gravereaux@snet.com>, <pyro@imag.net>  
**Website(s):**   
**Release Year:** 1997  
**Tags:** greet, rejoin, channel protection, wav, timer, owner commands, protection, notify, auto-voice, bot, dcc  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/xcalibre.com/hex/hex.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "hex.zip",
  "file_count": 8,
  "file_types": [
    ".txt"
  ],
  "max_file_date": "1997-03-22",
  "min_file_date": "1997-01-09",
  "total_size": 166.54,
  "largest_file": "CHANTOLS.TXT",
  "text": [
    "AWAY.TXT",
    "CHANTOLS.TXT",
    "CLEANUP.TXT",
    "ICMP.TXT",
    "JUNKIE.TXT",
    "MATCH.TXT",
    "SEEN.TXT",
    "VOICE.TXT"
  ]
}
```

## 📋 Text Content (from AWAY.TXT)

```text
# add as many away msgs as you like, using this same format
# I made these msgs bogus so you will be forced to make up
# your own!  :p



putlog "Loaded away.tcl v1.02"

set awaymsgs {
  {Watching TV... msg 1}
  {Watching VCR.. msg 2}
  {Eating........ msg 3}
  {BOOZETIME!!... msg 4}
  {Studying...... msg 5}
  {FuCKiNG HaRD!! msg 6}
  {MaSTuRBaTiNG.. msg 7}
}

# you probably shouldn't change anything below here ##
######################################################
proc make_away {} {
  global awaymsgs
  if [rand 2] {
    putserv "AWAY :[lindex $awaymsgs [rand [llength $awaymsgs]]]"
  } else {
    putserv "AWAY"
  }
  timer [expr [rand 60]+1] make_away
}


if {![info exist run_away]} {

  set run_away 1
  timer [expr [rand 60]+1] make_away

}
```
