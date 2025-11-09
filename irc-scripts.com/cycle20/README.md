# cycle20 v2.0 by Dude

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

**Script Name:** cycle20  
**Version:** 2.0  
**Category:** bot  
**Authors:** Dude  
**Email(s):** <matt@snip.net>, <mirc-subscribe@egroups.com>, <dudemirc-subscribe@egroups.com>, <dudetcl-subscribe@egroups.com>, <mirc@egroups.com>  
**Website(s):** [http://free.prohosting.com/~dude/](http://free.prohosting.com/~dude/), [http://www.mircx.com/](http://www.mircx.com/), [http://free.prohosting.com/~dude/)](http://free.prohosting.com/~dude/)), [http://www.mirc.com/](http://www.mirc.com/)  
**Release Year:** 2000  
**Tags:** popup, timer, addon, bot, alias, rejoin, popups  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/cycle20/cycle20.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "cycle20.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2000-03-24",
  "min_file_date": "2000-03-24",
  "total_size": 13.22,
  "largest_file": "cycle.txt",
  "text": [
    "cycle.txt"
  ]
}
```

## 📋 Text Content (from cycle.txt)

```text
==CYCLE.MRC v2.0 By Dude <email: matt@snip.net> | ICQ: 4516120

==Released on March 24, 2000 for mIRC v5.02 through v5.7x and up

==Visit Dude's Domain at http://free.prohosting.com/~dude/



==TABLE OF CONTENTS



1. INTRODUCTION

2. DISCLAIMER

3. USER AGREEMENT

4. REQUIREMENTS

5. WHAT'S NEW

6. KNOWN BUGS

7. INSTALLATION

8. HELP

9. CONCLUSION



==INTRODUCTION



Thanks for downloading CYCLE.MRC, a mIRC Addon By Dude. CYCLE.MRC allows

you to cycle (part/rejoin) channels with ease. All you have to do is type

/cycle in a channel window or you can right click the middle of the channel

window and select 'Cycle Channel'. But this addon can do even more! It now

allows you to specify a channel name (eg: /cycle #channel) or use a cycle

msg (eg: /cycle brb OR /cycle #channel brb). And for an added bonus, you

can now cycle all channels at once by typing /cycleall or /cycleall <msg>.

If you have any questions, comments, suggestions, or bug reports then please

try contacting me either via email, on ICQ, or on IRC using the nick Dude.



NOTE: Refer to HELP (Section 8) for the command syntax for both commands.



This addon was fully tested on, and should work fine with, #, &, +, ! channels.



==DISCLAIMER



CYCLE.MRC was written for educational purposes ONLY and is provided AS IS

without any warranty of any kind. I take *NO* responsibility in what you do

with this addon. By loading and/or using CYCLE.MRC for whatever reasons, you

are agreeing *NOT* to hold Dude, the Author of CYCLE.MRC, liable for your

*OWN* actions or for any damages caused as a result of the use and storage

of CYCLE.MRC, including direct, indirect, incidental, consequental, loss of

business profits or special damages, even if Dude has been advised of the

possiblity of such damages. If you disagree with this disclaimer in whole or

in part then please DO NOT use CYCLE.MRC and make sure you delete it ASAP!



==USER AGREEMENT



You may freely use/modify this addon as a whole, or parts of it for use in

your own scripts, bots, and addons aslong as you give me credit. However,

you CAN NOT take this addon as a whole and change the name of it, who made

it, it's version number, etc... and rerelease it under another name saying

you made it and stuff.. That is called *Script Ripping* and is highly frowned

upon on IRC and the Internet in general. When distributing this addon as a

whole, please make sure you distribute it in it's unmodified form the way it

was distributed by me unless it's being included in your own scripts, bots,

and addons. I would also appreciate it if you email me first if you decide to

add this addon as a whole or parts of it to your own scripts, bots, and addons.

Also, if you happen to see anyone ripping this addon then please email me or

contact me on ICQ ASAP with the location of where you found the ripped addon

or send it to me via email or ICQ if you happen to still have it on you.



==REQUIREMENTS



This addon should work with mIRC v5.02 through v5.7x and up. However, it is

highly recommended that you use atleast mIRC v5.7x when running this addon

so that you experience the least problems if anything does go wrong. I can not

assure you that it'll work on older versions even though I have fully tested

it and have found nothing wrong with it. If you don't have mIRC v5.7x or a

newer version, then you can download the latest version of mIRC from the mIRC

Homepage at http://www.mirc.com/ or you can also go to the mIRCX Homepage to

find a archive of every version of mIRC ever released at http://www.mircx.com/



At a later date, I may add a huge archive at my homepage similar to the one

on mIRCX where you can download every version of mIRC ever released. You

can check to see if that archive has been brought online or not by going to:



        Dude's Domain -> http://free.prohosting.com/~dude/



==WHAT'S NEW



1. removed timers which means no more delay in cycling channels

2. now cycling channels is done using the /raw command

3. added a server check to make sure you're on IRC before trying to cycle

4. added support for channel keys (+k)

5. added support for #channel arg in /cycle command (eg: /cycle #channel)

6. added support for a cycle msg in the /cycle command (eg: /cycle brb)

7. added /cycleall command which allows you to cycle all channels

8. added support for a cycle msg in the /cycleall command (eg: /cycleall brb)

9. unlike v1.0, this version is compatable with mIRC v5.02 - 5.7x and up



==KNOWN BUGS



1. Their seems to be a bug in mIRC v5.7 that will crash your mirc whenever you go

   into remote to do changes to anything including this addon. It may just be me

   who is having problems but it's possible it could happen to anyone who tries

   editing this addon and testing it afterwards. this bug is not really a bug in

   the addon, but a bug in mIRC v5.7 itself. It appears that this bug doesn't occur

   from normal use. If for any reason you ever experience any kin
```
