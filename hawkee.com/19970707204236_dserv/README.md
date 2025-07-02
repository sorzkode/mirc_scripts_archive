# DragonServ v1 by pacifier

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

**Script Name:** DragonServ  
**Version:** 1  
**Category:** addon  
**Author(s):** pacifier  
**Email(s):** <identd@juno.com>  
**Website(s):** [http://www.hawkee.com/scripts/cbnx.zip](http://www.hawkee.com/scripts/cbnx.zip)  
**Release Year:** 1997  
**Tags:** last seen, timer, popups, popup, identd, addon, notify, bot, protection  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19970707204236_dserv/19970707204236_dserv.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19970707204236_dserv.zip",
  "file_count": 1,
  "file_types": [
    ".txt"
  ],
  "max_file_date": "1997-04-16",
  "min_file_date": "1997-04-16",
  "total_size": 17.88,
  "largest_file": "DSERV.TXT",
  "text": [
    "DSERV.TXT"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## DSERV.TXT

```text
Author:  pacifier
  Date:  April 20 1997
 Addon:  DragonServ for mIRCv5.0


-About:
 DragonServ for mIRCv5.0 is much like MemoServ that can be found on
 DALnet. This is a working addon that is much more advanced then any
 MemoServ that I have either done in the past, or another user has
 tryed to make. All the others will write a bunch of .txt into your
 system. When DragonServ works only with %vars. If you are familar
 with MemoServ on DALnet this will be an easy snap to run. Else go
 on DALnet and type: /msg memoserv help and read about it. Or load
 a bot and /ctcp <yourself> help. This addon is just for others
 personal use. I have spent alot of time working on it. So if you
 would like to list it into your script. Do not change it around
 and take credit for it, but copy paste it and place it how it was
 made. I have listed DragonServ on a perm running bot that is listed
 on DALnet under the name DragServ. This is a perm running bot that is
 different then this addon, by allowing anyone and everyone to send
 messages to another user. Also adds the commands that is found in
 NickServ for protection on who gets your messages. Allthough this
 is a perm bot running off the computer at my work. It most likely 
 will not allways be up. But yet running more or less then 50% of 
 the time. If you would like the other commands to setup a permbot 
 email identd@juno.com. Else copy and paste the commands listed
 below and enjoy.

-Directions:
 1) Copy and paste the given commands into the correct sections
    listed.
 2) Simply add users you would like to give access to sending memo's
    Then turn DragonServ "on" and DragonServ will do the rest.
 3) Send feedback to (identd@juno.com) Else if you wish to use
    DragonServ in your script. Email (identd@juno.com) telling
    me your doing so.

-Notice:
 1) User access is set at user 3. If you have any other access
    for 3 they will also get access to DragonServ. Make a note of
    this.
 2) Once connected allways turn system on. As timer will notify
    all users every 90seconds.

-Copy & Paste:
 Simply copy and paste the commands listed below into the correct
 sections listed. Then connect to a server, setup DragonServ and
 Enjoy!

-------------------------------------------------POPUPS/STATUS&CHANNEL-

-
&dragonserv
.&users
..&add { set %notify $$?="enter users name:" | .auser 3 %notify | .notify %notify | .notice %notify You have been added to DragonServ under user name %notify | .notice %notify For help: /ctcp $me help | unset %notify }
..-
..&del { set %unotify $$?="enter users name:" | .ruser 3 %unotify | .notify %unotify | unset %unotify }
.-
.&system
..&on { .enable #dragonserv | .enable #dragonserv.cmd | .timer222 1000000000 120 .notify | echo 1 $active DragonServ 4enabled }
..-
..&off { .disable #dragonserv | .disable #dragonserv.cmd | .timer222 off | echo 1 $active DragonServ 4disabled }
-

-------------------------------------------------REMOTE/EVENTS---------

#dragonserv on
on 1:NOTIFY: {
  set % [ $+ [ $2 ] [ $+ [ .lastseen ] ] ] $fulldate
  if ([ % [ $+ [ $nick ] [ $+ [ .new ] ] ] ] == $null) { goto no }
  elseif ([ % [ $+ [ $nick ] [ $+ [ .new ] ] ] ] == 0) { goto no }
  elseif ([ % [ $+ [ $nick ] [ $+ [ .new ] ] ] ] == -1) { goto no }
  elseif ([ % [ $+ [ $nick ] [ $+ [ .new ] ] ] ] == -2) { goto no }
  elseif ([ % [ $+ [ $nick ] [ $+ [ .new ] ] ] ] == -3) { goto no }
  elseif ([ % [ $+ [ $nick ] [ $+ [ .new ] ] ] ] == -4) { goto no }
  elseif ([ % [ $+ [ $nick ] [ $+ [ .new ] ] ] ] == -5) { goto no }
  else { goto ok }
  {
    :ok
    .notice $nick You have % [ $+ [ $nick ] [ $+ [ .new ] ] ] new memo(s).
    .notice $nick To get: /ctcp $me list | halt
    :no
    halt
  }
}
#dragonserv end

-------------------------------------------------REMOTE/CTCPS----------

#dragonserv.cmd off
ctcp 1:HELP: { .notice $nick you are not register with $me }
ctcp 3:HELP: {
  .notice $nick ***** DragonServ Help *****
  .notice $nick DragonServ allows users registered to $me to send
  .notice $nick eachother messages, which can be read by the recipient at
  .notice $nick his/her leisure.
  .notice $nick Memos can be sent to users even when they are not on IRC
  .notice $nick For more information on a command /ctcp $me <command>HELP
  .notice $nick Commands:
  .notice $nick SEND 0------->1 - Send another user a message
  .notice $nick LIST 0------->1 - List your current messages
  .notice $nick READ 0------->1 - Read a message
  .notice $nick DEL 0-------->1 - Mark a message as deleted
  .notice $nick LASTSEEN --->1 - See when a user last used DragonServ
  .notice $nick ***** End of Help *****
}
ctcp 3:LISTHELP: {
  .notice $nick ***** DragonServ List Help *****
  .notice $nick To List a message is very simple
  .notice $nick Type: /ctcp $me LIST
  .notice $nick ***** End of Help *****
}
ctcp 3:SENDHELP: {
  .notice $nick ***** DragonServ Send Help *****
  .notice $nick To send another user a message is very simple.
  .notice $nick Type: /ctcp $me send <user> <msg>
  .notice $nick ***** End of Help *****
}
ctcp 3:READHELP: {
  .notice $nick ***** DragonServ Read Help *****
  .notice $nick To read a message is very simple
  .notice $nick Type: /ctcp $me read<number>
  .notice $nick ***** End of Help *****
}
ctcp 3:DELHELP: {
  .notice $nick ***** DragonServ DEL Help *****
  .notice $nick To Delete a message is very simple
  .notice $nick Type: /ctcp $me DEL<number>
  .notice $nick ***** End of Help *****
}
ctcp 3:LASTSEENHELP: {
  .notice $nick ***** DragonServ LASTSEEN Help *****
  .notice $nick To see when a " $+ user $+ " last used DragonServ
  .notice $nick Type: /ctcp $me Lastseen <user>
  .notice $nick ***** End of Help *****
}
ctcp 3:SEND: {
  set % [ $+ [ $nick ] [ $+ [ .lastseen ] ] ] $fulldate
  if (% [ $+ [ $2 ] [ $+ [ .1list1 ] ] ] == $null) { goto ok1 }
  elseif (% [ $+ [ $2 ] [ $+ [ .1list1 ] ] ] == ok) { goto send2 }
  else { goto end }
  :send2
  if (% [ $+ [ $2 ] [ $+ [ .2list2 ] ] ] == $null) { goto ok2 }
  elseif (% [ $+ [ $2 ] [ $+ [ .2list2 ] ] ] == ok) { goto send3 }
  else { goto end }
  :send3
  if (% [ $+ [ $2 ] [ $+ [ .3list3 ] ] ] == $null) { goto ok3 }
  elseif (% [ $+ [ $2 ] [ $+ [ .3list3 ] ] ] == ok) { goto send4 }
  else { goto end }
  :send4
  if (% [ $+ [ $2 ] [ $+ [ .4list4 ] ] ] == $null) { goto ok4 }
  elseif (% [ $+ [ $2 ] [ $+ [ .4list4 ] ] ] == ok) { goto send5 }
  else { goto end }
  :send5
  if (% [ $+ [ $2 ] [ $+ [ .5list5 ] ] ] == $null) { goto ok5 }
  elseif (% [ $+ [ $2 ] [ $+ [ .5list5 ] ] ] == ok) { goto sorry }
  else { goto end }
  {
    :ok1
    set % [ $+ [ $2 ] [ $+ [ .1read ] ] ] $3-33
    set % [ $+ [ $2 ] [ $+ [ .1list ] ] ] $2
    set % [ $+ [ $2 ] [ $+ [ .1list1 ] ] ] ok
    set % [ $+ [ $2 ] [ $+ [ .1from ] ] ] $nick 0---->1 $fulldate
    inc % [ $+ [ $2 ] [ $+ [ .new ] ] ] 1
    .notice $nick Memo has been sent to user $2
    .notice $nick Will be saved to disk at next database sync in $rand(1,8) second(s).
    goto end
    :ok2
    set % [ $+ [ $2 ] [ $+ [ .2read ] ] ] $3-33
    set % [ $+ [ $2 ] [ $+ [ .2list ] ] ] $2
    set % [ $+ [ $2 ] [ $+ [ .2list2 ] ] ] ok
    set % [ $+ [ $2 ] [ $+ [ .2from ] ] ] $nick 0---->1 $fulldate
    inc % [ $+ [ $2 ] [ $+ [ .new ] ] ] 1
    .notice $nick Memo has been sent to user $2
    .notice $nick Will be saved to disk at next database sync in $rand(1,8) second(s).
    goto end
    :ok3
    set % [ $+ [ $2 ] [ $+ [ .3read ] ] ] $3-33
    set % [ $+ [ $2 ] [ $+ [ .3list ] ] ] $2
    set % [ $+ [ $2 ] [ $+ [ .3list3 ] ] ] ok
    set % [ $+ [ $2 ] [ $+ [ .3from ] ] ] $nick 0---->1 $fulldate
    inc % [ $+ [ $2 ] [ $+ [ .new ] ] ] 1
    .notice $nick Memo has been sent to user $2
    .notice $nick Will be saved to disk at next database sync in $rand(1,8) second(s).
    goto end
    :ok4
    set % [ $+ [ $2 ] [ $+ [ .4read ] ] ] $3-33
    set % [ $+ [ $2 ] [ $+ [ .4list ] ] ] $2
    set % [ $+ [ $2 ] [ $+ [ .4list4 ] ] ] ok
    set % [ $+ [ $2 ] [ $+ [ .4from ] ] ] $nick 0---->1 $fulldate
    inc % [ $+ [ $2 ] [ $+ [ .new ] ] ] 1
    .notice $nick Memo has been sent to user $2
    .notice $nick Will be saved to disk at next database sync in $rand(1,8) second(s).
    goto end
    :ok5
    set % [ $+ [ $2 ] [ $+ [ .5read ] ] ] $3-33
    set % [ $+ [ $2 ] [ $+ [ .5list ] ] ] $2
    set % [ $+ [ $2 ] [ $+ [ .5list5 ] ] ] ok
    set % [ $+ [ $2 ] [ $+ [ .5from ] ] ] $nick 0---->1 $fulldate
    inc % [ $+ [ $2 ] [ $+ [ .new ] ] ] 1
    .notice $nick Memo has been sent to user $2
    .notice $nick Will be saved to disk at next database sync in $rand(1,8) second(s).
    goto end
    :sorry
    .notice $nick $2 has the max set number of memo(s).
    .notice $nick $2 was last seen: % [ $+ [ $2 ] [ $+ [ .lastseen ] ] ]
    halt
    :end
    halt
  }
}
ctcp 3:LIST: {
  set % [ $+ [ $nick ] [ $+ [ .lastseen ] ] ] $fulldate
  if ([ % [ $+ [ $nick ] [ $+ [ .1list ] ] ] ] == $null) { goto end }
  elseif ([ % [ $+ [ $nick ] [ $+ [ .1list1 ] ] ] ] == off) { goto end }
  else { goto ok1 }
  :list2
  if ([ % [ $+ [ $nick ] [ $+ [ .2list ] ] ] ] == $null) { goto end }
  elseif ([ % [ $+ [ $nick ] [ $+ [ .2list2 ] ] ] ] == off) { goto end }
  else { goto ok2 }
  :list3
  if ([ % [ $+ [ $nick ] [ $+ [ .3list ] ] ] ] == $null) { goto end }
  elseif ([ % [ $+ [ $nick ] [ $+ [ .3list3 ] ] ] ] == off) { goto end }
  else { goto ok3 }
  :list4
  if ([ % [ $+ [ $nick ] [ $+ [ .4list ] ] ] ] == $null) { goto end }
  elseif ([ % [ $+ [ $nick ] [ $+ [ .4list4 ] ] ] ] == off) { goto end }
  else { goto ok4 }
  :list5
  if ([ % [ $+ [ $nick ] [ $+ [ .5list ] ] ] ] == $null) { goto end }
  elseif ([ % [ $+ [ $nick ] [ $+ [ .5list5 ] ] ] ] == off) { goto end }
  else { goto ok5 }
  {
    :ok1
    .notice $nick Memo list for $nick $+ : To get: /ctcp $me READ<num> 
    .notice $nick * 1 % [ $+ [ $nick ] [ $+ [ .1from ] ] ]
    .goto list2
    :ok2
    .notice $nick * 2 % [ $+ [ $nick ] [ $+ [ .2from ] ] ]
    goto list3
    :ok3
    .notice $nick * 3 % [ $+ [ $nick ] [ $+ [ .3from ] ] ] 
    goto list4
    :ok4
    .notice $nick * 4 % [ $+ [ $nick ] [ $+ [ .4from ] ] ]
    goto list5
    :ok5
    .notice $nick * 5 % [ $+ [ $nick ] [ $+ [ .5from ] ] ] 
    :no
    :end
    .notice $nick End of List
    halt
  }
}
ctcp 3:READ: { .notice $nick No such memo /number }
ctcp 3:READ1: {
  set % [ $+ [ $nick ] [ $+ [ .lastseen ] ] ] $fulldate
  if ([ % [ $+ [ $nick ] [ $+ [ .1list ] ] ] ] == $null) { goto end }
  elseif ([ % [ $+ [ $nick ] [ $+ [ .1list1 ] ] ] ] == ok) { goto ok }
  else { halt }
  {
    :ok
    inc % [ $+ [ $nick ] [ $+ [ .new ] ] ] -1
    .notice $nick Memo 1 from % [ $+ [ $nick ] [ $+ [ .1from ] ] ] $+ : To delete, use command: DEL1
    .notice $nick % [ $+ [ $nick ] [ $+ [ .1read ] ] ]
    .notice $nick End of Memo 1
    halt
    :end
    .notice $nick No such memo / number 1
    halt
  }
}
ctcp 3:READ2: {
  set % [ $+ [ $nick ] [ $+ [ .lastseen ] ] ] $fulldate
  if ([ % [ $+ [ $nick ] [ $+ [ .2list ] ] ] ] == $null) { goto end }
  elseif ([ % [ $+ [ $nick ] [ $+ [ .2list2 ] ] ] ] == ok) { goto ok }
  else { halt }
  {
    :ok
    inc % [ $+ [ $nick ] [ $+ [ .new ] ] ] -1
    .notice $nick Memo 2 from % [ $+ [ $nick ] [ $+ [ .2from ] ] ] $+ : To delete, use command: DEL2
    .notice $nick % [ $+ [ $nick ] [ $+ [ .2read ] ] ]
    .notice $nick End of Memo 2
    halt
    :end
    .notice $nick No such memo / number 2
    halt
  }
}
ctcp 3:READ3: {
  set % [ $+ [ $nick ] [ $+ [ .lastseen ] ] ] $fulldate
  if ([ % [ $+ [ $nick ] [ $+ [ .3list ] ] ] ] == $null) { goto end }
  elseif ([ % [ $+ [ $nick ] [ $+ [ .3list3 ] ] ] ] == ok) { goto ok }
  else { halt }
  {
    :ok
    inc % [ $+ [ $nick ] [ $+ [ .new ] ] ] -1
    .notice $nick Memo 3 from % [ $+ [ $nick ] [ $+ [ .3from ] ] ] $+ : To delete, use command: DEL3
    .notice $nick % [ $+ [ $nick ] [ $+ [ .3read ] ] ]
    .notice $nick End of Memo 3
    halt
    :end
    .notice $nick No such memo / number 3
    halt
  }
}
ctcp 3:READ4: {
  set % [ $+ [ $nick ] [ $+ [ .lastseen ] ] ] $fulldate
  if ([ % [ $+ [ $nick ] [ $+ [ .4list ] ] ] ] == $null) { goto end }
  elseif ([ % [ $+ [ $nick ] [ $+ [ .4list4 ] ] ] ] == ok) { goto ok }
  else { halt }
  {
    :ok
    inc % [ $+ [ $nick ] [ $+ [ .new ] ] ] -1
    .notice $nick Memo 4 from % [ $+ [ $nick ] [ $+ [ .4from ] ] ] $+ : To delete, use command: DEL4
    .notice $nick % [ $+ [ $nick ] [ $+ [ .4read ] ] ]
    .notice $nick End of Memo 4
    halt
    :end
    .notice $nick No such memo / number 4
    halt
  }
}
ctcp 3:READ5: {
  set % [ $+ [ $nick ] [ $+ [ .lastseen ] ] ] $fulldate
  if ([ % [ $+ [ $nick ] [ $+ [ .5list ] ] ] ] == $null) { goto end }
  elseif ([ % [ $+ [ $nick ] [ $+ [ .5list5 ] ] ] ] == ok) { goto ok }
  else { halt }
  {
    :ok
    inc % [ $+ [ $nick ] [ $+ [ .new ] ] ] -1
    .notice $nick Memo 5 from % [ $+ [ $nick ] [ $+ [ .5from ] ] ] $+ : To delete, use command: DEL5
    .notice $nick % [ $+ [ $nick ] [ $+ [ .5read ] ] ] 
    .notice $nick End of Memo 5
    halt
    :end
    .notice $nick No such memo / number 5
    halt
  }
}
ctcp 3:DEL: { .notice $nick No such memo /number }
ctcp 3:DEL1: {
  set % [ $+ [ $nick ] [ $+ [ .lastseen ] ] ] $fulldate
  if ([ % [ $+ [ $nick ] [ $+ [ .1list ] ] ] ] == $null) { goto end }
  elseif ([ % [ $+ [ $nick ] [ $+ [ .1list1 ] ] ] ] == ok) { goto ok }
  else { halt }
  {
    :ok
    .notice $nick Memo 1 from % [ $+ [ $nick ] [ $+ [ .1from ] ] ] 
    .notice $nick Will be deleted from disk at next database sync in  $+ $rand(5,9) $+  second(s).
    .timer 1 5 unset % [ $+ [ $nick ] [ $+ [ .1list ] ] ]
    .timer 1 6 unset % [ $+ [ $nick ] [ $+ [ .1list1 ] ] ]
    .timer 1 7 unset % [ $+ [ $nick ] [ $+ [ .1from ] ] ]
    .timer 1 8 unset % [ $+ [ $nick ] [ $+ [ .1read ] ] ]
    halt
    :end
    .notice $nick No such memo / number 1
    halt
  }
}
ctcp 3:DEL2: {
  set % [ $+ [ $nick ] [ $+ [ .lastseen ] ] ] $fulldate 
  if ([ % [ $+ [ $nick ] [ $+ [ .2list ] ] ] ] == $null) { goto end }
  elseif ([ % [ $+ [ $nick ] [ $+ [ .2list2 ] ] ] ] == ok) { goto ok }
  else { halt }
  {
    :ok
    .notice $nick Memo 2 from % [ $+ [ $nick ] [ $+ [ .2from ] ] ]
    .notice $nick Will be deleted from disk at next database sync in  $+ $rand(5,9) $+  second(s).
    .timer 1 5 unset % [ $+ [ $nick ] [ $+ [ .2list ] ] ]
    .timer 1 6 unset % [ $+ [ $nick ] [ $+ [ .2list2 ] ] ]
    .timer 1 7 unset % [ $+ [ $nick ] [ $+ [ .2from ] ] ]
    .timer 1 8 unset % [ $+ [ $nick ] [ $+ [ .2read ] ] ]
    halt
    :end
    .notice $nick No such memo / number 2
    halt
  }
}
ctcp 3:DEL3: {
  set % [ $+ [ $nick ] [ $+ [ .lastseen ] ] ] $fulldate
  if ([ % [ $+ [ $nick ] [ $+ [ .3list ] ] ] ] == $null) { goto end }
  elseif ([ % [ $+ [ $nick ] [ $+ [ .3list3 ] ] ] ] == ok) { goto ok }
  else { halt }
  {
    :ok
    .notice $nick Memo 3 from % [ $+ [ $nick ] [ $+ [ .3from ] ] ]
    .notice $nick Will be deleted from disk at next database sync in  $+ $rand(5,9) $+  second(s).
    .timer 1 5 unset % [ $+ [ $nick ] [ $+ [ .3list ] ] ]
    .timer 1 6 unset % [ $+ [ $nick ] [ $+ [ .3list3 ] ] ]
    .timer 1 7 unset % [ $+ [ $nick ] [ $+ [ .3from ] ] ]
    .timer 1 8 unset % [ $+ [ $nick ] [ $+ [ .3read ] ] ]
    halt
    :end
    .notice $nick No such memo / number 3
    halt
  }
}
ctcp 3:DEL4: {
  set % [ $+ [ $nick ] [ $+ [ .lastseen ] ] ] $fulldate
  if ([ % [ $+ [ $nick ] [ $+ [ .4list ] ] ] ] == $null) { goto end }
  elseif ([ % [ $+ [ $nick ] [ $+ [ .4list4 ] ] ] ] == ok) { goto ok }
  else { halt }
  {
    :ok
    .notice $nick Memo 4 from % [ $+ [ $nick ] [ $+ [ .4from ] ] ] 
    .notice $nick Will be deleted from disk at next database sync in  $+ $rand(5,9) $+  second(s).
    .timer 1 5 unset % [ $+ [ $nick ] [ $+ [ .4list ] ] ]
    .timer 1 6 unset % [ $+ [ $nick ] [ $+ [ .4list4 ] ] ]
    .timer 1 7 unset % [ $+ [ $nick ] [ $+ [ .4from ] ] ]
    .timer 1 8 unset % [ $+ [ $nick ] [ $+ [ .4read ] ] ]
    halt
    :end
    .notice $nick No such memo / number 4
    halt
  }
}
ctcp 3:DEL5: {
  set % [ $+ [ $nick ] [ $+ [ .lastseen ] ] ] $fulldate
  if ([ % [ $+ [ $nick ] [ $+ [ .5list ] ] ] ] == $null) { goto end }
  elseif ([ % [ $+ [ $nick ] [ $+ [ .5list5 ] ] ] ] == ok) { goto ok }
  else { halt }
  {
    :ok
    .notice $nick Memo 5 from % [ $+ [ $nick ] [ $+ [ .5from ] ] ] 
    .notice $nick Will be deleted from disk at next database sync in  $+ $rand(5,9) $+  second(s).
    .timer 1 5 unset % [ $+ [ $nick ] [ $+ [ .5list ] ] ]
    .timer 1 6 unset % [ $+ [ $nick ] [ $+ [ .5list5 ] ] ]
    .timer 1 7 unset % [ $+ [ $nick ] [ $+ [ .5from ] ] ]
    .timer 1 8 unset % [ $+ [ $nick ] [ $+ [ .5read ] ] ]
    halt
    :end
    .notice $nick No such memo / number 5
    halt
  }
}
ctcp 3:LASTSEEN: {
  if ([ % [ $+ [ $2 ] [ $+ [ .lastseen ] ] ] ] == $null) { goto no }
  else { goto ok }
  {
    :ok
    .notice $nick " $+ $2 $+ " was last seen: " $+ % [ $+ [ $2 ] [ $+ [ .lastseen ] ] ] $+ "
    goto end
    :no
    .notice $nick " $+ $2 $+ " is not on my database, else " $+ $2 $+ " has not been seen
    goto end
    :end
    halt
  }
}
#dragonserv.cmd end

-------------------------------------------------STOP COPY-------------

-Final Note:
 If you have any problems with DragonServ, find any flaws (errors)
 within the addon. Please email (identd@juno.com) with & where the
 error was found, or any problems you are having with DragonServ.
 Comments are welcome as well. As all emails will be returned. Unless
 Comment made no sence. Or can not be answered.

 cbN.X for mIRC5.0 at http://www.hawkee.com/scripts/cbnx.zip If you 
 would like to be a beta tester for the upcoming cbN.X email: 
 (identd@juno.com) Or I can be found on EFnet "misc" channels. As well 
 as undernet. & DALnet, once in awhile to look over there Service bots.
 Enjoy!

	-pacifier
```
