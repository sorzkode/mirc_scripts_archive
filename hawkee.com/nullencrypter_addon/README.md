# Null EnCrypter v1 by [xIRC] Scripting Group

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

**Script Name:** Null EnCrypter  
**Version:** 1  
**Category:** addon  
**Author(s):** [xIRC] Scripting Group  
**Email(s):** <unknown>  
**Website(s):** [http://xIRC.base.org](http://xIRC.base.org)  
**Release Year:** 1997  
**Tags:** popup, alias, popups  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/nullencrypter_addon/nullencrypter_addon.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "nullencrypter_addon.zip",
  "file_count": 1,
  "file_types": [
    ".txt"
  ],
  "max_file_date": "1997-04-18",
  "min_file_date": "1997-04-18",
  "total_size": 2.62,
  "largest_file": "CODER.TXT",
  "text": [
    "CODER.TXT"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## CODER.TXT

```text
[nu||] [EnCrypter] [For mIRC5.0]

This May Be Used In Any Script But Please Give [xIRC] Scripting
Group Credit For It.
(Dont Be Lame And Rip :P)

This Is By Far The Best Encrypter I Have EVER Written!
Imposible To Crack (almost)

Features
  i)Public And Private Fuctions
  ii)Totally Random System
  iii)Very Hard To Interupt
  iv)Checks For False Alarms And Stops Decoding If Found 
     ie.If A String Of code is over 255 characters.

[Paste The Following In ALIASES]

code {
  if ($1 == priv) { set %priv yes | set %privnick $?="Who To Send Private Encryption?" }
  :start
  set %key $rand(2,90)
  if ((%key < 2) || (%key == 10) || (%key == 13) || (%key == 27) || (%key > 90)) { goto start }
  else { echo 2 -a Code key is ( $+ %key $+ ) | goto yes }
  :yes
  set %pos1 0
  set %len1 $len($?="What To Code?") | set %code $! | set %code1 "" | set %codekey %key
  :start1 | inc %pos1 1 | %asc1 = $asc($mid(%pos1,1,%code)) + %codekey
  if (%asc1 > 126) { dec %asc1 94 }
  set %code1 %code1 $+ $chr(%asc1)
  if (%pos1 < %len1) { goto start1 }
  if (%priv == yes) { say [EnCrypt] priv %privnick %key %code1 | echo 2 -a [EnCrypt] Private Message To %privnick %code }
  else { say [EnCrypt] %key %code1 | echo 2 -a [EnCrypt] %code }
  unset %len1 | unset %asc1 | unset %pos1 | unset %code | unset %code1 | unset %codekey | unset %priv*
  halt
}
decode {
  set %len2 $len(%decode)
  if (%len2 > 300) { echo 2 -a Decode halted; possible decode flood from %nick $+ . | halt }
  if (%key < 2) || (%key > 90) { set }
  set %pos2 0 | set %decodekey %key | :start1
  set %code2 "" | %key2 = %decodekey + 33 | :start2 | inc %pos2 1
  set %asc2 $asc($mid(%pos2,1,%decode))
  if (%asc2 < %key2) { inc %asc2 94 }
  dec %asc2 %decodekey
  if (%asc2 == 94) { set %asc2 160 }
  set %code2 %code2 $+ $chr(%asc2)
  if (%pos2 < %len2) { goto start2 }
  set %code2 $replace(%code2,~,$chr(32))
  echo 2 -a [DeCrypT]14<2 $+ %nick $+ 14>2 %code2
  unset %len2 | unset %nick | unset %chan | unset %asc2 | unset %key2 | unset %pos2 | unset %code2 | unset %decode | unset %decodekey
}

[Paste The Following In REMOTE | EVENTS]

on 1:text:[EnCrypt]:*: { 
  if ($parm2 !isnum) { echo -a %xver 14[1False Encoding From5 $nick 1In5 $chan 1Decoding Halted14] | halt }
  if ((priv isin $parm2) && ($parm3 == $me)) { set %key $parm4 | set %decode $parm5* | decode | halt }
  if ((priv isin $parm2) && ($parm3 != $me)) { halt }
  set %key $parm2 | set %decode $parm3* | halt  
}

[Paste The Following In POPUPS]

[EnCrypter]
.[Public]:code
.-
.[Private]:code priv


[Copyright 1997 [xIRC] Scripting Group]

[ http://xIRC.base.org ]

```
