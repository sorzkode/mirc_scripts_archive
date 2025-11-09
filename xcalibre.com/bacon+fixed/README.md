# bacon+fixed v0 by Unknown

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

**Script Name:** bacon+fixed  
**Version:** 0  
**Category:** protection  
**Authors:** Unknown  
**Email(s):** <vince@fishnet.net>  
**Website(s):** [http://www.fishnet.net/~vince](http://www.fishnet.net/~vince)  
**Release Year:** 1997  
**Tags:** dcc, auto ban, timer, protection, uptime, bot, auto voice  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/xcalibre.com/bacon+fixed/bacon+fixed.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "bacon+fixed.zip",
  "file_count": 4,
  "file_types": [
    ".cfg",
    ".tcl",
    ".txt"
  ],
  "max_file_date": "1997-02-22",
  "min_file_date": "1997-02-09",
  "total_size": 58.65,
  "largest_file": "bacon.tcl",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
This is a "fixed" versioon cause the antiping works and you can now use
/dcc chat <botnick> to start a dcc chat with him/her. Everyone kept
bugging me about these little bugs so i made this to so now i can tell
them to stfu!
               -flizzo
***---------------------------------------------------------***
    evertying below this line were notes from 1st release
***---------------------------------------------------------***
Be sure to read this file completly to make sure that you
install bacon correctly. -flizzo
--------Tips
1) added flags: +g=god(auto reop),+i(instant op)
   +v(auto voice)
2)try out .setup in dcc chat
--------Installation--------
1) First edit the bacon.tcl file and make sure that the
   first line matches the directory when the bacon.tcl
   script is.
2) edit the bacon.cfg file and set everything to the
   desired setting.
   *1=on 0=off
   *this is assuming your command character is !
   >chan-mode  - this is for public commands such as !op
                 !kick !ban !idlekick
   >chan-fun   - this is for alot of stuff including !ping
                 !binfo !chan !char. No mode changes at all!
   >bot-chans  - for public commands such as !addchan
                 !delchan
   >bot-users  - for public commands such as !adduser
                 !deluser !chattr
   >chan-master- public commands such as !save !servers
                 !jump
   >kick-msg   - this is default kick message used with
                 !kick if you dont give a kick message
   >cmd-char   - this is what your public command character
                 will be, in this case it is !. can be 
                 changes using !char(public) or .char(dcc)
   >show-url   - if a user has a url set, using !url, bot
                 will show thier url when they join a chan
   >banned-words-list of words seperated by a list for when
                 someoone says one of these words in a chan
                 they will be kicked if there not +m. Words
                 can be added,deld using !addword !delword
                 (public) or .addword .delword(dcc). Use
                 !words or .words to see current banned words
   >everything else doesn't need to be messed with
3) add this line to the bottom of your eggdrop config file
   source dir_where_bacon.tcl_is/bacon.tcl
4) then run your eggdrop! Be sure to check out '.setup' in DCC Chat!
5) if you got comments or suggestions mail me at vince@fishnet.net
   also check out http://www.fishnet.net/~vince
6) if your NOT running eggdrop1.0m+ AND tcl7.5+ and you get tcl 
   errors, dont comoe bugging me for help.
7) Down to every last . and ) in this script was coded by ME. I did not rip
   anyones code. If you think I stole your code then you can talk to me and
   you will find out I do know tcl. If you wanna be realy leet and steal my
   code i wish you the best. Anyways, have fun with my script.
                      -flizzo@EFnet
```
