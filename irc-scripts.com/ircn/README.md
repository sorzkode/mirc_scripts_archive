# ircn v3.0 by delusion_

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

**Script Name:** ircn  
**Version:** 3.0  
**Category:** game  
**Authors:** delusion_  
**Email(s):** <delusion_@mindless.com>, <vincv@ucla.edu>, <your@email.add>, <iron@hi2-141.dyn.online.ee>, <gOd@smurfland.org>, <potvin@-.-.-.-.-.-.-.-.SHADOWNET.org>, <g3nius@usa.net>, <dont@worry.bout.it>, <cdcd@thepentagon.com>, <Box1@usr59-dialup215.mix1.Sacramento.cw.net>  
**Website(s):** [http://US.GalaxyNet.Org](http://US.GalaxyNet.Org), [http://crackrock.base.org](http://crackrock.base.org), [http://www.toplessteens.com/~kraig](http://www.toplessteens.com/~kraig), [http://www.run](http://www.run), [http://WAVE:addons912.wav](http://WAVE:addons912.wav), [http://www.ashpool.com/~saad](http://www.ashpool.com/~saad), [http://www.on)](http://www.on))  
**Release Year:** 2000  
**Tags:** idle kick, wav, trigger, seen bot, remote script, protection, notify, fserver, rejoin, toolbar, nicklist, auto-op, slap, timer, alias, auto away, dcc, last seen, auto-away, channel protection, auto msg, addon, bot, interface, uno, swear, greet, kickban, midi, gui  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/ircn/ircn.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "ircn.zip",
  "file_count": 135,
  "file_types": [
    ".adn",
    ".als",
    ".bat",
    ".bx",
    ".chn",
    ".dir",
    ".exe",
    ".faq",
    ".gif",
    ".ini",
    ".jbf",
    ".jpg",
    ".log",
    ".mrc",
    ".pop",
    ".smp",
    ".th2",
    ".thm",
    ".txt"
  ],
  "max_file_date": "2000-04-24",
  "min_file_date": "1996-08-11",
  "total_size": 2045.5,
  "largest_file": "ircn/SYSTEM/smurf1.exe",
  "text": [
    "ircn/DOCS/Addon.faq",
    "ircn/DOCS/Theme2.faq",
    "ircn/DOCS/Themes.faq",
    "ircn/DOCS/Faq.txt",
    "ircn/DOCS/SAMPLES/Sample.faq",
    "ircn/SYSTEM/VREPLY.TXT",
    "ircn/SYSTEM/AWAY.TXT",
    "ircn/TEMP/queue.txt",
    "ircn/TEXT/Finger.txt",
    "ircn/TEXT/Quotes.txt",
    "ircn/TEXT/msg.txt",
    "ircn/TEXT/page.txt",
    "ircn/TEXT/welcome.txt"
  ]
}
```

## 📋 Text Content (from ircn/DOCS/Addon.faq)

```text
ircN Addon FAQ

==============



ircN for mIRC

Copyright  1997 Patrick McLean

All rights reserved.



To have your ircN Addon distributed on this page and/or #ircN and #ircNfiles, then you must follow these set of rules so that your addon can coexist with any new or currently loaded addon. I reserve the right to discriminate against any addons that I feel will detract from ircN or those which were made specifically to harrass other users of ircN or IRC. 



Rules 

-----

1. No ircN alias, variable, text, or script can be altered, removed, or replaced. 



2. You must use the ircN Addon Installer (sample.adn) or one similar to it. 



3. All files must be located inside the addon directory or a subdirectory. 



4. Variable names must start with your addon suffix, followed by a period, and then the name which you would normally call it. 

               i.e. %blah.ver %blah.mode 



5. File extension to load the addon installation routine must be .adn 



6. The script itself that will be loaded upon completion of the addon installation should be only ONE file loaded into the remote  (Unless your script is over 30k).



7. Do not add any popup menus to the Menubar or Status Window. Any other popup menus are fine. Also keep the length of the addition to the popups short so the popups dont get stretched out.



8. The addon should have an option to uninstall itself completely without conflicting with any other loaded addon or ircN. 



9. Any calls to 'write' or 'alias' in the installation procedre are not allowed and cannot be installed with ircN.



To get credit in ircN using /scriptinfo, save your addon in non-ini format, something with an extension other than .ini, and add these lines at the top or bottom of your script.



;%%%%%%%%%%%%%%%%%%%%%%%%

;script ircN

;version 6.0

;author Chutzpah, icN

;email chutzpah@ircn.com

;url http://www.ircN.com

;%%%%%%%%%%%%%%%%%%%%%%%%



Of course you will need to substitute your info for mine.





Helpful ircN Identifiers

------------------------



There are other identifiers not listed here and can be found in the identfrs.als file located in the ircN system directory.



$usr(nickname)	 returns correct stored nickname of IRC nickname



$pages		 returns how many pages there are



$nc(nick)

		 returns full length of nick if found.



$swlc(@Window Name)

		 saves the window coordinates to a variable.

   		 ie. /set %yourvar $swlc(@MyWindow)

		 then: /window -switch @MyWindow %yourvar [other cmds]



$clop(nick,chan)

		 returns @nick, +nick, or nick depending on what flags

		 nick has on chan.



$chkop(nick)

		 returns '1' if you are opped on a channel 

		 that nick is not on.

		 returns '0' if no channels are found.



$a.numsg 

		 returns how many saved messages there are.



$a.f(text)

		 removes '|' and '/' from text to prevent a mIRC

                 exploit if $read -n or $readini -n is not used.



$oc(value,%variable)

		 returns 'value' if the %variable is set to 'on'

		 returns nothing if anything else



$cop(chan)

		 returns the value @chan if you are opped on chan.



$sd(nick,chan)

		 returns '1' if nick is banned from channel.

		 returns '0' if nick isnt.



$oppw(nick,password)

		 returns '1' if nick matched password in user database.

		 returns '0' if password does not match.



$atime

                                 returns the time in am/pm format



$getdate

                                 returns the full date/time



$gettz

                                 returns the user's timezone in GMT +/- xxxx format



$atop(nick,chan)

		 returns '1' if nick is allowed to be opped in chan.

		 returns '0' if nick isnt allowed.



$atv(nick,chan)

		 returns '1' if nick is allowed to be voiced in chan.

		 returns '0' if nick isnt allowed.



$iduration(time)

		converts the time from seconds to minutes, hours, days, 

		weeks, the seconds is returned to up to 3 decimal places 

		if the duration is less than a minute, and 2 decimal places 

		if it is less than an hour.



$fix(length,text)

		 aligns text on left according to length given.

		   ie.   icN      irc.uci.edu

			 ircN     irc.ucla.edu



$lfix(length,text)		

		 aligns text on the right according to length given.

		   ie.     icN       irc.uci.edu

		          ircN      irc.ucla.edu



$ca(parms)

		 if H is in parms returns 'HERE', if H is not in                      parms

		 then it returns 'AWAY' (used in raw)



$rb(parms)

		 removes [ and ] from parms.  Used in writeini and

		 and $readini to prevent errors. (used for nicks)

			ie. $rb([icN]) returns 'icN'



$rsc(duration)

		 removes spaces and trailing letters from $duration.

			ie. 1 day 4hrs 3mins returns '1d4h3m'



$kps(cps)

		 returns cps into kps format.

			ie. 2435 cps returns 2.43 kps



$rrpt(ticks)     converts ticks into seconds.

			ie. 34343 returns 34.343



$opbot(nick,chan)

		returns "1" if the nick is a bot on your userlist and is opped in the chan

		returns "0" oth
```
