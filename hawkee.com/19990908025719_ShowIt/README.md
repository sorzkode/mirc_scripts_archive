# ShowIt v1 by Karsten

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

**Script Name:** ShowIt  
**Version:** 1  
**Category:** addon  
**Author(s):** Karsten  
**Email(s):** <karsten@egotrip.net>, <karsten@egotrip.dk>, <Karsten@egotrip.net>  
**Website(s):**   
**Release Year:** 1999  
**Tags:** timer, alias, highlight, images  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990908025719_ShowIt/19990908025719_ShowIt.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990908025719_ShowIt.zip",
  "file_count": 7,
  "file_types": [
    ".bmp",
    ".txt"
  ],
  "max_file_date": "1999-01-17",
  "min_file_date": "1998-12-19",
  "total_size": 60.6,
  "largest_file": "showit/op.bmp",
  "text": [
    "showit.txt"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## showit.txt

```text
; Created by Karsten (karsten@egotrip.dk) in the year of the Lord 1998.

; Copy this file to your mIRC-directory, the images to a folder labelled showit in your mIRC-folder, start mIRC, and type /load -rs showit.txt

;-------------------------
; The menu
;-------------------------
menu menubar {
  -
  &ShowIt
  .&Place picture
  ..&Center:set %showit.placement -c | echo -s � New pictures will be placed in the center of the window.
  ..&Fill:set %showit.placement -f | echo -s � New pictures will be filling the window.
  ..&Normal:set %showit.placement -n | echo -s � New pictures will be placed in the upper left corner of the window.
  ..St&retch:set %showit.placement -r | echo -s � New pictures will be stretched in the window.
  ..&Tile:set %showit.placement -t | echo -s � New pictures will be tiled in the window.
  ..&Photo:set %showit.placement -p | echo -s � New pictures will be placed in the upper right corner of the window.
  ..-
  ..%showit.status.bg:{ if (%showit.status.bg == Disable) { set %showit.status.bg Enable
    .disable #backmode }
    else { set %showit.status.bg Disable
  .enable #backmode } }
  .&Show nick
  ..%showit.status.nick:{ if (%showit.status.nick == Disable) { set %showit.status.nick Enable
    .disable #shownick }
    else { set %showit.status.nick Disable
  .enable #shownick } }
  .&Help: { echo -s � You can change the placement of the pictures in the Place picture' sub-menu.
    echo -s � You can also change the pictures in $mircdir $+ showit - size is not a restriction from my side.
  echo -s � Show nick will show any mention of your current nick in the active window. }
  .Uninstall: { set %showit.uninstall $?!="Warning! $crlf $+ This will remove ShowIt. $crlf $+ Are you sure?"
    if (%showit.uninstall == $true) { unset %showit.banned
      unset %showit.banlist
      unset %showit.placement
      unset %showit.nick
      echo -s Removing ShowIt. I'm sorry you couldn't use it.
      echo -s Please mail me at karsten@egotrip.net if it was due to a bug or deficiency.
      echo 3----  
      echo -s Karsten
      echo -s (You will need to remove the backgrounds from your windows. Please refer to mirc.hlp for this.
    .unload -rs showit.txt }
  else { echo -s � Good :) } }
  .-
  .1998 Karsten:echo -s � Peek-A-Boo!
.&Karsten@egotrip.net:run mailto:karsten@egotrip.net }

;-------------------------
; Some aliases
;-------------------------
alias showit_join { set %showit.banned $remove(%showit.banned,$1)
  if ($me isop $1) { background %showit.placement $1 showit\op.bmp } 
else { background %showit.placement $1 showit\none.bmp } }
alias showit_active { if (($active == $chan) || ($active == $nick)) || (@ isin $left($active,1)) { return $true } }

;-------------------------
; The remotes for handling updates.
;-------------------------
#backmode on
on 1:OP:#:{ if ($opnick == $me) { if (# isin %showit.banned) { background %showit.placement # showit\opban.bmp }
    else { if ($me isvo #) { background %showit.placement # showit\opvoice.bmp }
else { background %showit.placement # showit\op.bmp } } } }

on 1:DEOP:#:{ if ($opnick == $me) { if (# isin %showit.banned) { background %showit.placement # showit\ban.bmp }
    else { if ($me isvo #) { background %showit.placement # showit\voice.bmp } }
else { background %showit.placement # showit\none.bmp } } }

on 1:VOICE:#:{ if ($vnick == $me) { if (# isin %showit.banned) { halt }
    else { if ($me isop #) { background %showit.placement # showit\opvoice.bmp } 
else { background %showit.placement # showit\voice.bmp } } } }

on 1:DEVOICE:#:{ if ($vnick == $me) { if (# isin %showit.banned) { halt }
    else { if ($me isop #) { background %showit.placement # showit\op.bmp } 
else { background %showit.placement # showit\none.bmp } } } }

on 1:JOIN:#:{ if ($nick == $me) { .timer 1 1 showit_join # } } 

on 1:BAN:#:{ unset %showit.banmask
  :showit.bancheck
  inc %showit.banmask
  if ($banmask iswm $address($me,%showit.banmask)) { goto showit.banned }
  elseif (%showit.banmask < 5) { goto showit.bancheck }
  goto showit.notme
  :showit.banned
  if ($me isop #) { background %showit.placement # showit\opban.bmp }
  else { background %showit.placement # showit\ban.bmp }
  set %showit.banned %showit.banned #
:showit.notme }

on 1:UNBAN:#:{ unset %showit.banmask
  :showit.bancheck
  inc %showit.banmask
  if ($banmask iswm $address($me,%showit.banmask)) { goto showit.banned }
  elseif (%showit.banmask < 5) { goto showit.bancheck }
  goto showit.notme
  :showit.banned
  if ($me isop #) { if ($me isvo #) { background %showit.placement # showit\opvoice.bmp }
  else { background %showit.placement # showit\op.bmp } }
  elseif ($me isvo #) { background %showit.placement # showit\voice.bmp }
  else { background %showit.placement # showit\none.bmp }
  set %showit.banned $remove(%showit.banned,#)
:showit.notme }
#backmode end

on 1:CONNECT:{ set %showit.nick * $+ $me $+ * }

on 1:DISCONNECT: unset %showit.banned

on 1:LOAD: { if ($version < 5.41) { echo -s I'm sorry. You need at least mIRC ver. 5.41 to use ShowIt.
  .unload -rs showit.txt } 
  else { echo -s ShowIt 1.1 by Karsten loaded successfully!
    if ($exists(showit\op.bmp) !== $true) { echo -s I can't find my imagefiles. They should be in $mircdir $+ showit. (It should contain these files: ban.bmp op.bmp opban.bmp opvoice.bmp voice.bmp)
    echo -s ShowIt will not function correctly without these files! }
    echo I hope you will enjoy this as much as I do.
    echo 3----  
    echo -s Karsten
    set %showit.placement -p
    set %showit.status.nick Disable
    set %showit.status.bg Disable
    set %showit.nick * $+ $me $+ *
    .enable #backmode
.enable #shownick } }

on 1:NICK:{ if ($nick == $me) { set %showit.nick * $+ $newnick $+ * } }

;-------------------------
; Sort it to find your nick, and type it -a
;-------------------------
#shownick on
on 1:TEXT:%showit.nick:*:{ if ($showit_active !== $true)  { if ($chan == $null) { echo $colour(highlight) -at � $+  $nick $+ � $1- }
else { echo $colour(highlight) -at � $+ $chan $+ : $+ $nick $+ � $1- } } }
#shownick end

```
