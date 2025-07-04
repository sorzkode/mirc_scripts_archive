# ELEUSIS v1 by KapMan

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

**Script Name:** ELEUSIS  
**Version:** 1  
**Category:** Full  
**Author(s):** KapMan  
**Email(s):** <eleusis@coollist.com>, <1kap@icon.co.za>  
**Website(s):** [http://www.ScriptingCrypt.com](http://www.ScriptingCrypt.com), [http://eleusis.home.ml.org](http://eleusis.home.ml.org)  
**Release Year:** 1997  
**Tags:** swear, file server, auto-away, on join message, channel protection, auto-op, last seen, timer, popup, addon, dcc, kickban, nicklist, protection, auto op, access list, highlight, trigger, greet, alias, fserve, slap, notify, welcome message  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990909022157_eleusis/19990909022157_eleusis.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990909022157_eleusis.zip",
  "file_count": 35,
  "file_types": [
    ".ele",
    ".ini",
    ".txt"
  ],
  "max_file_date": "1997-07-22",
  "min_file_date": "1996-06-16",
  "total_size": 191.46,
  "largest_file": "ele/sys/channel.ele",
  "text": [
    "ele/mirc.ini",
    "ele/logs/Log DIR.txt"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## ele/sys/credits.ele

```text
cred {
  window @credits 250 250 250 250
  aline @credits 1,1_____________________________________________________________________
  aline @credits 1,1__________   ________________________________________________________
  aline @credits 1,1_____________________________________________________________________
  aline @credits 1,1__________________________________________________________________________
  aline @credits 1,1_____________________________________________________________________
  aline @credits 1,1_____________________________________________________________________
  aline @credits 1,1_____________________________________________________________________
  aline @credits 1,1_____________________________________________________________________
  aline @credits 1,1_____________________________________________________________________  
  aline @credits 1,1________________________________________________________________
  aline @credits 1,1_____________________________________________________________________
  aline @credits 1,1__________________________________________________________________________
  aline @credits 1,1__________________________________________________________________________
  aline @credits 1,1__________________________________________________________________________
  aline @credits 1,1__________________________________________________________________________
  aline @credits 1,1__________________________________________________________________________
  aline @credits 1,1__________________________________________________________________________
  aline @credits 1,1__________________________________________________________________________
  aline @credits 1,1__________________________________________________________________________
  aline @credits 1,1__________________________________________________________________________
  aline @credits 1,1________16,1The 10,1ELEUSIS 16,1Team1,1______________________________________________________
  aline @credits 1,1____________7,1Present1,1____________________________________________________
  aline @credits 1,1_____________________________________________________________________
  aline @credits 1,1_________________________________________________________________________
  aline @credits 1,1__________________________________________________________________________
  aline @credits 1,1__________________________________________________________________________
  aline @credits 1,1__________________________________________________________________________
  aline @credits 1,1__________________________________________________________________________
  aline @credits 1,1__________________________________________________________________________
  aline @credits 1,1__________________________________________________________________________
  aline @credits 16,1__________________________________________________________________________
  aline @credits 1,1_____9,1http://eleusis.home.ml.org1,1__________________________________________________________________________
  aline @credits 1,1_6,1   Mailing-list: eleusis@coollist.com1,1_____________________________________________________________________
  aline @credits 1,18,1   E-Mail: 7,1kap@icon.co.za to be added!1,1_____________________________________________________________________
  .timer 1 1 /rline @credits 22 1,1____________7,1Pr8,1es7,1en8,1t1,1____________________________________________________
  .timer 1 2 /rline @credits 22 1,1____________8,1Pr7,1es8,1en7,1t1,1____________________________________________________
  .timer 1 3 /rline @credits 22 1,1____________7,1Pr8,1es7,1en8,1t1,1____________________________________________________
  .timer 1 4 /rline @credits 22 1,1____________8,1Pr7,1es8,1en7,1t1,1____________________________________________________
  .timer 1 5 /rline @credits 22 1,1____________7,1Pr8,1es7,1en8,1t1,1____________________________________________________
  .timer 1 6 /rline @credits 22 1,1____________8,1Pr7,1es8,1en7,1t1,1____________________________________________________
  .timer 1 7 /rline @credits 22 1,1____________7,1Pr8,1es7,1en8,1t1,1____________________________________________________
  .timer 1 8 /rline @credits 22 1,1____________8,1Pr7,1es8,1en7,1t1,1____________________________________________________
  .timer 1 9 /rline @credits 22 1,1____________7,1Pr8,1es7,1en8,1t1,1____________________________________________________
  .timer 1 10 /rline @credits 22 1,1____________8,1Pr7,1es8,1en7,1t1,1____________________________________________________
  .timer 1 11 /rline @credits 22 1,1____________7,1Pr8,1es7,1en8,1t1,1____________________________________________________
  .timer 1 12 /rline @credits 22 1,1____________8,1Pr7,1es8,1en7,1t1,1____________________________________________________
  .timer 1 13 /rline @credits 22 1,1____________7,1Pr8,1es7,1en8,1t1,1____________________________________________________
  .timer 1 14 /rline @credits 22 1,1____________8,1Pr7,1es8,1en7,1t1,1____________________________________________________
  .timer 1 15 /rline @credits 22 1,1____________7,1Pr8,1es7,1en8,1t1,1____________________________________________________
  .timer 1 16 /rline @credits 22 1,1____________8,1Pr7,1es8,1en7,1t1,1____________________________________________________
  .timer 1 17 /rline @credits 22 1,1____________7,1Pr8,1es7,1en8,1t1,1____________________________________________________
  .timer 1 18 /rline @credits 22 1,1____________8,1Pr7,1es8,1en7,1t1,1____________________________________________________
  .timer 1 19 /rline @credits 22 1,1____________7,1Pr8,1es7,1en8,1t1,1____________________________________________________
  .timer 1 20 /rline @credits 22 1,1____________8,1Pr7,1es8,1en7,1t1,1____________________________________________________
  .timer 1 21 /rline @credits 22 1,1____________7,1Pr8,1es7,1en8,1t1,1____________________________________________________
  .timer 1 22 /rline @credits 22 1,1____________8,1Pr7,1es8,1en7,1t1,1____________________________________________________
  .timer 1 23 /rline @credits 22 1,1____________7,1Pr8,1es7,1en8,1t1,1____________________________________________________
  .timer 1 24 /rline @credits 22 1,1____________8,1Pr7,1es8,1en7,1t1,1____________________________________________________
  .timer 1 25 /rline @credits 22 1,1____________7,1Pr8,1es7,1en8,1t1,1____________________________________________________
  .timer 1 26/rline @credits 22 1,1____________8,1Pr7,1es8,1en7,1t1,1____________________________________________________
  .timer 1 27 /rline @credits 22 1,1____________7,1Pr8,1es7,1en8,1t1,1____________________________________________________
  .timer 1 28 /rline @credits 22 1,1____________8,1Pr7,1es8,1en7,1t1,1____________________________________________________
  .timer 1 29 /rline @credits 22 1,1____________7,1Pr8,1es7,1en8,1t1,1____________________________________________________
  .timer 1 30 /rline @credits 22 1,1____________8,1Pr7,1es8,1en7,1t1,1____________________________________________________
  .timer 1 31 /rline @credits 22 1,1____________7,1Pr8,1es7,1en8,1t1,1____________________________________________________
  .timer 1 32 /rline @credits 22 1,1____________8,1Pr7,1es8,1en7,1t1,1____________________________________________________
  .timer 1 33 /rline @credits 22 1,1____________7,1Pr8,1es7,1en8,1t1,1____________________________________________________
  .timer 1 34 /rline @credits 22 1,1____________8,1Pr7,1es8,1en7,1t1,1____________________________________________________
  .timer 1 1 /rline @credits 24 1,1_________4,1E1,1____________________________________________________
  .timer 1 2 /rline @credits 24 1,1_________4,1EL1,1____________________________________________________
  .timer 1 3 /rline @credits 24 1,1_________4,1ELE1,1____________________________________________________
  .timer 1 4 /rline @credits 24 1,1_________4,1ELEU1,1____________________________________________________
  .timer 1 5 /rline @credits 24 1,1_________4,1ELEUS1,1____________________________________________________
  .timer 1 6 /rline @credits 24 1,1_________4,1ELEUSI1,1____________________________________________________
  .timer 1 7 /rline @credits 24 1,1_________4,1ELEUSIS1,1____________________________________________________
  .timer 1 8 /rline @credits 24 1,1_________4,1ELEUSIS3 f1,1____________________________________________________
  .timer 1 9 /rline @credits 24 1,1_________4,1ELEUSIS 3fo1,1____________________________________________________
  .timer 1 10 /rline @credits 24 1,1_________4,1ELEUSIS 3for1,1____________________________________________________
  .timer 1 11 /rline @credits 24 1,1_________4,1ELEUSIS 3for 1,1____________________________________________________
  .timer 1 12 /rline @credits 24 1,1_________4,1ELEUSIS 3for 11m1,1____________________________________________________
  .timer 1 13 /rline @credits 24 1,1_________4,1ELEUSIS 3for 11mI1,1____________________________________________________
  .timer 1 14 /rline @credits 24 1,1_________4,1ELEUSIS 3for 11mIR1,1____________________________________________________
  .timer 1 15 /rline @credits 24 1,1_________4,1ELEUSIS 3for 11mIRC1,1____________________________________________________ 
  .timer 1 16 /rline @credits 26 1,1_________14***15The Team14***1,1____________________________________________________ 
  .timer 1 17 /rline @credits 28 1,1____15------->14 KapMan1,1_________________________________________________________________
  .timer 1 18 /rline @credits 28 1,1____------->14 KapMan1,1_________________________________________________________________
  .timer 1 19 /rline @credits 28 1,1____15------->14 KapMan1,1_________________________________________________________________
  .timer 1 20 /rline @credits 28 1,1____------->14 KapMan1,1_________________________________________________________________
  .timer 1 21 /rline @credits 28 1,1____15------->14 KapMan1,1_________________________________________________________________
  .timer 1 22 /rline @credits 28 1,1____------->14 KapMan1,1_________________________________________________________________
  .timer 1 23 /rline @credits 28 1,1____15------->14 KapMan1,1_________________________________________________________________
  .timer 1 24 /rline @credits 28 1,1____------->14 KapMan1,1_________________________________________________________________
  .timer 1 25 /rline @credits 26 1,1_________14***15The Team14***1,1____________________________________________________ 
  .timer 1 26 /rline @credits 29 1,1____15------->14 Cybernator1,1_________________________________________________________________
  .timer 1 27 /rline @credits 29 1,1____------->14 Cybernator1,1_________________________________________________________________
  .timer 1 28 /rline @credits 29 1,1____15------->14 Cybernator1,1_________________________________________________________________
  .timer 1 29 /rline @credits 29 1,1____------->14 Cybernator1,1_________________________________________________________________
  .timer 1 30 /rline @credits 29 1,1____15------->14 Cybernator1,1_________________________________________________________________
  .timer 1 31 /rline @credits 29 1,1____------->14 Cybernator1,1_________________________________________________________________
  .timer 1 32 /rline @credits 29 1,1____15------->14 Cybernator1,1_________________________________________________________________
  .timer 1 33 /rline @credits 29 1,1____------->14 Cybernator1,1_________________________________________________________________
}

```
