# pp v15 by LilKarla

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

**Script Name:** pp  
**Version:** 15  
**Category:** protection  
**Authors:** LilKarla  
**Email(s):**   
**Website(s):**   
**Release Year:** 1997  
**Tags:** wav, protection, notify, rejoin, timer, alias, mp3 player, dcc, auto-away, bot, user levels, kickban, ctcp replies, midi, popup, flood protection, fserve, xdcc, highlight, popups, mp3  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/pairc.com/pp-099/pp-099.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "pp-099.zip",
  "file_count": 13,
  "file_types": [
    ".ini",
    ".txt"
  ],
  "max_file_date": "1997-01-29",
  "min_file_date": "1996-12-28",
  "total_size": 130.17,
  "largest_file": "PPPOPUPS.INI",
  "text": [
    "PPCONFIG.TXT",
    "PPSTART.TXT",
    "PPVERS.TXT",
    "PEACEPRO.TXT",
    "PPMPPLAY.TXT",
    "PPPAGEME.TXT"
  ]
}
```

## 📋 Text Content (from PPCONFIG.TXT)

```text
.save -v ppvars.ini

.load -p pppopups.ini

.load -r ppraw.ini

.load -u ppusers.ini

.load -c ppcmds.ini

.load -e ppevents.ini

.perform on

unset %usemp

if ($left(1,$ask(Are you using an MP2 player? (Yes/No))) == Y) { set %ec $ask(Directory where your MP2s are stored?) | if (%ec != $null) writeini ppconfig.ini Settings MP2Dir %ec | set %ec $ask(Filename (.EXE) of your MP2 player?) | if (%ec != $null) { set %usemp Yes | writeini ppconfig.ini Settings MP2Player %ec } } | else { remini ppconfig.ini Settings MP2Dir | remini ppconfig.ini Settings MP2Player }

if ($left(1,$ask(Are you using an MP3 player? (Yes/No))) == Y) { set %ec $ask(Directory where your MP3s are stored?) | if (%ec != $null) writeini ppconfig.ini Settings MP3Dir %ec | set %ec $ask(Filename (.EXE) of your MP3 player?) | if (%ec != $null) { set %usemp Yes | writeini ppconfig.ini Settings MP3Player %ec } } | else { remini ppconfig.ini Settings MP3Dir | remini ppconfig.ini Settings MP3Player }

if (%usemp != $null) { if ($left(1,$ask(When play MP2/MP3 show in channel? (Y/N))) == Y) { set %mplocal Off } | else { set %mplocal On } } | else set %mplocal On

if ($left(1,$ask(Return random VERSION replies? (Yes/No))) == Y) { set %ec $ask(Filename of your random one-line replies?) | if (%ec != $null) writeini ppconfig.ini Settings VerReplyFile %ec | else remini ppconfig.ini Settings VerReplyFile } | else remini ppconfig.ini Settings VerReplyFile

set %ec $ask(.WAV to play when paged? (blank for none)) | if (%ec == $null) remini ppconfig.ini Settings PageWav | else writeini ppconfig.ini Settings PageWav %ec

set %ec $ask(Message to return in FINGER reply?) | if (%ec == $null) remini ppconfig.ini Settings FingerMsg | else writeini ppconfig.ini Settings FingerMsg %ec

set %ec $ask(Default flood pro? (NORMAL, HIGH, or OFF)) | if (%ec == $null) writeini ppconfig.ini Settings FloodLevel Normal | elseif ($left(1,%ec) == N) writeini ppconfig.ini Settings FloodLevel Normal | elseif ($left(1,%ec) == H) writeini ppconfig.ini Settings FloodLevel High | elseif ($left(1,%ec) == O) writeini ppconfig.ini Settings FloodLevel Off | else writeini ppconfig.ini Settings FloodLevel %ec

set %ec $ask(Def. channel flood pro? (NORMAL HIGH OFF)) | if (%ec == $null) writeini ppconfig.ini Settings ChanFloodLevel Normal | elseif ($left(1,%ec) == N) writeini ppconfig.ini Settings ChanFloodLevel Normal | elseif ($left(1,%ec) == H) writeini ppconfig.ini Settings ChanFloodLevel High | elseif ($left(1,%ec) == O) writeini ppconfig.ini Settings ChanFloodLevel Off | else writeini ppconfig.ini Settings ChanFloodLevel %ec

writeini ppconfig.ini Settings ClearReroutesOnSignon On

writeini ppconfig.ini Settings KickMsg Systematic lamer removal activated.

writeini ppconfig.ini Settings CloneKickMsg And the clones were no more...

remini ppconfig.ini Settings KickFile

remini ppconfig.ini Settings CloneKickFile

set %pager $ask(Pager ON, OFF, or on only when AWAY?) | if ((%pager != Off) && (%pager != On)) set %pager Away

if ($left(1,$ask(Timestamp events? (Yes/No))) != N) { set %tstamp On | .timestamp -s on } | else { set %tstamp Off | .timestamp -s off }

if ($left(1,$ask(Route events to STATUS or ACTIVE window?)) == S) set %droute Status | else unset %droute

if ($left(1,$ask(Seperate window for PING replies? (Yes/No))) != N) set %proute *Ping* | else { if ($left(1,$ask(Ping replies in STATUS or ACTIVE window?)) == S) set %proute Status | else unset %proute }

if ($left(1,$ask(Seperate window for /whois info? (Yes/No))) != N) set %wroute *Whois* | else { if ($left(1,$ask(/whois info in STATUS or ACTIVE window?)) == S) set %wroute Status | else unset %wroute }

if ($left(1,$ask(Alert when self-lag is over 15 sec? (Yes/No))) != N) set %slagalert 15 | else unset %slagalert

if ($left(1,$ask(Alert when self-lag is over 40 sec? (Yes/No))) != N) set %slagalert %slagalert 40

set %verignore On | set %msgfilter Off

set %clonewarn 3 | set %clonekick 4 | set %cloneban On

set %ec $ask(Number of sec idle before marked as away?) | if (%ec == $null) unset %idlesec | else set %idlesec %ec

if ($left(1,$ask(Kick non-ops when they are banned? (Y/N))) == Y) set %kickonban On | else set %kickonban Off

if ($left(1,$ask(Play .MP2/MP3 on request? (Yes/No))) != N) set %acceptmp On | else set %acceptmp Off

if ($left(1,$ask(Play .WAV on request? (Yes/No))) != N) set %acceptwav On | else set %acceptwav Off

if ($left(1,$ask(Play .MID on request? (Yes/No))) != N) set %acceptmid On | else set %acceptmid Off
```
