# TestingBotv1_3616 v1.0 by using this command

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

**Script Name:** TestingBotv1_3616  
**Version:** 1.0  
**Category:** bot  
**Authors:** using this command  
**Email(s):** <Klash240@gmail.com>  
**Website(s):**   
**Release Year:** 2007  
**Tags:** gui, midi, quote system, nicklist, mp3, dcc, popup, wav, fserve, timer, notify, alias, bot, popups, snippet  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/kegdoctor_archive/TestingBotv1_3616/TestingBotv1_3616.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "TestingBotv1_3616.zip",
  "file_count": 5,
  "file_types": [
    ".ini",
    ".txt"
  ],
  "max_file_date": "2007-02-16",
  "min_file_date": "2007-02-04",
  "total_size": 46.14,
  "largest_file": "TestingBotv1/Testingbotv1.txt",
  "text": [
    "TestingBotv1/Testingbotv1.txt",
    "TestingBotv1/Skins.txt",
    "TestingBotv1/installation.txt"
  ]
}
```

## 📋 Text Content (from TestingBotv1/Testingbotv1.txt)

```text
alias slist {

  if ($1 == begin) return

  return $iif($hget(Settings,Skin) == $gettok($read(skins.txt,$1),1,32),$style(2) $gettok($read(skins.txt,$1),1,32),$gettok($read(skins.txt,$1),1,32)) $+ : hadd Settings Skin $gettok($read(Skins.txt,$1),1,32)

  if ($1 == end) return

}

On *:CONNECT:{ 

  $iif($hget($network),return,hmake $network 1000)

  if ($exists($network $+ _nicks.hsh)) {

    if ($hget($network $+ _nicks)) { hload $network $+ _nicks $network $+ _nicks.hsh }

    else { hmake $Network $+ _nicks 1000 | hload $network $+ _nicks $network $+ _nicks.hsh }

    if ($hget($network $+ _nicks,$me)) { .msg nickserv identify $hget($network $+ _nicks,$me) }

  }

}

On *:Disconnect:{

  if ($hget($network $+ _temp,reserv)) {

    var %x $hget($network $+ _temp,reserv)

    var %y $hget($network $+ _temp,report)

    .timer $+ $hget($network $+ _temp,reserv) 1 1 server %x %y

    $iif($hget($network $+ _temp,reserv),hdel $network $+ _temp reserv) 

    $iif($hget($network $+ _temp,report),hdel $network $+ _temp report)

  }

  $iif($hget($network $+ _nicks),hfree $network $+ _nicks)

  $iif($hget($network $+ _temp),hfree $network $+ _temp)

  $iif($hget($network),hfree $network)

}

On *:TEXT:*:?:{

  closemsg $nick

  if ($1 == .own) { 

    if (!$2) { .msg $nick $skin(Invalid Syntax) | halt }

    if ($2 !=== $hget(Settings,Password)) { .msg $nick $skin(Invalid password) | halt }

    if ($hget($network,$nick) == owner) { .msg $nick $skin(You're already at owner status.) }

    elseif ($2 === $hget(settings,Password)) { hadd -m $network $nick Owner | .msg $nick $skin(You're now of owner status) }

  }

  if ($1 == .out) { 

    if ($hget($network,$nick) != owner) { .msg $nick $skin(You're not owner) | halt }

    elseif ($hget($network,$nick) == owner) { hdel $network $nick | .msg $nick $skin(You're no longer owner.) | halt }

  }

  if ($1 == .msg) {

    if ($hget($network,$nick) != owner) { .msg $nick $skin(You're not owner) | halt }

    elseif ($hget($network,$nick) == owner) { 

      if (!$2) { .msg $nick $skin(Invalid Syntax) | halt }

      if ($2 == $nick) { .msg $nick $skin(Stop trying to msg yourself) | halt }

      if ($2 == $me) { .msg $nick $skin(Stop trying to msg me) | halt }

      if ($left($2,1) == $chr(35)) { 

        if (!$3-) { .msg $nick $skin(Invalid Syntax) | halt }

        elseif ($3-) { 

          if ($2 !ischan) { .msg $nick $skin(I'm not on $2) | halt }

          if ($regex($3,$3,^-s$)) {

            if (!$4-) { .msg $nick $skin(Invalid syntax) | halt }

            else { .msg $nick $skin(Now messaging $2 $+ ...) | .msg $2 $skin($4-) } 

          }

          else { .msg $nick $skin(Now messaging $2 $+ ...) | .msg $2 $3- }

        }

      }

      else { 

        if (!$3-) { .msg $nick $skin(Invalid Syntax) | halt }

        elseif ($3-) { 

          if ($regex($3,$3,^-s$)) {

            if (!$4-) { .msg $nick $skin(Invalid Syntax) | halt }

            .msg $2 $skin($4-) 

            hadd -m $network $+ _temp PM_ $+ $2 Yes

            hadd -m $network $+ _temp $2 $nick 

            .msg $nick  > $skin($2 $+ : $4-) 

            halt

          }

          else {

            .msg $2 $3- 

            hadd -m $network $+ _temp PM_ $+ $2 Yes

            hadd -m $network $+ _temp $2 $nick 

          .msg $nick  > $skin($2 $+ : $3-) }

        }

      }

    }

  }

  if ($1 == .skins) { 

    if ($hget($network,$nick) != owner) { .msg $nick $skin(You're not owner) | halt }

    elseif ($hget($network,$nick) == owner) { 

      var %x = $hget(Settings,Skin)

      var %y = $lines(Skins.txt)

      while (%y) { 

        hadd Settings Skin $gettok($read(skins.txt,%y),1,32)

        .msg $nick $skin($gettok($read(Skins.txt,%y),1,32))

        dec %y

      }

    }

  }

  if ($1 == .skin) { 

    if ($hget($network,$nick) != owner) { .msg $nick $skin(You're not owner) | halt }

    elseif ($hget($network,$nick) == owner) { 

      if (!$2) { .msg $nick $skin(Invalid syntax) | halt }

      var %x = $lines(Skins.txt)

      while (%x) { 

        if ($2 != $gettok($read(Skins.txt,%x),1,32))  dec %x

        if ($2 == $gettok($read(Skins.txt,%x),1,32)) { var %y = $true | break }

      }

      if (!%y) { .msg $nick $skin(Invalid parameter.) | halt }

      if ($2 == $hget(Settings,Skin)) { .msg $nick $skin($iif($2 == None,All skins are already unloaded,$2 is already loaded)) } 

      else { hadd -m Settings Skin $2 | hsave settings settings.hsh | .msg $nick $skin($iif($2 == None,$skin(Unloaded skins),$2 Skin Loaded)) }

    }

  }

  if ($1 == .join) { 

    if ($hget($network,$nick) != owner) { .msg $nick $skin(You're not owner, stfu.) | halt }

    elseif ($hget($network,$nick) == owner) { 

      if (!$2) { .msg $nick $skin(Invalid Syntax) | halt }

      if ($left($2,1) != $chr(35)) { .msg $nick $skin(Invalid channel name) | halt }

      if ($2 ischan) { .msg $nick $skin(I'm already on $chan) | halt }

      else { .msg $nick $skin(Now joining $2 $+ ...
```
