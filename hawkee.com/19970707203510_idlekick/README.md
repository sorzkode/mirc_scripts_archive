# IdleWatch v3.6 by okeydokey

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

**Script Name:** IdleWatch  
**Version:** 3.6  
**Category:** Channel Monitor  
**Author(s):** okeydokey  
**Email(s):** <okey@ocii.com>  
**Website(s):** [http://www.ocii.com/~okey/](http://www.ocii.com/~okey/), [http://www.ocii.com/~okey/idlekick.zip](http://www.ocii.com/~okey/idlekick.zip)  
**Release Year:** 1997  
**Tags:** timer, nicklist, rejoin, flood protection, alias, popups, popup, idle kick, trigger, trivia, bot, protection  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19970707203510_idlekick/19970707203510_idlekick.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19970707203510_idlekick.zip",
  "file_count": 7,
  "file_types": [
    ".cmd",
    ".oky",
    ".txt",
    ".zip"
  ],
  "max_file_date": "1997-06-10",
  "min_file_date": "1997-06-10",
  "total_size": 90.96,
  "largest_file": "IW.CMD",
  "text": [
    "IWINSTAL.TXT",
    "IWINTRO.TXT",
    "IWNEW36.TXT",
    "IWREADME.TXT"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## IWINTRO.TXT

```text

                    ==========================
					okeydokey's IdleWatch 3.6
                    ==========================


CONTENTS

	Introduction
	How does an idlekick script work?
	Installation
	Menu Commands
	Remote Access Module
	Using IdleWatch	
	Some Considerations


INTRODUCTION
============

IdleWatch is a channel idle monitor written for mIRC 5.02.

This is a quality, feature-rich script dedicated to a specific need:
monitoring the idling of users in your channel.

I wrote the first mIRC idle monitor for version 4.1. Since then mIRC's
scripting has advanced considerably. IdleWatch 3.6 is completely
rewritten, faster, more capable, and much easier to install.

IdleWatch can be used to monitor selected users, an entire channel, or
several channels. It can check for idling once, or constantly. It can
take any of 6 different actions when the idle limit is exceeded. It
can be completely automatic and comprehensive on your main channel.

IdleWatch was designed to be flexible, easy to use, and very effective
in its purpose. Although designed for channel management, you don't
have to be an op, or kick people, for IdleWatch to be useful. Almost
certainly if you do try it out, you will decide to leave it installed.
IdleWatch can be easily accessed remotely by your op level users. It
is an ideal add-on for channel management remotes or bots.


HOW DOES AN IDLE KICK WORK?
===========================

Idling is a 'negative event', it happens when nothing happens! That
makes an idlekick script a bit unusual, and though simple in concept a
challenge to write (anyone who has tried will sympathize). In the case
of IdleWatch, when the idle monitoring is initiated, a specific timer
is assigned to the nick being monitored. If the nick does anything in
the channel before the idle time limit is up, the timer is identified
and cancelled. If the nick does nothing, the timer 'limits out' and
executes a command or a sequence of commands.


INSTALLATION
============

IdleWatch is a loadable script written for mIRC 5.02. But because it
depends on reliable monitoring of all channel activity, some editing
of your main events.ini IS required.

Please follow the instructions in iwinstal.txt carefully after reading
over this file.


MENU COMMANDS
=============

MAIN MENU (Menu Bar and/or Channel Popup)

("Tag" is the term used for starting IdleWatch timers on nicks or a
channel.)

"Status" reports the current IdleWatch configuration. 

"Clear IdleWatch" clears all user-based variables, stops all IdleWatch
timers, and resets the timer numbering. Channel Watch will be disabled
if active on any channels. If you have a Prime Channel set, users
joining will be continue to be tagged for IdleWatching. You can
consider this a 'reset' switch for IdleWatch.

"Halt IdleWatch" clears all user-based variables, stops all timers,
resets the timer numbering, and unsets the Prime Channel setting and
any channel-based variables. IdleWatch ceases all automatic activity,
but you can still 'manually' tag selected nicks or channels at any
time.

"Prime Channel" is a submenu of commands enabling the automatic
function of IdleWatch on your 'main' channel. When you set the prime
channel, any user (below op level access) joining that channel will be
tagged for IdleWatching. You can check the status of your prime
channel, and set and unset the prime channel here. Also here are the
AutoTag, IdleGuard, AutoReport and Anti-anti-idle functions, which
operate only in the prime channel.

"AutoTag" when enabled will automatically tag the channel's non-ops
whenever you join the prime channel. "IdleGuard" when enabled will
reset another IdleWatch timer whenever one is cancelled due to
activity by a nick in the prime channel. This provides for ongoing,
constant monitoring of all tagged nicks in your prime channel.
"AutoReport" when enabled will send a list of any idlers to the other
ops on the prime channel, every 20 minutes. "Anti-anti-idle" when
enabled will kick if it recognizes an action as an anti-idle away
timer.

The Prime Channel, AutoTag, IdleGuard, AutoReport, Anti-anti-idle and
OpNotice settings are retained between IRC sessions, unless you clear
them with "Halt IdleWatch".

"Channel Tag" is one of the commands you'll use most frequently; it's
how you initiate the 'one-time' IdleWatching of an entire channel.
When called it will start an IdleWatch timer on every non-op in the
channel. It will not set a second timer on a nick if one is already
running, nor will it overwrite a timer. You can tag as many channels
as you like.

The "Channel Watch" sub-menu provides for ongoing IdleWatching on
non-prime channels. When enabled in a non-prime channel, Channel Watch
will tag all non-ops in that channel with an IdleWatch timer, and then
tag the channel again every 5 minutes. Users joining will be tagged as
they join. When tagging, IdleWatch does not overwrite active IW
timers. You do not need to use Channel Watch on the prime channel.

The "Timers" submenu has a number of monitoring and timer handling
functions, all self-explanatory. You can list all nicks being
monitored by IdleWatch in the current channel, list all nicks who have
exceeded the idle time limit, report to the other channel ops a list
of all nicks who have exceeded the idle limit, display all timers in
'verbose' format, check a nick's idle time, and stop a nick's IW
timer. You can also clear all IW timers running in the active channel,
and check for the length of time you have been in the channel.

The Timers submenu also has a "Purge defunct timers" command. From
time to time a nick may leave the channel, but the IdleWatch timer is
not cancelled. This can happen if they part immediately after
saying/doing something in the channel, if your flood protection has
assigned them a temporary specific access =level which prevents the
general access level ON PART/QUIT from triggering. There are checks in
place to prevent invalid timers from taking action, but if you do a
"List channel timers" and notice any running on people no longer in
your channel(s), you can use this command. 

The "Set Action" configures the action IdleWatch will take when a
timer limits out. You can set IdleWatch to advise you, warn the idling
nick, kick the idling nick, or warn the nick and then kick if he/she
continues to idle. You can also set IdleWatch to "Monitor only", so it
runs silently in the background, providing you with idle times of
specified nicks only when you query. "Set Action" changes take effect
immediately, and apply to all timers as they complete. You cannot set
different actions for different nicks/channels.

Kicks are accompanied by a 45 second ban to prevent auto-rejoins. When
set to "Kick after warning", the idler will be kicked 5 minutes after
the warning, if still idling in the channel. This 5 minute 'grace'
period is adjustable. Ban masks include nick to make it easy for other
ops to identify the ban and remove it if you happen to disconnect
before your auto-unban triggers.

You would select "Time Limit" whenever you want to reset the idle time
limit, or check the current limit. The new idle limit would apply to
all new timers as they are activated.

Under "Time Limit" you can also check and reset the "Grace period",
the delay between warning and kicking an idling nick when IdleWatch is
set to "KickAfterWarning".

"OpNotice" when enabled will advise all channel ops when a user
exceeds the idle time limit in that channel. It is channel specific,
and applies to the "Advise Me", "Warn Idler", and "Kick after warning"
action settings. It also applies when you use "Manual idle kick". The
OpNotice setting is retained between sessions, unless you use "Halt
IdleWatch".

Any of your op level users can ctcp you to: check the status of your
IdleWatch, list all nicks in the specified channel who have exceeded
the idle limit, and check the idle time of a specified nick. "Ctcp
Access" when set "Enhanced" makes available additional ctcp commands
to your op level users. Your ops would then be able to: tag a nick for
IdleWatching, stop IdleWatching of a nick, tag a specified channel,
and switch the OpNotice on or off. The iwremote.zip file contains the
"Remote Access Module" to give your ops easy access to your IdleWatch.

The "Feedback" and "Logging" submenus are self-explanatory. A nice
feature under "Feedback" is the ability to easily switch the color of
the IdleWatch notices to you.

The "Messages" submenu permits you to review, edit, or restore to
default the no-idling notice, pre-kick warning, and kick messages.
Also under this item you'll find "Warn channel", which sends to the
channel a no-idling warning, which is also configureable.

Use "Uninstall" for a thorough, automatic removal of the script if you
decide not to use IdleWatch. Uninstall will unload the script, remove
all associated %IW* variables, and delete all IW files from your mIRC
directory. You will still have to do a Text Find of your events.ini to
delete the /iwzif, /iwnif, and /iwnifnot alias commands.

The "Help" menu item simply opens this file for viewing with the text
editor you have associated under Windows to *.txt files.

NICKNAMES LIST POPUP MENU

From the IdleWatch menu item in the Nicknames List popup you can:
check the idle time of any tagged nick, tag an nick for IdleWatching,
and stop the nick's IdleWatch timer. 

From this menu you can also "Exclude" a nick from being subject to
IdleWatch actions. This command will add the nick's type 3 address
mask to your Users list at your current default access level (normally
1). This will not change how your Remote recognizes or handles the
Excluded nick. The only effect will be when an IdleWatch timer
completes - IdleWatch will check to see if the idling nick has a
permanent type 3 address entry in your Users before reacting. If there
is a perm entry for that user, IdleWatch takes no action, other than
advising you. Anyone with a type 3 address in your Users is 'immune'
from IdleWatch actions, but can still be tagged and monitored.

You can take direct action on a nick from this menu, either sending a
'no idling' warning, or manually doing an idle kick. You can also send
a notice to the ops advising them of the selected nick's idle time.

"Remote IdleWatch" is another menu in the Nicknames List popup, which
provides you with ctcp access to another user's IdleWatch. You can
even tag nicks/channels through the remote IdleWatch, if that user has
given you access. For an example, if you've just joined your channel,
you can use this menu to check with another IdleWatch user, or the
channel 'bot', to see who has been idling in the channel and for how
long.


Remote Access Module
====================

Included with the IdleWatch package is a 'Remote Access Module' that
you can pass on to your op level users, allowing them easy ctcp access
to a number of your IdleWatch functions. It is the iwremote.zip file
which contains directions, and the iwremote.oky script file. Your own
Nicknames List popups has all of these Remote IdleWatch ctcp commands.
The iwremote.zip is not something you need to use yourself.

(If an op doing a remote status check of your IdleWatch has mIRC's
built in flood control set for less than 3 lines per user, their mIRC
may put you on ignore before the several status report notices are
received from you.)


Using IdleWatch
===============

(More detail here, stick with it ;)

Leave IdleWatch on the "AdviseMe" setting until you are familiar with
its operation and commands.

Once you've installed IdleWatch, you can tag for monitoring any
nick(s) you specify, an entire channel, or several channels. You don't
need to switch IdleWatch 'on' in order to use it.

There is no limit on the number of users you can monitor, other than
your system resources (well, there might be a problem if you use more
than 32,000 timers before clearing IdleWatch, or reconnecting ;)

All 5 digit timer numbers are reserved for IdleWatch; don't use 5
digit timer numbers anywhere else in your script.

Whenever someone is tagged, an IdleWatch timer is started, and a
nick/timer variable set. The timer is set according to the idle Time
Limit in effect at that point. When you reset the Action that
IdleWatch takes the new setting is effective immediately. All
subsequent completing IW timers will take that Action.

You decide when and who and what to tag for IdleWatching. But when you
set a Prime Channel, IW functioning becomes automatic on that channel,
to the degree you configure. An IdleWatch timer will be activated on
all nicks joining that prime channel. (If there is an "On/Off" switch
in IdleWatch, setting a prime channel would be it.) AutoTag (tags the
channel whenever you join), IdleGuard (relentless monitoring), and
AutoReport (advising ops every 20 minutes of any idlers) all operate
on the prime channel.

If the idling nick has not been removed from the channel, another IW
timer will be activated whenever he/she exceeds the idle time limit,
retaining the original tag time. The monitoring of an idling nick
is continuous (make this distinction from IdleGuard, which constantly
monitors each tagged nick, resetting the IW timer after any channel
activity by that nick.) 

When the actual timers are displayed, and when IdleWatch advises you
that a timer has limited out, if the nick has already exceeded the
idle limit once the initial time of tagging will be displayed in bold.
The displayed timers for these nicks also include the word 'idle', or
otherwise a 2 letter code which indicates how the current timer was
set (names list, tagged channel, on join, autotag, idleguard reset,
remote nick tag, remote channel tag), which you might find useful and
which I use to some extent in the script.

At any time you can quickly check for all nicks being IdleWatched, all
nicks who have exceeded the time limit (if they haven't been kicked,
referred to as 'idlers' in the script), and the length of time any
IdleWatched nick has been idle. When you check a nick's idle time, you
will be given the total idling period, from the point when the nick
was first tagged for idling.

There is extensive feedback provided to you by IdleWatch, the level of
which you can set under "Feedback". "Detailed" feedback echoes to the
status window whenever a new timer is set. Whenever you join your
Prime Channel, you will get a status display. Whenever you change a
setting, you'll be advised of the effect.

If you leave the channel for even a brief period, a nick on whom an
IdleWatch timer was running may have been active in the channel. That
timer would not have been cancelled as your remote wasn't in the
channel 'watching', and any 'reaction' by IdleWatch after you returned
would be uncalled for. To preserve IdleWatch timer validity any IW
timers active for a channel are cleared when you leave that channel,
including if you happen to be kicked (even if you auto-rejoin
immediately).

Ever since mIRC's ON PART was enabled to watch for your own parts
there has been a slight pause on leaving a channel. You may notice
that pause is extended when IdleWatch has been active in a channel, as
it filters out the appropriate timers, and cancels them and the
matching variables.

There are numerous checks and safeguards in IdleWatch to prevent an
'invalid' timer from executing commands. For example, no one who has a
permanent type 3 address mask in your Users List (which should include
all your ops) will be warned or kicked for idling. If a timer is left
active for some reason after the monitored nick has left the channel,
the timer command(s) will not execute. And IdleWatch will check for
defunct (residual) timers when a user joins a channel in which IW is
active, automatically purging a defunct timer for that user if one is
found.

The Internal Address List (IAL) must be turned on for all the checks
and safeguards to work. A channel /who must be done when you join a
channel to ensure the IAL is updated with all the addresses in the
channel (see iwinstal.txt for details).

For some reason involving Windows handling of timers, the IW timers
won't complete at the precise idle time limit you've set, but up to
several minutes later.

Only one timer will be set for a nick. A nick can be monitored for
idling in only one channel. If a nick you are monitoring in one
channel joins another channel you are on, IdleWatch won't set a second
timer. And if a monitored nick is active in any channel you are on,
his/her IdleWatch timer will be cancelled.

Whenever you join the prime channel, an IdleWatch timer will be set on
yourself. This timer is for monitoring purposes only, so you or your
ops can check how long it's been since you've last been active in the
channel (why not? you can monitor everyone else's idling! ;). You will
not be included in reported lists of idlers, nor will action be taken
when you reach the idle limit, other than having another timer set. 

On slower computers, running IdleGuard in a very large channel, heavy
use of Channel Watch, or monitoring a large number of nicks/channels
may slow the systems' performance noticeably.

If you add any specific access on TEXT, on ACTION, or on NICK lines to
your events.ini (eg. flood protection), be sure to add the /iwzif and
/iwnif aliases to those lines, as detailed in iwinstal.txt.

The IdleWatch "Action" alias which executes on timer completion is
dynamically set, and is maintained in the iwalias.ini file, which was
created and loaded when you first loaded the IdleWatch script. You
need iwalias.ini for IdleWatch to function; don't unload it. If you
want to uninstall the IdleWatch script, use the "Uninstall" command.

From time to time you may notice a "*/timer: invalid parameters"
message in your status window. This is sometimes seen when an idling
user changes his/her nick. There's not much I can do about this, as it
involves the nick change recursive timer search and edit, and mIRC's
current inability to successfully evaluate nested if-then's with a
false condition. It means only that a new IW timer won't be activated
for the $newnick.


Some Considerations
===================

If you run a channel you don't need to justify removing idlers. If
your idle limit is a decent length (the default is 30 minutes), and/or
you have some consensus with your fellow ops (it can happen ;), there
is no reason why you shouldn't run an idle kick. By and large there is
no good reason (and some bad ones) for somebody (or clone/link/bot) to
silently squat on a channel and do nothing for extended periods
(idling ops excepted of course!). 

And there are other good and practical reasons to know how long users
have been inactive in your channel. You don't have to kick people to
find IdleWatch useful.

Give some thought to the nature and dynamics of your channel, and how
you might best apply IdleWatch in your circumstances. If you op on a
help channel, recognize that some people intentionally idle on the
channel to learn. If you have public channel rules, let people know
whether you run an idle kick. You can advise the channel about idling
by using the "Messages/Warn channel" command. Don't fail to add your
regulars to your Users, and if you don't have 'friend' or 'channel
regular' access levels, use the Exclude command to add them at default
level. 

Setting IdleWatch to simply warn idlers can effectively cut down on
the amount of idling in your channel. Using AutoReport advises the
live ops of who's idling, permitting them to make the call as to
whether a kick is in order.

Being idle kicked for the first time is disconcerting, as I recall
<g>. Keep your warnings/kick messages civil (unless maintaining a
comfortable atmosphere in your channel is unimportant to you). These
can be easily edited/reset under the "Messages" menu item.

Now that I know a good idle monitor can be written for mIRC, I regard
it as a basic tool of comprehensive channel management.

Feel free to share this script with others, but please exchange it
only as the unmodified, original zip. If you package it with a
script/bot you've written, acknowledge its authorship properly. You
can list IdleWatch on your script page, but please identify it as
version 3.6 written for 5.02. I would appreciate your letting me know
if you do post it on your page, and I'd prefer a link to mine where
the most recent version will be found:

			http://www.ocii.com/~okey/idlekick.zip

I enjoyed writing this script. I hope you enjoy using it. If you
install it and drop me a line, I'll advise you of any updates.
Comments are welcome!


happy IRCing,

okeydokey
okey@ocii.com

June 10, 1997
```

## IWNEW36.TXT

```text

						New in IdleWatch 3.6
						====================

Multiple channel monitoring is much better. Check the Channel Watch
submenu.

An automatic, thorough "Uninstall" command has been added to the menu.

You need to have ops now to have IdleWatch automatically send warning
notices (keeps the harassment factor down).

The dynamic IdleWatch action alias is more securely maintained in its
own iwalias.ini file.

Lotso tweaking and little improvements, and even a few buggies fixed.


The most recent version of IdleWatch will be found at:
		
				http://www.ocii.com/~okey/
```

## IWREADME.TXT

```text

IdleWatch 3.6 is a full-featured channel idle monitor for mIRC 5.02.

Extract to your mIRC directory the files:
	iwintro.txt
	iwinstal.txt
	iw.oky
	iw.cmd 

Read iwintro.txt.

Carefully follow iwinstal.txt if you decide to install IdleWatch.

Read iwintro.txt again! ;)


The most recent version of IdleWatch will be found at:
		
				http://www.ocii.com/~okey/


June 10, 1997
```
