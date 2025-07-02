# TWiGGNoT v1.65 by TWiGGY

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

**Script Name:** TWiGGNoT  
**Version:** 1.65  
**Category:** Notifications  
**Author(s):** TWiGGY  
**Email(s):** <twiggy@null.net>  
**Website(s):** [unknown](unknown)  
**Release Year:** 1997  
**Tags:** last seen, timer, auto msg, alias, popup, trigger, addon, notify, bot, nicklist  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990819020311_twiggnot/19990819020311_twiggnot.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990819020311_twiggnot.zip",
  "file_count": 3,
  "file_types": [
    ".mrc",
    ".nfo"
  ],
  "max_file_date": "1997-08-24",
  "min_file_date": "1997-08-23",
  "total_size": 51.78,
  "largest_file": "twiggntm.mrc",
  "text": [
    "twiggntm.mrc",
    "twiggnot.nfo",
    "twiggnot.mrc"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## twiggnot.nfo

```text
; TWiGGiRC Notify userhost commenter and notify system v1.65

; NOTE: you now will need BOTH .mrc files loaded for TWiGGNoT to function correctly,
; but /load -rs twiggnot.mrc will automatically load the other one. so you don't need
; to load them both manually, just the first one.

; NOTE: If you currently run TWiGGNoT v1.1 or earlier, you must set all of your hosts
; over again.  Sorry, but in adding support for multiple hosts, the variable names
; changed.  I recommend (if you don't know what all the hosts were set at) you WAIT
; to load this, type:
; /host -s user 
; for each of your users, and write them down.
;
; ALSO: If you used v1.2 or earlier - TAKE /initnotify out of your startup!!!

; ************ IMPORTANT **************
; It has come to my attention that some LAME scripts do a /unset %n* or even /unset *
; Some also unset timers or something, for some odd reason, or their on 1:CONNECT:
; scripts conflict with mine (This shouldn't happen)
;
; Known lamers:  Sweet Revenge
;
; Known to work fine with: ircN, barebones mIRC (duh), VaLeNCe 3.57, Millenium
;
; Known annoyances: multiple notify messages with ircN - easy to fix, just go thru the
; following menu hierarchy:  ircN -> user -> Notify List -> on/off -> OFF


; use /load -rs twiggnot.mrc to load...
; TAKE /initnotify OUT OF YOUR STARTUP if it is there from a previous version!!!

; this will update your notify list (by REMOVING and RE-ADDING the user)
; and replace the comment with their userhost data - something I think
; should have already been implemented in mIRC.
; Unfortunately, you CAN NOT KEEP your current comments (i.e. "yah I know 
; this guy") or whatever... you have to re-enter them with the /comment command.
;
; Commands:
; /tnhelp - lists these commands with some help on using them...
; /twiggnot <active/status> - makes TWiGGiRC messages appear in designated window.
; /nautomsg <on/off/nick/-l> <message>  (no message will clear the message for that nick)
;        [NOTE the message you set will be included WITHIN]
;        [a larger message that is sent to the user...    ]
; /nautomsg <on/off/nick/-l> <invite> (no channel will clear the channel for that nick)
; /host <nick> <host1> <host2> ...   (wildcards acceptable)
; /comment <nick/-s> <comment>     (-s parameter will show the comment for <nick>)
; /not <-r/-a/nick> <nickname> 
; /getnick <nick>
; /initnotify - goes through all the people online and refreshes their information
; /notifylog <on/off/-s> toggles logging of notify information or views the log
; /lasthost <nick> displays last user@host.com that <nick> was seen using.
;
; ****** IMPORTANT ****** don't use the /notify command, use /not - it won't HURT if you
; use /notify, but then a couple of variables that need setting up won't get set up, and
; you'll have to manually set a comment and host for anything to take effect.

; ****** IMPORTANT ******
; NOTE: on the /nautomsg's, it gives the CTCP Pager and Msg logging status
; by MY VARIABLES, you have to change these to yours, though the names are
; pretty common, and may work for you anyway (%CTCP.pager and
; %message.logging)  
; ALSO - you must change %naway.message to whatever
; YOUR away message variable is.
;
; Other notes:  It's a BIT choppy at startup (well not choppy but it takes a long time to set up)
; if you have a LOT of ppl in your /notify list and they're all online.. but it works, be patient with
; it :).  After it settles, it is GREAT!
;
; I ask that you DONT modify my code without my permission, and I ask that
; you please don't distribute this with your scripts... or as your own.
; if you want to do so, please email me at twiggy@null.net and let me know BEFORE YOU RELEASE IT.
;
; lastly, if you have any comments, questions, etc email me at:
;
; twiggy@null.net
; or find me on IRC as "TWiGGY".... thanks!
;

; in the works for later:

; ALL of my current ideas have been implemented now!

; MAYBE if you have a good suggestion I'll implement it.  In fact, if it's not
; a huge pain in the ass to do - I'll try and accomodate ALL suggestions that
; I think sound useful...

; changes from 1.6
; My DEEPEST apologies for a bug I let slip through my fingers FOREVER...  
;    (I neglected to include the READ alias)
; Added last seen time thing to the /lasthost (the full time/date that the person was seen)
; Added online time tracker for how long people were on
; Improved the really poopy logging system (it logs more info, that's all)
; Fixed another couple if minor bugs (I'm really sorry for the buggies, they weren't horrible though)

; changes from 1.5
; Added verbose mode - allows the comment to include here/away status, and if the user is an IRCop
; Added notify waves.. not the most original idea, but.. something I thought would be fun..
; Fixed a DUMB DUMB bug of my own fault that commenting didn't work if the user was an IRCop.. sorry :)
; Fixed some minor retarded things about the code - nothing you'll notice probably.. but oh well... 
; Fixed the dumb thing that asks you twice if you've used TWiGGNoT before - of course, if you have
;   you won't ever see that anyway ;)

; changes from 1.31
; Split into two files... sorry, the 30k barrier sucks a butt :(
; Now loads in comments (if necessary) from the mirc.ini so you don't want to convert them manually
; (the above only occurs if you've never installed TWiGGNoT before)
; More silly optimizations.  A couple of retarded cosmetic fixes.
; Added nautoinv command (automatically invites people to a channel)

; changes from 1.3
; updated notify logging system, added it to the /tnhelp command (oops ;)
; updated host caching so it doesn't accidentally cache users when not needed (I think this is a final fix)
; removed commenting etc from code to save space - running WAY close to the 30k barrier :(

; changes from 1.22
; added popup menus
; fixed it so you don't get annoying signon messages when you log on :) duh.
; took out some extraneous code.. if it fux anything up let me know ;)
; fixed host caching -AND- made it cache "infinite" hosts!!!
; You can now type /nautomsg -l to see all of your automessages
;     NOTE: this will create a file called twiggnot.list in your mIRC dir, don't be alarmed if you see it :)

; changes from 1.2
; Added $isonline identifier (why doesn't mIRC have this?  duh.)
; Automatically refreshes data when you change data for an online user (hence the need for above)
; You don't need /initnotify in your startup anymore - TAKE IT OUT!
; Set it so you don't have to disconnect/reconnect for the script to take effect

; changes from 1.1
; Added support for MULTIPLE HOSTS!!!!
; Added host to signoff messages (i.e. Notify Signoff for TWiGGY from yourmom.com)
; Yet more misc. code optimizations...
; Changed host and comment commands to remind you to /notifyset any users who are online...
; Changed tnhelp to show you how to set multiple hosts (duh, that'd be nice) ;)

; changes from 1.01
; Added Notify QUEUING for 1 user (Sorry, there may to do more be a way but I'm not sure how, yet ;)
; - (what this does is, if 2 users signon at the same time, the script previously couldn't refresh
; -  the host for both of them... so it queues the user's name...)
; Fixed a couple of retarded calls I was making...
; Got rid of some repetitive code (not much, heh)
; Cleaned up the /tnhelp window - stuff just didn't line up nicely, no biggie

; changes from 1.0
; Added more initializations to make things go smoother on a first time run
; Added help menu, got rid of the yucky help :)
; Added misc schtuff that won't matter to you - internal code optimizations :)
; Separated this nfo file from the script so people actually READ it ;)

; changes from .9995 beta
; Added k-rad ass-key
; Added startup initializations for first-run loading of script
; Added spiffydoodle colors to menu
; Killed your mom for fun.

; changes from .999 beta:
; added countdown notify automessages - lets you have it only automsg the person X times.
; added notify logging to a file (make sure you have a \logs directory within your mIRC directory
; added lots of misc code to fix stuff up a little...
; Added - you GOT it baby - a way to list ALL your notify automsg folks!  It uses a custom window.

; changes from .995 beta:
; added support for unlimited notify automessages - removed the slot system
; made script /loadable
; added the /not command to aid in variable management and stuff that is that is internal to the script
; threw in my getnick command for you to enjoy.
; threw in a few other misc cosmetic fixes
; fixed the bug where a big notify refresh would report a signon from the first user online in your notify list (hard to explain, but it's fixed ;)

; changes from .99 beta:
; fixed a bit of chippy code, made it so that it only refreshes a notify if it's
; different from last time...  
; added a HOST system - just set someone's host to * if you don't care about this..
; otherwise, set it to the account (with wildcards for people who change IP's)
; that your friend will be logging in from (i.e. *.dialup.dumbass.com)
; you will now see in your notify window:  "Not your defined host" instead of your
; comment if it's not your friend!! (Hey that's the whole purpose of this script eh?)
; notify automessage command that authenticates host before messaging
; the person 

; changes from .98 beta:
; fixed startup routine (so it refreshes each nick better)
; added a COMMENTING alias that you can use to store comments for users if you don't
; want yours overwritten - NOTICE you must use this alias and NOT mIRC's built in
; "comment" thing in the notify list!!!!!!  type /comment to see how to use it.

; Known Bugs:
; There are no "bugs" I know of anymore, however, there are "limitations" that there's not an
; easy workaround for.

; Known Limitations:
; if there's two new notifies within 7 (I think 7) seconds of each other, it MAY POSSIBLY only refresh
; ONE of them properly - there's nothing I can do about this as mIRC is limited in that you
; must REMOVE, and then RE-ADD a user, so I have to shut down "notify detection" temporarily
; because you get X new notifies each time you refresh the notify window (X being however many
; people are on at the time - they all trigger a "notify signon" each time you refresh).
; if Khaled decides to fix this - I'll rewrite the script to work better...
;

; NOTE: make sure RAW and EVENTS are both set to ON in the "listen" menu....

; type    /load -rs twiggnot.mrc     to load it up!

; Also, you may want to go to the NOTIFY menu and turn ON "only show notifies in notify window"
; and turn ON "pop up notify window on connect" - after all what's the point if you don't have
; your notify window open?!

```
