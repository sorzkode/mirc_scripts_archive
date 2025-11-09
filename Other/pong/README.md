# pong v3.0.0 by Unknown

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

**Script Name:** pong  
**Version:** 3.0.0  
**Category:** protection  
**Authors:** Unknown  
**Email(s):** <torgo@tidepool.com>  
**Website(s):** [http:///.notice](http:///.notice), [http://wav](http://wav), [http://page](http://page)  
**Release Year:** 1997  
**Tags:** anti idle, wav, protection, notify, rejoin, mass op, nicklist, timer, alias, auto away, dcc, away log, addon, bot, midi, popup, flood protection, auto op, mass kick, popups  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/Other/pong/pong.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "pong.zip",
  "file_count": 21,
  "file_types": [
    ".exe",
    ".ini",
    ".txt",
    ".wav"
  ],
  "max_file_date": "1997-03-18",
  "min_file_date": "1994-12-20",
  "total_size": 179.0,
  "largest_file": "PONG/SOUND/PAGE.WAV",
  "text": [
    "PONG/README.TXT",
    "PONG/QUOTES.TXT",
    "PONG/QUIT.TXT",
    "PONG/NOTES.TXT",
    "PONG/FINGER.TXT",
    "PONG/SYSTEM/AWAYLOG.TXT",
    "PONG/SYSTEM/DCCLOG.TXT",
    "PONG/SOUND/GOOP1.TXT",
    "PONG/LOGS/LOGS.TXT",
    "PONG/INCOMING/INCOMING.TXT"
  ]
}
```

## 📋 Text Content (from PONG/README.TXT)

```text
                        Welcome to Pong 1.1!



Lo, I'm CyberThor. 



This script was designed to make IRC easier. Like [dot] or li0n, Pong

was created with ease of use in mind. 



Main goodies:



 Clone Scanner/Mass clone protection.

 Dcc Get Help (Hit Shift+F2 to run, Ctrl+F2 to del, etc.)

 Pager system. You set the number of times it goes off.

 Auto Away and good Away/Back system

 Great Clone Scanner

 A good protection list for your friends (kicks mIRC's prot list's butt)

  (Ya know how the mIRC one only protects their nick? This one uses my

  own version of the IAL so it always updates their nick :)

 Mass De/Op De/Voice 

 Last Join aliases. Hit F4 to op the last guy that joined, etc.

 /smode a *great* alias. Type "/smode stil 20" and it would change

  the chan mode from whatever it was to +stil 20 

 DALnet support



And tons more. This script actually looks a tad basic till you use it

for a bit. Things like invite filters and dcc stats and whois to active

windows  are what I love about this script. %100 ease of use :)



To use unzip Pong into d:\ or c:\ (or whatever) using the -d option in

PKUNZIP (or just use winzip)



then just copy mIRC.exe or mIRC32.exe to the pong dir, rename it to

pong.exe and start 'er up.



After you enter in your name and e-mail address and such in mIRC, type 

INSTALL before connecting to a server to enter in your default info. (this

is important, Pong won't run right if you don't)



Settings can be changed under Pong (in the menubar)

Channel Op settings can be changed under Op(tions) un the chan 

popup.



To use the link looker you must first set the default server list (its under

tools in Pong) then just scan for splits. Every day or two its a good idea

to reset the list.. or when you know a new server is up :)



This might be my last script unless people *really* like Pong. I dunno :)



If you spot any bugs or can think of anything to add, e-mail me at 

torgo@tidepool.com



(More important info after this command list... ie. read on)

Commands:

-=-=-=-=-=-

Main

clones -- scans a chan for clones.

s -- plays a wav/midi. No need to enter in .mid or .wav (Unless a midi and

     wav have the same filename:P)

brb -- <Why> Sets yourself as away with pager, msg, etc.

back (or F3) sets yourself as back.

-=-=-=--==

Function Keys.

f1  - Hit this to turn the pager off :)

f3  - Hit this to set yourself as back.

f2  - Shows what the last file you got was.

sf2 - Runs the last file you got

cf2 - Kills the last file

f4  - Ops the last guy to join

sf4 - Kicks and bans the last guy

cf4 - +v's him

f5  - Runs mbind. Same thing as pressing Ctrl+B

sf5 - MBIND: Ctrl+U

cf5 - MBIND: Ctrl+R

F6 - Mass op

SF6 - mass deop

CF6 - Mass voice

f8  - Changes your nick to your default nick

f9  - Hehe, makes a : face ;)

SF9 - just try it :)

F12 - "Help". Loads up this file.

-=-=-=-

Chan Commands:

cycle -- Hop out and back in the chan.

on -- opnotice

vn -- Op/Voiced notice.

k -- <Who> kick

sb -- <Who> a silly ban (try it!)

kb -- <Who> a kick ban.

qk -- <Who> A kick with a quick ban to stop AutoRejoin on Kick *grin*

b --  /b <who> to ban

t -- /t <newtopic> to change topic.

unban -- a mass unban

maop -- /maop <who> to auto op them in the chan you use it in.

mkick  -- mass kick

mute -- /mute <who> to shut someone up.

-=-=-==-=-

DALnet:

memo -- <Who> <Memo>

Identify -- <NICK/CHAN> type NICK and CHAN (Not your nick or the chan 

             your in)

cs <what> shortcut for /msg chanserv

ns <what> shortcut for /msg nickserv

ghost -- <who>

info -- <what chan to get info on>

name -- <who to get info on>

-=-=-==-=-

Misc.

Fakedcc -- A fake dcc send. *Could* be used for war.. but why bother? :P

gmsg -- global msg to all chats, query windows and channels.

gme -- global action to all chats, query windows and channels.

ll -- Scans for splits.

mylag -- Checks your current lag.

ww -- like /w but gets more info (Idle time, time loged on, etc.)

w -- same as /whois

ci -- get stats for a chan

ip -- Shows your IP address.

www -- says your web page.

n -- Select the nicks you want to notice in the nick list and type /n WHAT

     to msg them all. ie, select CT` and Jink then type "/n Hello" to msg

     them both

die -- a cool quit. Doesn't give a reason.

lastquit -- <Who> shows you what the guys quit msg was.

longip -- IP converts an IP to long.

quit -- <Why> to quit with a msg. /quit alone reads a random quit from quit.txt

time -- time/day/date

whoami -- same as /whois YourNick

j -- <chan> <key> to join a chan.

p -- <msg> to part a chan.

i -- <Nick> to invite someone

---------------------------------------

Note: Its not my fault if this script somehow (but highly unlikely :P) does

something bad to your computer. Use at your own risk.



That outta the way, its never done anything to my or the beta testers  

computers and shouldn't mess up yours ;)

-------------------------------------------

Thanks to:

Bloodlines fer hel
```
