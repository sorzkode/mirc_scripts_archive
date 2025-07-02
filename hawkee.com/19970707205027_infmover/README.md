# Infmover v1.6 by TheJudge

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

**Script Name:** Infmover  
**Version:** 1.6  
**Category:** protection  
**Author(s):** TheJudge  
**Email(s):** <echo@wizard.net>, <thejudge@bigfoot.com>  
**Website(s):** [http://mirc.stealth.net/](http://mirc.stealth.net/), [http://www.phoenix.net/~lsimon/mirc.html](http://www.phoenix.net/~lsimon/mirc.html), [http://www.xcalibre.com/](http://www.xcalibre.com/), [http://www.scripterz.com/](http://www.scripterz.com/), [http://home.earthlink.net/~empirec/](http://home.earthlink.net/~empirec/), [http://www.mircx.com/](http://www.mircx.com/), [http://.earthlink.net/~empirec/](http://.earthlink.net/~empirec/), [http://msc.simplenet.com/](http://msc.simplenet.com/), [http://www.hawkee.com/](http://www.hawkee.com/)  
**Release Year:** 1997  
**Tags:** timer, bot, flood protection, ctcp replies, alias, popups, popup, addon, notify, dcc, interface, protection  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19970707205027_infmover/19970707205027_infmover.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19970707205027_infmover.zip",
  "file_count": 1,
  "file_types": [
    ".txt"
  ],
  "max_file_date": "1997-04-03",
  "min_file_date": "1997-04-03",
  "total_size": 22.44,
  "largest_file": "Infmov16.txt",
  "text": [
    "Infmov16.txt"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## Infmov16.txt

```text
			Infmover Version 1.6 (Final for 4.72)
			                By
				     TheJudge 
				 � April 3rd 1997.
				        
You know what's the most anoying thing about the otherwise brilliant mIRC? Well it's 
having no choice but to open that status window once in a while, because every so often
there's some info in there that you *really* need to see. Example - you are concentrating
on a conversation with someone, and while you aren't paying attention, you get deopped and
kicked from your channel by some loser. You don't find this out until 5 mins later when
you get round to opening your status window. Ring any bells? :)

Okay, Infmover is a serious advance on my earlier Whomover (which is incorporated and improved in
this add-on). It basically makes sure that almost any information that is normally just sent to
that really boring Status Window instead gets put into whatever window you happen to be looking
at at the time. And in a nice orderly colour-coded way. Neat, huh? It has been written for 
mirc4.7 and 4.72 (win95 & 3.x), because of the use of colours. It will work on earlier versions
too, but you'll need to delete all that ctrl+k stuff. Hey, it'd be easier to upgrade, huh? :)

By the way, to run Infmover, copy and paste the stuff below into the relevant sections. Then just
left/right click on the nicks list of any channel (or in any message box) and select the options
you want enabled. Turn 'em off the same way :) (Ok ok if you really want, you can type /won or
/woff for whoinfo, /son or soff for statsinfo and /eon or /eoff for errorinfo in any window, but
the popup way is easier :) You'll see a little coloured infomessage telling you what you just
enabled or disabled. Mirc remembers settings, so options will stay enabled (or disabled) until you
change them, even if you shut the program and relaunch it.

There are one or two things I didn't bother dealing with, (which you should do yourself if you
like), and that's because they are standard mIRC options. Under Options/IRC Switches, it's up to
you if you show joins/part/quits and modes. BUT make *sure* you have Show Invites and Notices
turned OFF, or you'll get double entries thrown up in your active window.

              ***** NEW ***** NEW ***** Version 1.6 ***** NEW ***** NEW *****

Okay, for Version 1.6 I decided to throw in a small CTCP flood protection routine. Now whenever
any level 1 user CTCP's you, they'll get auto-ignored for 20 seconds and notified of that. Yep
and you guessed it, you're notified in your active window too :) I decided that this was far
better than the popup protect I had in version 1.4, so I took the CTCP ignore out of there. I left
the total ignore in there for the heck of it, though :) I also slipped in a small DCC Send, DCC
Chat and Invite protection along much the same lines. Please note that because DCC Chats and Sends
are effectively CTCP commands, when you are ignoring any incoming DCC's, you also ignore any other
CTCP's sent to you. (Thanks to echo@wizard.net for explaining that one to me) Finally, I also
decided to handle both Invites and Notices under the same type of colour-keyed interface.  

With the launch of mIRC 5.0 yesterday, this will be the final release of InfMover for mIRC 4.72. 

              ***** NEW ***** NEW ***** Version 1.6 ***** NEW ***** NEW *****

Many thanks to Einstein (of Hydrobomb fame) who said "Yep, you can put my portscanner in".
So it's included. Portscan was written by Einstein, and thought up by Loki128. Thanks guys.

Portscan is a utility that allows you to check the least lagged port on the server you are
currently on, and then switch to it - just by pressing two keys. Very slick! Press the F11 key
to scan server ports, and F12 to jump to the least lagged port. A couple of notes here - 
Portscan interprets the results of a /stats l command. A very few irc servers (irc.nol.net on
Efnet being one I can remember) only allow IRCops to run a /stats l, so occasionally you may get
the "Sorry, you are not an IRCop" error message. Plus Portscan is very thorough - it finds all
available ports on a server, including ones that you *may* need an authorisation code to access.
If you portscan sandiego.ca.us.undernet.org, you'll see an example of this.

There's also a basic channel scanner that I threw in here. Always good to know which of those nice
quiet looking nicks are actually lurking IRCops, I reckon :) Any channel you join is scanned
automatically when you join it. Plus, if for any reason you want a quick channel scan when you
are already in a channel, just type /scan, and hey presto.

The main core of Infmover is basically structured into 3 sections, all of which can be turned
On or Off as you like... the choice is yours.

First there is the Whoinfo section. That handles /whois, /whowas and /who * type info.
It also covers away, idle and IRCop information about people. Please note dependant on how wide
your /who * type query is, there may be a LOT of responses echoed to your active window - so
don't be surprised if you get buried under replies when you type something like /who *aol* :)

Next there's Statsinfo. That's for commands like /names, general channel info on channel
modes, channel topics, invite info etc etc. Oh, and information on what k-lines your current
server is running, plus info on who has IRCop status on your current server. These last two are
messaged to you, rather than put in the active window, because of amount of information involved.

Finally there's Errorinfo. This section tells you when something you've asked to happen cannot
be done. You know, like no such command, nickname already exists etc, etc. Oh, the only exception
here is "No such nickname" which *has* to be included in the Whoinfo section for obvious reasons.

Oh, CTCP's (both the ones that people do on you AND the ones you do on others) are handled
slightly differently, as are channel events (op, deop and kick) plus DNS searches you may do.
These are covered by remote/events or remote/commands. They will still all display to your
currently active window. Thanks to SaraMarie of EfNet #mirc for the ctcpreply routine which
is shamelessly included with only a facelift. :) 

In fact, the only important things this add-on does NOT move are:- Ping? Pong! exchanges with the 
server, notification of when you *manually* update your ignore or notify lists and when you get
disconnected. I can't think of a way how to do any of those :) C'mon Khaled, let's have an ON TEXT
-s function please, or at least an ON DISCONNECT :)

Finally, I'd really like it if you didn't edit my nick out of this add-on. I can't force you not
to do this, but it'd be a cruddy thing to do. Plus if any of you want to use any of this in a
publically issued script, feel free to do it - but at least have the decency to credit me, and 
depending which bits you use, SaraMarie, Einstein and Loki128, okay? Apart from that, you can
do whatever you like with it :)

INSTALLATION.

Paste the following into Popups (I suggest both Query & Nicknames List):

InfMover
.All On:/won | /son | /eon
.All Off:/woff | /soff | /eoff
WhoMover
.On:/won
.Off:/woff
StatsMover
.On:/son
.Off:/soff
ErrorMover
.On:/eon
.Off:/eoff
Ignore All:/ignore -ntiu60 $$1 4 | echo 6 $active *** Ignoring garbage for 60 seconds from  $+ $$1 $+  | /.timer 1 60 echo 6 $active *** No longer ignoring garbage from   $+ $$1 $+  

Paste the following into Aliases:

/won /.enable #whoinfo | echo 4 $active 12,10TheJudge's WhoMover is now...15,15.4,15On15,15. | /.disable #chanscan
/woff /.disable #whoinfo | echo 4 $active 12,10TheJudge's WhoMover is now...15,15.14,15Off15,15.
/son /.enable #statsinfo | echo 4 $active 11,2TheJudge's StatsMover is now...15,15.4,15On15,15.
/soff /.disable #statsinfo | echo 4 $active 11,2TheJudge's StatsMover is now...15,15.14,15Off15,15.
/eon /.enable #errorinfo | echo 4 $active 8,7TheJudge's ErrorMover is now...15,15.4,15On15,15.
/eoff /.disable #errorinfo | echo 4 $active 8,7TheJudge's ErrorMover is now...15,15.14,15Off15,15.
/chanscan /woff | /.enable #chanscan | /set %cscan on | /set %csircopsnum 0 | /set %csawaynum 0 |  /set %csvoicenum 0 | /set %csopsnum 0 | /set %csnonopsnum 0 | /set %cspresentnum 0 | /set %cstotalnum 0 
/scan /chanscan | /who #
/f11 /portscan
/f12 {
if %bestport != $null {
  if %bestport != $port {   
    server $server %bestport
  }
  else {
    echo 2 $active 13,15*** You are already on this server's best port.
  }
}
else {
  echo 2 $active 13,15*** The best port on this server has not been found, press F11 to find it.
}
}
/portscan {
/.enable #portscan
stats l
echo 2 $active 13,15*** PortScan by Einstein and Loki128 | echo 6 $active Preparing PortScan... please wait.
}


And now the slightly more tricky stuff :)

The following is for Remote/Commands - remember to check listening enabled!!!
Note that the halt command at the end of everything but ping means that the only CTCP replies that
can be got from you are pings and versions. If you want other people to get replies from other
CTCP enquiries on you, just delete the "| halt" at the end of the other lines.

1:PING:echo 7 $active *** You were just 4pinged  by  $+ $nick $+  | if $nick != $me { /.notice $nick 4Hmmmm well I don't know about lag, but Nixon is still president here :(  | /.notice $nick 13*** Not accepting any other CTCP's from you for 20 seconds - 13,15TheJudge's Flood Filter | /ignore -tu20 $nick 2 | echo 6 $active *** Auto-Ignoring CTCP's for 20 seconds from  $+ $nick $+  | /.timer 1 20 echo 6 $active *** No longer ignoring CTCP's from   $+ $nick $+  }
1:FINGER:echo 7 $active *** You were just 4fingered by  $+ $nick $+  | if $nick != $me { /.notice $nick 4Do That Again, And You'll Be Typing With Your Nose...  | /.notice $nick 13*** Not accepting any other CTCP's from you for 20 seconds - 13,15TheJudge's Flood Filter | /ignore -tu20 $nick 2 | echo 6 $active *** Auto-Ignoring CTCP's for 20 seconds from  $+ $nick $+  | /.timer 1 20 echo 6 $active *** No longer ignoring CTCP's from   $+ $nick $+  } | halt
1:VERSION:/raw -q notice $nick : $+ $chr(1) $+ ...including Infmover Addons by TheJudge $+ $chr(1) |  echo 7 $active *** You were just 4versioned by  $+ $nick $+  | if $nick != $me { /.notice $nick 13*** Not accepting any other CTCP's from you for 20 seconds - 13,15TheJudge's Flood Filter | /ignore -tu20 $nick 2 | echo 6 $active *** Auto-Ignoring CTCP's for 20 seconds from  $+ $nick $+  | /.timer 1 20 echo 6 $active *** No longer ignoring CTCP's from   $+ $nick $+  } | halt
1:TIME:echo 7 $active *** You were just 4timed by  $+ $nick $+  | if $nick != $me { /.notice $nick 4*** CTCP request blocked *** | /.notice $nick 13*** Not accepting any other CTCP's from you for 20 seconds - 13,15TheJudge's Flood Filter | /ignore -tu20 $nick 2 | echo 6 $active *** Auto-Ignoring CTCP's for 20 seconds from  $+ $nick $+  | /.timer 1 20 echo 6 $active *** No longer ignoring CTCP's from   $+ $nick $+  } | halt
1:USERINFO:echo 7 $active *** You were just 4userinfo'ed by  $+ $nick $+  | if $nick != $me { /.notice $nick 4*** CTCP request blocked *** | /.notice $nick 13*** Not accepting any other CTCP's from you for 20 seconds - 13,15TheJudge's Flood Filter | /ignore -tu20 $nick 2 | echo 6 $active *** Auto-Ignoring CTCP's for 20 seconds from  $+ $nick $+  | /.timer 1 20 echo 6 $active *** No longer ignoring CTCP's from   $+ $nick $+  } | halt
1:CLIENTINFO:echo 7 $active *** You were just 4clientinfo'ed by  $+ $nick $+  | if $nick != $me { /.notice $nick 4*** CTCP request blocked *** | /.notice $nick 13*** Not accepting any other CTCP's from you for 20 seconds - 13,15TheJudge's Flood Filter | /ignore -tu20 $nick 2 | echo 6 $active *** Auto-Ignoring CTCP's for 20 seconds from  $+ $nick $+  | /.timer 1 20 echo 6 $active *** No longer ignoring CTCP's from   $+ $nick $+  } | halt
1:DCC CHAT:echo 7 $active *** You just got a 4DCC CHAT request from  $+ $nick $+  | if $nick != $me { /.notice $nick 13*** Not accepting any other DCC's from you for 20 seconds - 13,15TheJudge's Flood Filter | /ignore -tu20 $nick 2 | echo 6 $active *** Auto-Ignoring DCC's for 20 seconds from  $+ $nick $+  | /.timer 1 20 echo 6 $active *** No longer ignoring DCC's from   $+ $nick $+  }
1:DCC SEND:echo 7 $active *** You just got a 4DCC SEND request from  $+ $nick $+  | if $nick != $me { /.notice $nick 13*** Not accepting any other DCC's from you for 20 seconds - 13,15TheJudge's Flood Filter | /ignore -tu20 $nick 2 | echo 6 $active *** Auto-Ignoring DCC's for 20 seconds from  $+ $nick $+  | /.timer 1 20 echo 6 $active *** No longer ignoring DCC's from   $+ $nick $+  }


The following is for Remote/Events - again, remember to check listening enabled!!! What the
following does is to move all CTCP replies that you do on others (you know, when you ping or
version someone) to your current window. It also alerts you whenever you've been kicked from or
opped on a channel, and by whom. If you dns a nickname, it posts the reply to your current window.
Finally, it also runs a channel scan command whenever you join any channel.

1:on ctcpreply:*:{
  if ($parm1 != PING) {
    echo 7 $active 4,8CTCP $parm1 Reply0,0. $nick $+ 's $parm1 Reply is $parm2*
  }
  else {
    %pt = $ctime - $parm2
    echo 7 $active 4,8CTCP PING Reply0,0. $nick $+ 's PING time is $duration(%pt)
  }
}
1:on kick:#:if ($knick == $me) { echo 10 $active You have been 4kicked from $chan by  by  $+ $nick $+  ( $+ $parms $+ ) }
1:on deop:#:if ($opnick == $me) { echo 10 $active You have been 4deopped on $chan  by  $+ $nick $+  }
1:on op:#:if ($opnick == $me) { echo 10 $active You have been 7opped on $chan  by  $+ $nick $+  }
1:on serverop:#:if ($opnick == $me) { echo 10 $active You have been 4opped on $chan  by  $+ $nick $+  }
1:on invite:#:echo 7 $active *** You were just 4invited to $chan by  $+ $nick $+  | /.notice $nick 13*** Not accepting any other Invite from you for 20 seconds - 13,15TheJudge's Flood Filter | /ignore -iu20 $nick 2 | echo 6 $active *** Auto-Ignoring Invites for 20 seconds from  $+ $nick $+  | /.timer 1 20 echo 6 $active *** No longer ignoring Invites from   $+ $nick $+  | halt
1:on dns:echo 2 $active 5,7Start of DNS request on $nick $+ . | echo 5 $active IP address is $iaddress | echo 5 $active Name address is $naddress | echo 5 $active Resolved address is $raddress | echo 2 $active 5,7End of DNS request on $nick $+ . 
1:on join:#:if $nick == $me { /chanscan | /who $chan }
1:on notice:*:*:{
  if ($nick !ison $active) {
    if (DCC !isin $parm1) {
    echo 2 $active 11,2*** Notice from $nick $+  $parms | goto end }
  else goto end }
  :end
}


And finally, the heavy stuff for Remote/Raw. Don't forget to check listening enabled!!!

#portscan disabled
211:* {
  if $left(4,$right(5,$parm2)) isnum {
    if %porscan == $null {
      %bestport = $left(4,$right(5,$parm2))
      %bestportval = $parm5 + $parm7
      set %porscan active
      %portlist =  $left(4,$right(5,$parm2))
    }
    else {
      %portlist1 = %portlist
      %portlist = %portlist1 $+ , $left(4,$right(5,$parm2))  
      %curval = $parm5 + $parm7
      if %curval < %bestportval {
        %bestport = $left(4,$right(5,$parm2))
        %bestportval = $parm5 + $parm7
        %portlist1 = %portlist
        unset %portlist1
      }
      unset %curval    
    }
  }
  halt
}
219:* {
  if $parm2 == l {
    echo 6 $active PortScan report for 13 $+ $server $+ 
    echo 13 $active 6Available ports:  $+ %portlist $+ 
    echo 4 $active 6Best port:  $+ %bestport $+ 
    echo 13 $active 6Traffic on best port:  $+ %bestportval $+  Kb
    if %bestport != $port {    
      echo 13 $active  6Port status: connected to  $+ $port $+  $+ , 6press F12 to switch to best port.
    }
    else {
      echo 4 $active 6Port status: connected to  $+ $port $+  $+ , 6this is the best port.
    }
    echo 2 $active 13,15*** End of PortScan
    unset %portlist
    unset %porscan
    unset %bestportval
    /.timer 1 30 /unset %bestport
    /.timer 1 1 /.disable #portscan
    halt
  }
}
#portscan end
#chanscan disabled
352:*: { 
  if (%cscan == on) {
    if (* isin $parm7) inc %csircopsnum  
    if (* isin $parm7) set %csircopnicks %csircopnicks $parm6
    if (G isin $parm7) inc %csawaynum
    if (G isin $parm7) set %csawaynicks %csawaynicks $parm6 
    if (+ isin $parm7) inc %csvoicenum
    if (+ isin $parm7) set %csvoicenicks %csvoicenicks $parm6
    if (@ isin $parm7) inc %csopsnum 
    if (@ isin $parm7) set %csopnicks %csopnicks $parm6 
    if (@ !isin $parm7) inc %csnonopsnum
    inc %cstotalnum
  }
  halt
}
315:*: {
  if (%cscan == on) {
    /set %cspresentnum %cstotalnum - %csawaynum
    echo $active  9,3*** Start of /CHANSCAN on $parm2 $+ 
    echo 3 $active Total On Channel - %cstotalnum 
    echo 3 $active Total Ops - %csopsnum
    echo 3 $active Total Non Ops - %csnonopsnum 
    echo 3 $active Total IRCOps - %csircopsnum
    echo 3 $active Total Here - %cspresentnum
    echo 3 $active Total Away - %csawaynum 
    if %csircopsnum != 0  {
    echo 3 $parm2 *** The 4IRCops on $parm2 are %csircopnicks }
    if %csopsnum != 0 {
    echo 3 $parm2 *** The Ops on $parm2 are %csopnicks }
    if %csvoicenum != 0 {
    echo 3 $parm2 *** The Voiced on $parm2 are %csvoicenicks }
    if %csawaynum != 0 { 
    echo 3 $parm2 *** The Aways on $parm2 are %csawaynicks } 
    echo $active  9,3*** End of /CHANSCAN on $parm2 $+     
    /unset %cs* 
    /won
  }
  halt
}
#chanscan end
#whoinfo start
311:*:echo 10 $active 11,10*** $parm2 Start of /WHOIS list. | echo 10 $active *** $parm2 is $parm3 $+ @ $+ $parm4  - Name/Comment:- $parm6* | /halt
319:*:echo 10 $active *** $parm2 is on these channels $parm3* | /halt
312:*:echo 10 $active *** $parm2 on server $parm3 | /halt
313:*:echo 10 $active *** $parm2 is an 4IRCop | /halt
301:*:echo 10 $active *** $parm2 is away $parm3* | /halt
317:*:echo 10 $active *** $parm2 has been idle for $duration($parm3) | /halt
318:*:echo 10 $active 11,10*** $parm2* | /halt
314:*:echo 10 $active 8,10*** $parm2 Start of /WHOWAS list. | echo 2 $active *** $parm2 was $parm3 $+ @ $+ $parm4 | /halt
369:*:echo 10 $active 8,10*** $parm2 End of /WHOWAS list. | /halt
406:*:echo 10 $active *** There is no record of a nick called 12 $+ $parm2 $+  | /halt
352:*:echo 10 $active 9,10*** Start of /WHO list. | echo 2 $active *** Matched was $parm6  - $parm3 $+ @ $+ $parm4 on server $parm5 | /halt
315:*:echo 10 $active 9,10*** $parm2* $+  | /halt
353:*:echo 10 $active 8,2 *** $parm3 Start of /NAMES list. | echo 2 $active $parm4* | /halt
366:*:echo 10 $active 8,2 *** $parm2* $+ | /halt
#whoinfo end
#statsinfo start
331:*:echo 12 $active *** No topic has been set for channel $parm2 $+ . | /halt
332:*:echo 12 $active *** The topic for channel $parm2 is $parm3* $+ . | /halt
333:*:echo 12 $active *** The topic for channel $parm2 was set by $parm3 at  $asctime($ctime - $parm4) $+ . | /halt
328:*:echo 12 $active *** The webpage set for channel $parm2 is $parm3* $+ . | /halt
329:*:echo 12 $active *** The channel $parm2 was created at  $asctime($ctime - $parm3) $+ . | /halt
341:*:echo 12 $active *** You just invited $parm2 to join $parm3 | /halt
324:*:echo 12 $active *** The modes for channel $parm2 have been set to $parm3 | /halt
221:*:echo 12 $active *** Your user modes have been set to $parm2 | /halt
216:*:/msg $me 5,7The following user has been k-lined from $server  | /msg $me 4 $+ $parm3* $+  | /halt
243:*:/msg $me 11,6The following user holds IRCop status on $server  | /msg $me 6 $+ $parm3* $+  | /halt
#statsinfo end
#errorinfo start
401:*:echo 7 $active *** Sorry, the nick/channel 6 $+ $parm2 $+  doesn't exist | /halt
403:*:echo 7 $active *** Sorry, some characters in the channel name 6 $+ $parm2 $+  aren't allowed | /halt
404:*:echo 7 $active *** Sorry, you can't send to 6 $+ $parm2 $+  | /halt
421:*:echo 7 $active *** Sorry, I don't know the command 6/ $+ $parm2 $+  | /halt
432:*:echo 7 $active *** Sorry, some characters in the nick 6 $+ $parm2 $+  aren't allowed | /halt
433:*:echo 7 $active *** Sorry, the nick 6 $+ $parm2 $+  is already taken | /halt
441:*:echo 7 $active *** Sorry, the nick 6 $+ $parm2 $+  is not here on 12 $+ $parm3 $+  | /halt
442:*:echo 7 $active *** Sorry, you are not on the channel 6 $+ $parm2 $+  | /halt
443:*:echo 7 $active *** Sorry, the nick 6 $+ $parm2 $+  is already on 6 $+ $parm3 $+  | /halt
461:*:echo 7 $active *** Sorry, the command  6/ $+ $parm2 $+  needs more information | /halt
467:*:echo 7 $active *** Sorry, the channel password on 6 $+ $parm2 $+  has already been set | /halt
471:*:echo 7 $active *** Sorry, the channel  6 $+ $parm2 $+  is full | /halt
472:*:echo 7 $active *** Sorry, I don't know the channel mode 6+ $+ $parm2 $+  | /halt
473:*:echo 7 $active *** Sorry, the channel  6 $+ $parm2 $+  is invite only | /halt
474:*:echo 7 $active *** Sorry, you are banned from channel 6 $+ $parm2 $+  | /halt
475:*:echo 7 $active *** Sorry, the channel  6 $+ $parm2 $+  needs a password | /halt
481:*:echo 7 $active *** Sorry, you aren't an IRCop | /halt
482:*:echo 7 $active *** Sorry, you aren't an Op on 6+ $+ $parm2 $+  | /halt
501:*:echo 7 $active *** Sorry, I don't know that usermode | /halt
502:*:echo 7 $active *** Sorry, you can't change usermode for others | /halt
#errorinfo end


That's about all, folks

TheJudge (aka Senseless occasionally)

You like this addon? You hate it? You want something more? Well TELL ME! Mail thejudge@bigfoot.com.

Things I'll work on for the hell of it for the next version (which will be mIRC version 5 only)

Working in the new /window command for some info displays
A clone scanner using the IAL
A reliable Netsplit Detector

***************************************************************************************************  

Plugs for my favourite mIRC spots on the Web - visit these all!!!

For scripts and add-ons, including the latest version of this one, hopefully:-

http://www.hawkee.com/   http://www.scripterz.com/   http://msc.simplenet.com/
http://www.xcalibre.com/   http://www.mircx.com/

For excellent information for newer scripters:-

http://mirc.stealth.net/   http://www.phoenix.net/~lsimon/mirc.html

For detailed information for expert scripters:-

http://home.earthlink.net/~empirec/

*************************************************************************************************** 
```
