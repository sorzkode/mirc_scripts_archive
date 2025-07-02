# SplitShift v3.02 by TheJudge

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

**Script Name:** SplitShift  
**Version:** 3.02  
**Category:** Full  
**Author(s):** TheJudge  
**Email(s):** <thejudge@bigfoot.com>, <TheJudge@bigfoot.com>  
**Website(s):** [http://mirc.stealth.net](http://mirc.stealth.net), [http://.easynet.co.uk/~splitshift/](http://.easynet.co.uk/~splitshift/)  
**Release Year:** 1998  
**Tags:** swear, mp3, channel protection, timer, mass op, flood protection, popup, dcc, mass kick, nicklist, kickban, protection, gui, bot, auto-deop, channel control, trigger, user levels, rejoin, alias, popups, mp3 player, interface, auto-kick  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990819230132_split302/19990819230132_split302.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990819230132_split302.zip",
  "file_count": 10,
  "file_types": [
    ".bmp",
    ".scp",
    ".txt"
  ],
  "max_file_date": "1998-01-25",
  "min_file_date": "1998-01-18",
  "total_size": 163.9,
  "largest_file": "SS302D.SCP",
  "text": [
    "READMP3.TXT",
    "READ302.TXT",
    "HINT302.TXT"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## READ302.TXT

```text
SplitShift version 3.02 � TheJudge 21st January 1998
Official Website http://easyweb.easynet.co.uk/~splitshift/

Introduction
------------
SplitShift Three is a script for mIRC 5.3 or higher (16 or 32 bit).

Well, here it is. The third generation of SplitShift for public release. I've still tried to
keep things as "user-friendly" as possible. I wrote SplitShift because I wanted a script where
all major functions were either automated, or just a keystroke or mouseclick away, and where you
knew what was going on at all times. I wanted one with a really easy user-interface. I wanted to
keep that annoying Status window minimised - it's such a waste of screen space.

So SplitShift Three is my latest attempt at providing that. Don't get me wrong... there's far more
complex scripts out there, with megabytes of complicated coding to provide whole hosts of expert
and sophisticated utilities. If you're looking for that, then this is *not* the script for you.
SplitShift Three isn't trying to be one of those. It's a script to make things friendlier, easier to
use, and safer for typical IRC users, and they, I reckon, are the majority, or if not, they soon
will be :)

Installation
------------
The installation of SplitShift has been designed to be extremely easy, even for newer mIRC 
users. 

SplitShift Three now consists of ten files, namely ss3xxa.scp to ss3xxd.scp (the main body of 
the script), hint3xx.txt (the online help resource) and split3xx.txt (the readme file). In all 
cases, xx represents the version number. In addition, you'll find readmp3.txt (extra information 
on installing and running the optional MP3 player) and SplitShift Three's 3 image-map files, 
vert640.bmp. vert800.bmp and vert1024.bmp. Please note that SplitShift Three has no separate 
alias or popup files, because these have been embedded within the main script files themselves.

a) Unzip the splitshift zip file into your main mIRC directory. NB This MUST be your main mIRC 
directory, or SplitShift Three will neither install nor run!!! This will extract all ten files 
referred to above.
b) Go to Remote...File, click on Load...Scripts, click on "show all files" and select the file 
called ss3xxa.scp (where xx is the version number of SplitShift.)
c) Click on OK and answer YES to all Initialisation questions.  SplitShift Three will 
automatically load in its other three script sections.
e) Under Remote...Listening, ENSURE that listening for CTCP's, Events and Raw is all enabled!!!
f) Under Remote...Options,  ENSURE that your Internal Address List is enabled as well!!!
g) Now type /wipe (which resets SplitShift Three's Pager log).

You also want to set the following IRC Switches to OFF to avoid double echo of information:-
Notices in Active Window ... Invites in Active Window.
You should also DISABLE mIRC's inbuilt flood protection... it can clash with SplitShift's own,
which is better.

That's it... all finished.


Usage
-----
First, hit the F1 key a few times. There's a choice of three resolutions for the clickable VBar.
Use the one that fits your screen best. If you prefer using your Function Keys, keep hitting the 
F1 key, and you'll see the Hintbar. Find the one that lines up best for you.


MP3 Playing
-----------
If you want to be able to play MP3 files over mIRC, you'll need a copy of Winplay3. This file is 
separately available on SplitShift's website.


Features
--------
i) The major new development within SplitShift Three is its clickable popup buttonbar, that 
allows you to access all the main features and op controls with a single mouseclick. For those 
who prefer the keyboard, 24 features are also mapped to your function keys with a convenient 
popup HintBar to map them out for you.

PLEASE NOTE that users with screen resolutions of 640x480 will only get 16 clickable buttons. Users
with 800x600 or 1024x768 will get all 26 clickable buttons.

ii) Moving information under an easy colour-coded interface
The original core of SplitShift Three is based around moving all important messages out of your
status window and into your active window. It handles /whois, /who, /whowas, /names, /invite, /dns,
/ctcp, /ctcp reply, /dcc chat & send requests, together with channel info when you join. It deals
with channel events such as op, deop and ban when you aren't watching. Plus it also handles all
important error messages. This can be toggled on and off.

iii) CTCP, DCC Chat/Send, Notice and Invite Flood Protection
SplitShift Three incorporates automatic flood protection against these basic types of flood with a 
"three strikes and out" timed ignore. This can be toggled on and off.

iv) Message Flood Protection. 
SplitShift Three features message and action flood protection, both against multiple messages
from a single nick, and also from clones of the same nick. This can be toggled on and off.

v) Channel Flood Protection.
SplitShift Three offers On Join/Part (Revolving Door) Flood, On Nick Change Flood, On Text
Flood and On Action Flood channel protection. If you are an Op on any channel where these floods
occur, the offending nick will be auto-kickbanned. This can be toggled on and off.

vi) Op Controls
SplitShift Three features one-key Timed and Permanent Single Nick KickBan, plus Selected Kickban,
Selected Deop, and Mass KickBan and Mass Deop controls. Also available are one-key Voice/Devoice
and Op/Deop controls. All controls are designed to make channel protection easier.

vii) Protection & Privileges
SplitShift Three features two types of auto-protection of your friends. If you are an Op on
any channel, and any nickname to whom you have granted Protection & Privilege status is deopped,
banned or kicked, SplitShift Three will automatically take action against the offending nick, with
either a deop, a kick or a kickban, dependant upon the offence. This can be toggled on and off.

viii) Scanners
There's an ON JOIN Channel Scanner (which also ensures your IAL is always up to date too:), plus
a one-touch version, together with one-touch Clone Scanners to cover both Windows type and Unix
type clones. Also included is a great Port Scanner to check the least lagged port on your current
IRC server, again with a one-key option to change to that port.

ix) MP3 Play
You can now play mp3 files to other SplitShift users provided they have version 2.14 or higher. 
SplitShift Three supports an MP3 music file playing capability that operates in just the same way 
as mIRC's /sound command does with .wav and .mid files. For those who don't know, mp3 is the new 
audio standard that gives true CD quality audio standards. !Nick filename.mp3 is also supported 
to allow other users to auto-request mp3 files you play. To enable this feature, you'll need a 
copy of Winplay3 (separately available on SplitShift's website and elsewhere).

x) Extras
One-touch Away/Pager routines and a one-touch Settings Check, both with neat /windowed displays,
an On/Off toggle for the heart of the script. There's is a Nick Completion feature, which 
basically allows a shortcut to prefacing a line of channel text with a channel visitor's 
nickname. This feature is again togglable. There's a pop-up Clock with a settable Alarm function.
New is a ShutUp kick for channel ops to deal automatically with annoying loudmouths. There's a 
new Track utility that searches your internal address list for anyone who matches the verbal or 
numeric IP Address you enter - very useful if you need to know whick nickname nuked you. Finally,
there's even online Help on all features.


Troubleshooting
---------------
Q: The script won't load.
A: Did you unzip the SplitShift zip file to your MAIN mIRC directory/folder? SplitShift Three 
will NOT install or run unless all ten files within the zip are extracted to your main mIRC 
directory.

Q: I load the script, and nothing happens?
A: Check that the script is *really* loaded. Go to Remote...View, and see if ss3xxa.scp through 
to ss3xxd are listed as being loaded. If they aren't, load SplitShift as detailed above. If all 
four files are shown as loaded, go to Listen in Remotes, and enable listening for CTCP, Event 
and Raw. Check to see if the script is disabled by pressing the F2 key. If most modes are shown 
as OFF in the Settings Window, use Shift F2 to toggle them to ON.

Q: I push the F1 key and nothing happens?
A: Check that you saved the three bmp files supplied with the script in your main mIRC directory
or folder.

Q: I prefer the HintBar, butwhen it pops up, it's not neatly laid out?
A: Check your VGA resolution. Use the F1 key to toggle between the various versions of HintBar.

Q: My VBar is too small or my HintBar won't align properly, no matter what I do?
A: Make sure that the main mIRC program window is set to FULLSCREEN. SplitShift Three depends on
this. Also, if you are running in 1280 x 1024 resolution, SplitShift Three has no dedicated
VBar or HintBar for this resolution. Use the best one there (probably 1024)

Q: Sometimes when I click a VBar button, the function is performed on the wrong person?
A: The VBar's button functions will not recognise any window that has the "desktop" property set, 
and so they will be applied to the last mIRC window you accessed that is not set to desktop mode. 

Q: SplitShift seems to work in reverse - it says it's off, but it's on, and vice versa?
A: Hit the Shift F2 key a couple of times to reset things to normal.

Q: I'm getting a misreported pager message number when I hit the Settings Button (F2), or when I
type /read?
A: To reset the pager if it's got confused, type /wipe.

Q: When I do a CloneScan, my channel screen fills with scrolling garbage?
A: You forgot to enable your Internal Address List. Go to Remote...Options and enable it.

Q: My Settings Window won't pop up when I click its button or hit F2?
A: You need to have any other window open before the Settings window will pop up (no, I don't
know why... :)

Q: I keep deopping and kicking people automatically. Why?
A: Check the user levels (Favoured and UltraFavoured status) that you have awarded. Remember, if
a deop, kick or ban is done to *any* UltraFavoured nickname, SplitShift Three will take action 
against the perpetrator, no matter who he/she is. 

Q: I can't always ShutKick a nickname. Why?
A: SplitShift does not allow you to place a ShutKick on any nickname that you have previously 
Favoured or UltraFavoured. Please note that ShutKick only works on nicknames, so if your 
Favoured friend is using a different nickname, the ShutKick will be enforced.

Q: I'm ignoring nickserv on Dalnet?
A: If you are on an IRC network that runs nickserv, chanserv and memoserv (like both Dalnet and Newnet
do), because of the amount of text that these server-side services can send to you via /notice,
SplitShift Three will think you are being Notice flooded and auto-ignore them. To solve this, just
type /favour nickserv or /favour chanserv or whatever, which will ensure that you do not protect
yourself against Notice floods from these legitimate services.

Q: Sometimes, messages are displayed in my HintBar or Settings Window? Or in my Status Window?
A: If either the HintBar or Settings window is active, they *will* get echoed to. Just close 
them (Settings autocloses anyway after 5 seconds) and call them up again. Similarly, if for any
reason your VBar is active at the time of an echo, the echoed message will default to being 
displayed in your Status window.

Q: When I run the /unsplit command to unload SplitShift, I either see a "not connected to server" 
message or a "$ Unknown Command" appearing in my Status window. Should I be worried?
A: No. The /unsplit command successfully entirely unloads SplitShift Three. The echoed messages 
to your status window are caused by a completely harmless mIRC bug.

Q: My MP 3 Play command doesn't work?
A: Have you installed Winplay3? Both the winplay3.exe *AND* your mp3 files **MUST** be in a 
directory or folder called c:\winplay3\ or things won't work. Plus Windows 3.x users should 
remember to close the winplay3 application every time it finishes playing the specified file.

Q: Sometimes, I get an mIRC crash (16 bit only)?
A: Go to File... Options.... Flood... and DISABLE mIRC's inbuilt flood protection. SplitShift Three
has better, and sometimes the two clash.

That's about it. If you liked this script, or hated it, or have suggestions or bug reports, let
me know. Email me - thejudge@bigfoot.com.

TheJudge
London, updated January 1998


Acknowledgements
----------------
Thanks to the following individuals for help, support and permission:-

Vague - for great advice with the VBar routine

Einstein and Loki128 for the PortScan routine - all I did was give it a facelift
Hexagen for the CloneScan routine - again just a facelift
Hiro and the boys at http://msc.simplenet.com - possibly my favourite mIRC site
Karen`, Saramarie and all at Efnet #mirc - check out http://mirc.stealth.net
Hershey and Golfer at IRCNet #mirc

Finally, a plug for all newbies - check out IRCNet's #ircnewbies channel - use
irc.stealth.net if in the US or ircnet.demon.co.uk if in the UK to get onto IRCNet. Both
channels are excellent places to hang out if you need any pointers to mIRC - and who knows, I am
occasionally to be found on both :)   

```
