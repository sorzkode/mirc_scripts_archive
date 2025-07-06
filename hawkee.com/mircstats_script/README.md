# mIRC Stats v4.61 by Unknown

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

**Script Name:** mIRC Stats  
**Version:** 4.61  
**Category:** Statistics  
**Author(s):** Unknown  
**Email(s):**   
**Website(s):**   
**Release Year:** 2004  
**Tags:** highlight, gui, full script, interface, update checker, alias, rpg, dcc, color text, ctcp replies, addon, uptime, plugin, statusbar, dialog, bot, timer, nicklist, toolbar  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/mircstats_script/mircstats_script.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "mircstats_script.zip",
  "file_count": 36,
  "file_types": [
    ".db",
    ".dll",
    ".html",
    ".ico",
    ".mdx",
    ".mrc",
    ".msw"
  ],
  "max_file_date": "2004-06-13",
  "min_file_date": "2001-11-10",
  "total_size": 796.53,
  "largest_file": "stats/stats.mrc",
  "text": [
    "stats/stats.mrc",
    "stats/webpages/classic/classic.mrc",
    "stats/webpages/invision/invision.mrc",
    "stats/webpages/metax/metax.mrc"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## stats/stats.mrc

```text
;==========================================
; mIRC Stats v4.61 (13/06/2004)
; by Voice_of_Power
;==========================================
; Comments:
; Read the readme file to prevent problems.
; The pop-ups are all the way at the bottom (for if you want to place em somewhere else...)
; I've put everything under a header (in between #'s) to ease up reviewing the code a bit..
;==========================================


;############# loading/unloading... you know the deal :) ##############

on *:LOAD:{
  if ($version < 6.03) { echo -a 10(4!10) You need atleast mIRC v6.03 or higher for this addon. www.mirc.com | .unload -rs $script }
  else {
    echo -a 10(9!10) Creating hash table...
    if (!$isfile($scriptdirstats.src)) { resetstats all }
    ha ctcp 1 | ha checklag 1 | ha grids 0 | ha autoupdate 1 | ha saveevery 0 | ha saveeverynum 30 | ha desktop 0 | ha ontop 0 | ha menu.menubar 1 | ha menu.channel 1 | ha menu.query 1 | ha menu.commands 1
    ha echo public | ha color 1 | ha colorctcp on | ha echo.parentext1 10[7<text>10] | ha echo.parentext2 6[ <text> 6] | ha echo.custom 10[7Custom Line10] blaat
    ha disp.color $color($color(back)) $color($color(normal text)) $color($color(action text)) | ha disp.servers new | ha positionc default | ha pos.apply stats config been have seen
    ha init server events cpu cache os hdd gfx con misc
    echo -a 10(9!10) mIRC Stats $msver loaded - by Voice_of_Power (no further advertising :))
    echo -a 10(9!10) To view your stats type /stats or open the dialog from the menu-bar/channel/query pop-ups.
    echo -a 10(9!10) Type /stats config for the configuration dialog - /statsweb to start the webpage.
    echo -a 10(9!10) Read the help file to find out all about mIRC Stats.
  }
}
on *:UNLOAD:{
  if ($script($hg(webcurscript))) { unload -rs $nopath($hg(webcurscript)) }
  if ($dialog(stats2)) { dialog -x stats2 stats2 }
  if ($dialog(statsconf)) { dialog -x statsconf statsconf }
  if ($dialog(been)) { dialog -x been been }
  if ($dialog(have)) { dialog -x have have }
  if ($dialog(seen)) { dialog -x seen seen }
  if ($timer(totalonline)) { .timertotalonline off }
  if ($timer(savestats)) { .timersavestats off }
  var %a = $input(Do you want to remove the settings file?,yq,Unloading...)
  if (%a) { .remove $shortfn($scriptdir) $+ stats.src | echo -a 10(9!10) Settings file removed. }
  else { hsave -o stats $shortfn($scriptdir) $+ stats.src }
  hfree stats
  echo -a 10(9!10) Succesfully unloaded mIRC Stats $msver $+ .
}


;##################### aliases ####################

alias stats {
  if ($1) {
    if ($1 == config) { sdia statsconf }
    elseif ($1 == been) { sdia been }
    elseif ($1 == have) { sdia have }
    elseif ($1 == seen) { sdia seen }
    elseif ($1 == icons) { sdia stats.icons }
    elseif ($1 == color) { sdia stats.color }
    elseif ($1 == help) { run $shortfn($scriptdir) $+ readme.html }
    else { echo -a 10(9!10) Specify one of these parameters: config $chr(124) been $chr(124) have $chr(124) seen $chr(124) icons $chr(124) color $chr(124) help $chr(124) or nothing to get the main dialog }
  }
  else { sdia stats2 }
}

alias statsweb {
  statswebend
  if ($isfile($hg(webcurscript))) { .load -rs $shortfn($nofile($hg(webcurscript))) $+ $nopath($hg(webcurscript)) }
  else { echo -a 10(4!10) No webpage specified, or file doesn't exist, please try another webpage file. | return }
  if ($1) {
    if ($1 isnum 1-65535) {
      if ($portfree($1)) { $iif($show,echo -a 10(9!10) Webpage online at http:// $+ $ip $+ : $+ $1) | socklisten stats $1 | ha webonline http:// $+ $ip $+ : $+ $1 }
      else { echo -a 10(4!10) Port $1 is already in use, please try another one. }
    }
    else { echo -a 10(4!10) Port $1 is invalid, it must be in the range of 1 and 65535. }
  }
  else {
    if ($portfree(80)) { $iif($show,echo -a 10(9!10) Webpage online at http:// $+ $ip $+ :80) | socklisten stats 80 | ha webonline http:// $+ $ip $+ :80 }
    else { echo -a 10(4!10) Port 80 is already in use, please try another one. }
  }
}
alias statswebend { if ($sock(stats)) { $iif($show,echo -a 10(9!10) Webpage offline.) } | sockclose stats | hdel stats webonline }

alias secho {
  if (!$1) { echo -a 10(9!10) Specify one of these parameters: servers $chr(124) power $chr(124) time $chr(124) uptime $chr(124) events $chr(124) texts $chr(124) own $chr(124) been $chr(124) have $chr(124) seen $chr(124) cpu $chr(124) os $chr(124) cache $chr(124) hdd $chr(124) gfx $chr(124) con $chr(124) eth $chr(124) misc $chr(124) custom | halt }
  if ($1 ischan) || ($query($1)) { var %a = $1,%b = $2 }
  else { var %a = $active,%b = $1 }
  var %e = $stats.echo(%b)

  if (%e) {
    var %i = 1
    while ($gettok(%e,%i,9)) {
      if ($hg(echo) == personal) || (!$server) { echo -a $gettok(%e,%i,9) }
      else { msg %a $gettok(%e,%i,9) }
      inc %i
    }
    hi echo.total 1
    if ($dialog(stats2)) && ($hg(autoupdate)) { stats.update e 5 echo }
  }
  else { echo -a 10(9!10) Specify one of these parameters: servers $chr(124) power $chr(124) time $chr(124) uptime $chr(124) events $chr(124) texts $chr(124) own $chr(124) been $chr(124) have $chr(124) seen $chr(124) cpu $chr(124) os $chr(124) cache $chr(124) hdd $chr(124) gfx $chr(124) con $chr(124) eth $chr(124) misc $chr(124) custom }
}


alias resetstats {
  if (!$hget(stats)) { hmake stats 20 }
  if ($1 == all) {
    if ($event != load) { var %c = $input(Are you sure you wish to reset all of your statistics?,qy,mIRC Stats) }
    else { var %c = 1 }
    if (%c) {
      ha firstdate $mdate | ha firsttime $ctime | ha viewed 0 | ha echo.total 0 | ha ctcps 0 | ha started 0 | ha totalonline 0 | ha pagehits 0 | ha dccsend 0 | ha dccget 0 | ha dccsendsize 0 | ha dccgetsize 0 | ha chars 0 | ha words 0 | ha lines 0 | ha puncs 0 | ha smilies 0 | ha echo public | ha color 1
      ha been.date $mdate | ha been.time $ctime | ha been.oped 0 | ha been.deoped 0 | ha been.halfoped 0 | ha been.dehalfoped 0 | ha been.voiced 0 | ha been.devoiced 0 | ha been.kicked 0 | ha been.banned 0
      ha have.date $mdate | ha have.time $ctime | ha have.oped 0 | ha have.deoped 0 | ha have.halfoped 0 | ha have.dehalfoped 0 | ha have.voiced 0 | ha have.devoiced 0 | ha have.kicked 0 | ha have.banned 0 | ha have.nick 0 | ha have.topic 0 | ha have.joined 0 | ha have.parted 0 | ha have.query 0 | ha have.connected 0 | ha have.quit 0 | ha have.connected 0
      ha seen.date $mdate | ha seen.time $ctime | ha seen.oped 0 | ha seen.deoped 0 | ha seen.halfoped 0 | ha seen.dehalfoped 0 | ha seen.voiced 0 | ha seen.devoiced 0 | ha seen.kicked 0 | ha seen.banned 0 | ha seen.nick 0 | ha seen.topic 0 | ha seen.joined 0 | ha seen.parted 0 | ha seen.quit 0
    }
  }
  if ($1 == events) {
    var %c = $input(Are you sure you wish to reset your events statistics?,qy,mIRC Stats)
    if (%c) { ha started 0 | ha totalonline 0 | ha dccsend 0 | ha dccget 0 | ha dccsendsize 0 | ha dccgetsize 0 | ha chars 0 | ha words 0 | ha lines 0 | ha puncs 0 | ha smilies 0 | ha echo public | ha color 1 }
  }
  if ($1 == been) {
    var %c = $input(Are you sure you wish to reset your been statistics?,qy,mIRC Stats)
    if (%c) { ha been.date $mdate | ha been.time $ctime | ha been.oped 0 | ha been.deoped 0 | ha been.halfoped 0 | ha been.dehalfoped 0 | ha been.voiced 0 | ha been.devoiced 0 | ha been.kicked 0 | ha been.banned 0 }
  }
  if ($1 == have) {
    var %c = $input(Are you sure you wish to reset your have statistics?,qy,mIRC Stats)
    if (%c) { ha have.date $mdate | ha have.time $ctime | ha have.oped 0 | ha have.deoped 0 | ha have.halfoped 0 | ha have.dehalfoped 0 | ha have.voiced 0 | ha have.devoiced 0 | ha have.kicked 0 | ha have.banned 0 | ha have.nick 0 | ha have.topic 0 | ha have.joined 0 | ha have.parted 0 | ha have.query 0 | ha have.quit 0 | ha have.connected 0 }
  }
  if ($1 == seen) {
    var %c = $input(Are you sure you wish to reset your seen statistics?,qy,mIRC Stats)
    if (%c) { ha seen.date $mdate | ha seen.time $ctime | ha seen.oped 0 | ha seen.deoped 0 | ha seen.halfoped 0 | ha seen.dehalfoped 0 | ha seen.voiced 0 | ha seen.devoiced 0 | ha seen.kicked 0 | ha seen.banned 0 | ha seen.nick 0 | ha seen.topic 0 | ha seen.joined 0 | ha seen.parted 0 | ha seen.quit 0 }
  }
}

alias sinfo {
  if (!$2) { return }
  var %s
  if ($1 == p) {
    if ($2 == gender) { return $hg(websex) }
    elseif ($2 == version) { return $msver }
    return $hg(web $+ $2)
  }
  elseif ($1 == t) {
    if ($2 == time) { return $time ( $+ $time(z) GMT) }
    elseif ($2 == date) { return $day $mdate }
    elseif ($2 == totalonline) { return $totalonline }
    elseif ($2 == mirc) { return $uptime(mirc,1) }
    elseif ($2 == system) { return $uptime(system,1) }
  }
  elseif ($1 == y) {
    if ($2 == cpu) || ($2 == mhz) || ($2 == cache) {
      if ($regex(cpu,$moo(cpuinfo),^(\d+)-(.+). (\d+MHz). (\d+KB) \((\d+)% Load\)$)) {
        if ($2 == cpu) { return $iif($stats.cputm,$ifmatch,$regml(cpu,2)) }
        elseif ($2 == mhz) { return $regml(cpu,3) }
        elseif ($2 == cache) { return $regml(cpu,4) }
      }
    }
    elseif ($2 == man) { return $procinfo(GetCpuVendor) }
    elseif ($2 == load) { return $mid($procinfo(GetCpuUsage),1,2) $+ % }
    elseif ($2 == ram) || ($2 == ramuse) {
      if ($regex(ram,$moo(meminfo),^Usage: (\d+)/(\d+MB) \((\d+)\.\d+%\)$)) {
        if ($2 == ram) { return $regml(ram,2) }
        elseif ($2 == ramuse) { return $regml(ram,3) $+ % ( $+ $regml(ram,1) $+ MB) }
      }
    }
    elseif (os* iswm $2) {
      if ($regex(os,$moo(osinfo),^(.+) \(([\d\.]+) - ([\d\.]+)\)$)) {
        if ($2 == os) { return $regml(os,1) }
        elseif ($2 == osver) { return $regml(os,2) }
        elseif ($2 == osbuild) { return $regml(os,3) }
        elseif ($2 == osinst) { return $replace($duration($calc($ctime - $file($mbminfo(sysdir,0)).ctime)),days,d,day,d,hrs,h,hr,h,mins,m,min,m,secs,s,sec,s) }
        elseif ($2 == osup) { return $uptime(system,1) }
      }
    }
    elseif (cache* iswm $2) {
      if ($2 == cachesize) { return $procinfo(CacheL1Info,DCACHESIZE) $+ KB }
      if ($2 == cacheassoc) { return $procinfo(CacheL1Info,DCACHEASSOC) }
      if ($2 == cachelines) { return $procinfo(CacheL1Info,DCACHELINES) }
      if ($2 == cachelinesize) { return $procinfo(CacheL1Info,DCACHELSIZE) bytes }
      if ($2 == cacheinstrsize) { return $procinfo(CacheL1Info,ICACHESIZE) $+ KB }
      if ($2 == cacheinstrassoc) { return $procinfo(CacheL1Info,ICACHEASSOC) }
      if ($2 == cacheinstrlines) { return $procinfo(CacheL1Info,ICACHELINES) }
      if ($2 == cacheinstrlinesize) { return $procinfo(CacheL1Info,ICACHELSIZE) bytes }
    }
    elseif (gfx* iswm $2) {
      if ($2 == gfx) { return $moo(gfxinfo) }
      elseif ($2 == gfxres) { return $gettok($moo(screeninfo),1,32) }
      elseif ($2 == gfxref) { return $gettok($moo(screeninfo),3,32) }
      elseif ($2 == gfxdepth) { return $gettok($moo(screeninfo),2,32) }
    }
    elseif (con* iswm $2) {
      if ($regex(con,$moo(connection),^(.+) @ (.+) for (.+) \((.+MB) up. (.+MB) down\)$)) {
        if ($2 == con) { return $regml(con,1) }
        elseif ($2 == conspeed) { return $regml(con,2) }
        elseif ($2 == condown) { return $regml(con,3) }
        elseif ($2 == conup) { return $regml(con,4) }
        elseif ($2 == conactive) { return $regml(con,5) }
      }
    }
    elseif (eth* iswm $2) {
      var %2 = $2
      tokenize 32 $moo(interfaceinfo)
      if ($chr(35) isin $1-) { var %c = $1 $+ $2-,%i = 1,%x = 1 | while (%i <= $numtok(%c,32)) { var %n = $+($chr(35),%x,$chr(40),*) | if (%n iswm $gettok(%c,%i,32)) { var %s. $+ %x %i | inc %x } | inc %i } }
      while ($var(%s.*,0)) {
        var %t = $gettok(%c,$+($eval($var(%s.*,1),2),-,$iif($calc($eval($var(%s.*,2),2) -1) > 0,$ifmatch)),32)
        if (%2 == eth) { return $+($deltok($mid(%t,4,-1),-1,40)) }
        elseif (%2 == ethspeed) { return $mid($gettok(%t,-5,32),2,-1) }
        elseif (%2 == ethget) { return $gettok(%t,-4,32) }
        elseif (%2 == ethsent) { return $gettok(%t,-2,32) }
        unset $var(%s.*,1)
      }
    }
    elseif ($2 == ip) { return $ip }
    elseif ($2 == upstream) { return $bytes($gettok($bdll(band,_),2,32),3).suf }
    elseif ($2 == downstream) { return $bytes($gettok($bdll(band,_),3,32),3).suf }
  }
  elseif ($1 == m) { return $procinfo(is $+ $2) }

  elseif ($1 == e) {
    if ($2 == total) { %s = $sinfo.total(e) }
    elseif ($2 == cwords) {
      if ($3 == 0) { %s = $hfind(stats,custom.*,0,w) }
      elseif ($3 isnum) { %s = $hfind(stats,custom.*,$3,w) }
    }
    elseif ($2 == date) { %s = $hg(firstdate) }
    elseif ($2 == time) { %s = $hg(firsttime) }
    elseif ($2 == echo) { %s = $hg(echo.total) }
    else { %s = $hg($2) }
  }
  elseif ($1 == b) {
    if ($2 == total) { %s = $sinfo.total(b) }
    else { %s = $hg(been. $+ $2) }
  }
  elseif ($1 == h) {
    if ($2 == total) { %s = $sinfo.total(h) }
    else { %s = $hg(have. $+ $2) }
  }
  elseif ($1 == s) {
    if ($2 == total) { %s = $sinfo.total(s) }
    else { %s = $hg(seen. $+ $2) }
  }

  if (%s) || (%s == 0) {
    if ($prop) {
      var %t = $calc($ctime - $iif($1 == e,$hg(firsttime),$hg($sinfo.bhs($1)))),%t2,%prop,%p

      if ($left($prop,1) == p) { %prop = $right($prop,-1) | %p = p }
      else { %prop = $prop }
      if (%prop == mil) { %t2 = $iif(%t < 31536000000,%t,31536000000) }
      if (%prop == cen) { %t2 = $iif(%t < 3153600000,%t,3153600000) }
      if (%prop == dec) { %t2 = $iif(%t < 315360000,%t,315360000) }
      if (%prop == year) { %t2 = $iif(%t < 31536000,%t,31536000) }
      if (%prop == month) { %t2 = $iif(%t < 2592000,%t,2592000) }
      if (%prop == week) { %t2 = $iif(%t < 604800,%t,604800) }
      if (%prop == day) { %t2 = $iif(%t < 86400,%t,86400) }
      if (%prop == hour) { %t2 = $iif(%t < 3600,%t,3600) }
      if (%prop == min) { %t2 = $iif(%t < 60,%t,60) }
      if (%prop == sec) { %t2 = 1 }

      var %n = $calc((%t2 * %s) / %t)
      if (%p) {
        if (%prop) { return $iif($round($calc((%n * 100) / %s),$iif($3 isnum,$3,1)),$ifmatch,0) $+ % }
        return $iif($round($calc((%s * 100) / $sinfo.total($1)),$iif($3 isnum,$3,1)),$ifmatch,0) $+ %
      }
      return $round(%n,$iif($3 isnum,$3,1))
    }
    return %s
  }
  return
}

alias sw { sockwrite -n $sockname $1- }

;################### local aliases #####################

alias -l ha { hadd -m stats $1- }
alias -l hg { return $hget(stats,$1) }
alias -l hi { hinc -m stats $1- }
alias -l hd { hdec -m stats $1- }
alias -l sdia {
  var %d = -m
  if ($hg(desktop)) { var %d %d $+ d }
  if ($hg(ontop)) { var %d %d $+ o }
  if (!$dialog($1)) { dialog %d $1 $1 }
  else { dialog -v $1 $1 }
}

alias -l msver { return 4.61 }

alias -l moo { return $dll($shortfn($scriptdirdll\) $+ moo.dll,$1-,_) }
alias -l procinfo { return $dll($shortfn($scriptdirdll\) $+ ProcInfo.dll,$1,$iif($2,$2,.)) }
alias -l mbminfo { return $dll($shortfn($scriptdirdll\) $+ mbminfo.dll,$$1,$$2) }
alias -l colordll { return $dll($shortfn($scriptdirdll\) $+ color.dll,Color,$$1) }
alias -l bdll { return $dll($shortfn($scriptdirdll\) $+ band.dll,$1,$2-) }
alias -l smdx { return $dll($shortfn($scriptdirdll\) $+ mdx.dll,$1,$2-) }
alias -l mdx { return $dll($shortfn($scriptdirdll\) $+ mdx.dll,$1,$2-) }
alias -l sviews { return $shortfn($scriptdirdll\) $+ views.mdx }
alias -l sdialog { return $shortfn($scriptdirdll\) $+ dialog.mdx }
alias -l sctl { return $shortfn($scriptdirdll\) $+ ctl_gen.mdx }
alias -l sbars { return $shortfn($scriptdirdll\) $+ bars.mdx }

alias -l mdate {
  if ($hg(usdate)) { return $adate }
  return $date
}
alias -l icons { if (!$dialog(stats.icon)) { dialog -m stats.icon stats.icon } | set %icontype $1 }
alias -l totalonline { return $duration($hg(totalonline)) }
alias -l suptime { return $uptime(server,1) }
alias -l position {
  if ($1 isin $hg(pos.apply)) {
    if ($hg(positionc) == default) { return -1 -1 }
    elseif ($hg(positionc) == derive) { return $iif($hg(pos. $+ $1),$ifmatch,-1 -1) }
    else { return $iif($hg(position),$ifmatch,-1 -1) }
  }
  return -1 -1
}

alias -l sinfo.total {
  if ($1 == e) {
    if ($hfind(stats,custom.*,0,w)) {
      var %c = 1,%h
      while (%c <= $hfind(stats,custom.*,0,w)) {
        inc %h $hg($hfind(stats,custom.*,%c,w))
        inc %c
      }
    }
    return $calc($hg(started) + $hg(viewed) + $hg(echo.total) + $hg(ctcps) + $hg(pagehits) + $hg(dccsend) + $hg(dccget) + $hg(lines) + $hg(words) + $hg(chars) + $hg(puncs) + $hg(smilies) + %h)
  }
  elseif ($1 == b) { return $calc($hg(been.oped) + $hg(been.deoped) + $hg(been.halfoped) + $hg(been.dehalfoped) + $hg(been.voiced) + $hg(been.devoiced) + $hg(been.kicked) + $hg(been.banned)) }
  elseif ($1 == h) { return $calc($hg(have.oped) + $hg(have.deoped) + $hg(have.halfoped) + $hg(have.dehalfoped) + $hg(have.voiced) + $hg(have.devoiced) + $hg(have.kicked) + $hg(have.banned) + $hg(have.nick) + $hg(have.topic) + $hg(have.quit) + $hg(have.joined) + $hg(have.parted) + $hg(have.query) + $hg(have.connected)) }
  elseif ($1 == s) { return $calc($hg(seen.oped) + $hg(seen.deoped) + $hg(seen.halfoped) + $hg(seen.dehalfoped) + $hg(seen.voiced) + $hg(seen.devoiced) + $hg(seen.kicked) + $hg(seen.banned) + $hg(seen.nick) + $hg(seen.topic) + $hg(seen.quit) + $hg(seen.joined) + $hg(seen.parted)) }
}
alias -l sinfo.bhs {
  if (b isin $1) { return been.time }
  if (h isin $1) { return have.time }
  if (s isin $1) { return seen.time }
}

alias -l stats.update {
  if ($1 == e) { var %d = stats2,%c = 52 }
  elseif ($1 == b) { var %d = been,%c = 2 }
  elseif ($1 == h) { var %d = have,%c = 2 }
  elseif ($1 == s) { var %d = seen,%c = 2 }
  else { return }

  if ($dialog(%d)) && ($hg(autoupdate)) {
    did -o %d %c $2 0 0 0 0 $cell(%d,%c,$2,1) 	0 0 0 $sinfo($1,$3) 	0 0 0 $sinfo($1,$3).year 	0 0 0 $sinfo($1,$3).month 	0 0 0 $sinfo($1,$3).week 	0 0 0 $sinfo($1,$3).day 	0 0 0 $sinfo($1,$3).p
  }
}

alias -l stats.read {
  var %f = $findfile($scriptdirwebpages\,* $+ $1,1)
  if ($read($shortfn(%f),ns,$2)) { return $ifmatch }
}

alias -l spage {
  var %d, %i
  if ($0 = 1) {
    set %d $dname
    set %i $1
  }
  else {
    set %d $1
    set %i $2
  }
  did -i %d %i 1 page $prop
  return $gettok($did(%d, %i, 1), 3-, 32)
}

;#### $branch and $cell - by morphy ###
alias -l sbranch {
  var %d = $1
  var %i = $2
  if ($dialog(%d)) {
    var %b = $gettok($did(%d,%i,1),4-,32)
    var %n = $calc($numtok(%b,32) -1)
    if (%n = 0) did -i %d %i 1 cb root
    else { did -i %d %i 1 cb root $gettok(%b,1- $+ %n,32) }
    did -i %d %i 1 cb root $gettok(%b,1- $+ %n,32)
    return $gettok($gettok($did(%d,%i,$gettok(%b,-1,32)),7-,32),1,9)
  }
}
alias -l cell { return $gettok($gettok($gettok($did($1,$2,$3),$4,9),$iif($4 = 1,6,5) $+ -,32),1,4) }
;##############

alias -l ptext1 {
  if ($hg(echo.parentext1)) { return $replace($ifmatch,<text>,$1) }
  else { return $1 }
}
alias -l ptext {
  if ($hg(echo.parentext2)) { return $replace($ifmatch,<text>,$1) }
  else { return $1 }
}

alias -l icon {
  if ($1 == serv) {
    if ($isfile($gettok($hg(icon.serv),2,44))) { return $hg(icon.serv) }
    return 0, $+ $shortfn($scriptdiricons\) $+ serv.ico
  }
  if ($1 == chan) {
    if ($isfile($gettok($hg(icon.chan),2,44))) { return $hg(icon.chan) }
    return 0, $+ $shortfn($scriptdiricons\) $+ chan.ico
  }
  if ($1 == query) {
    if ($isfile($gettok($hg(icon.query),2,44))) { return $hg(icon.query) }
    return 0, $+ $shortfn($scriptdiricons\) $+ query.ico
  }
  if ($1 == hd) {
    if ($isfile($gettok($hg(icon.hd),2,44))) { return $hg(icon.hd) }
    return 0, $+ $shortfn($scriptdiricons\) $+ hd.ico
  }
  if ($1 == cd) {
    if ($isfile($gettok($hg(icon.cd),2,44))) { return $hg(icon.cd) }
    return 0, $+ $shortfn($scriptdiricons\) $+ cd.ico
  }
  if ($1 == rm) {
    if ($isfile($gettok($hg(icon.rm),2,44))) { return $hg(icon.rm) }
    return 0, $+ $shortfn($scriptdiricons\) $+ rm.ico
  }
}
alias -l stats.servers.chans {
  var %c 1
  while (%c <= $chan(0)) {
    did -a stats2 12,162 2 2 $chan(%c)
    inc %c
  }
  var %q 1
  while (%q <= $query(0)) {
    did -a stats2 12,162 3 3 $query(%q)
    inc %q
  }
  did -i stats2 12,162 1 cb root
}

alias -l stats.servers.new {
  did -r stats2 22,24,26
  if ($scon(0) == 1) && ($scon(1).status == disconnected) {
    did -a stats2 22 0 0 0 0 -	-	-	-	-	-	-	-	-	-	-	-	-	-
  }
  else {
    var %s = 1
    while (%s <= $scon(0)) {
      did -a stats2 22 0 1 0 0 $scon(%s).server 	0 0 0 $iif($scon(%s).network,$ifmatch,-) 	0 0 0 $iif($scon(%s).serverip,$ifmatch,-) 	0 0 0 $iif($scon(%s).port,$ifmatch,-) 	0 0 0 $iif($scon(%s).chantypes,$ifmatch,-) 	0 0 0 $iif($scon(%s).chanmodes,$ifmatch,-) 	0 0 0 $iif($scon(%s).prefix,$ifmatch,-) 	0 0 0 $iif($scon(%s).modespl,$ifmatch,-) 	0 0 0 $scon(%s).me 	0 0 0 $iif($scon(%s).usermode != $chr(43),$left($scon(%s).usermode,1) $right($scon(%s).usermode,-1),-) 	0 0 0 $scon(%s).suptime 	0 0 0 $duration($scon(%s).idle) 	0 0 0 $iif($hg(checklag),checking...,-) 	0 0 0 $iif($scon(%s).away == $true,yes,no)
      inc %s
    }
    if ($scon(1).status == connected) { stats.chans.new 1 }
  }
}
alias -l stats.chans.new {
  did -r stats2 24,26
  scon $1
  if ($scon($1).status == connected) {
    var %c = 1
    while (%c <= $chan(0)) {
      did -a stats2 24 0 1 0 0 $chan(%c) 	0 0 0 $nick($chan(%c),0,a) 	0 0 0 $nick($chan(%c),0,o) 	0 0 0 $nick($chan(%c),0,h) 	0 0 0  $nick($chan(%c),0,v) 	0 0 0 $nick($chan(%c),0,r) 	0 0 0 $iif($chan(%c).topic,$strip($ifmatch),-) 	0 0 0 $iif($chan($chan(%c)).mode,$left($chan($chan(%c)).mode,1) $right($chan($chan(%c)).mode,-1),-) 	0 0 0 $iif($chan(%c).key,$ifmatch,-) 	0 0 0 $iif($chan(%c).limit,$ifmatch,-) 	0 0 0 $chan(%c).logfile 	0 0 0 $chan(%c).wid 	0 0 0 $chan(%c).cid
      inc %c
    }
    var %q = 1
    while (%q <= $query(0)) {
      did -a stats2 26 0 1 0 0 $query(%q) 	0 0 0 $query(%q).addr 	0 0 0 $comchan($query(%q),0) 	0 0 0 $query(%q).logfile 	0 0 0 $query(%q).wid 	0 0 0 $query(%q).cid
      inc %q
    }
  }
}

alias -l stats.serverinfo {
  if ($scon($1).status == connected) {
    if ($hg(checklag)) { checklag $1 }
    did -a stats2 17 1 1 0 0 Server: 	0 0 0 $scon($1).server
    did -a stats2 17 1 1 0 0 Network: 	0 0 0 $iif($scon($1).network,$ifmatch,-)
    did -a stats2 17 1 1 0 0 IP address 	0 0 0 $iif($scon($1).serverip,$ifmatch,-)
    did -a stats2 17 1 1 0 0 Port: 	0 0 0 $iif($scon($1).port,$ifmatch,-)
    did -a stats2 17 1 1 0 0
    did -a stats2 17 1 1 0 0 Chan types: 	0 0 0 $iif($scon($1).chantypes,$ifmatch,-)
    did -a stats2 17 1 1 0 0 Chan modes: 	0 0 0 $iif($scon($1).chanmodes,$ifmatch,-)
    did -a stats2 17 1 1 0 0 Mode prefix: 	0 0 0 $iif($scon($1).prefix,$ifmatch,-)
    did -a stats2 17 1 1 0 0 Mode params: 	0 0 0 $iif($scon($1).modespl,$ifmatch,-)
    did -a stats2 17 1 1 0 0
    did -a stats2 17 1 1 0 0 Nickname: 	0 0 0 $scon($1).me
    did -a stats2 17 1 1 0 0 Usermodes: 	0 0 0 $iif($scon($1).usermode != $chr(43),$left($scon($1).usermode,1) $right($scon($1).usermode,-1),-)
    did -a stats2 17 1 1 0 0
    did -a stats2 17 1 1 0 0 Connected: 	0 0 0 $scon($1).suptime
    did -a stats2 17 1 1 0 0 Idle time: 	0 0 0 $duration($scon($1).idle)
    did -a stats2 17 1 1 0 0 Lag: 	0 0 0 $iif($hg(checklag),checking...,-)
    did -a stats2 17 1 1 0 0
    did -a stats2 17 1 1 0 0 Away: 	0 0 0 $iif($scon($1).away == $true,yes,no)
  }
  else {
    did -a stats2 17 1 1 0 0 Server: 	+ 0 0 0 -
    did -a stats2 17 1 1 0 0 Network: 	+ 0 0 0 -
    did -a stats2 17 1 1 0 0 IP address 	+ 0 0 0 -
    did -a stats2 17 1 1 0 0 Port: 	+ 0 0 0 -
    did -a stats2 17 1 1 0 0 	+ 0 0 0
    did -a stats2 17 1 1 0 0 Chan types: 	+ 0 0 0 -
    did -a stats2 17 1 1 0 0 Chan modes: 	+ 0 0 0 -
    did -a stats2 17 1 1 0 0 Mode prefix: 	+ 0 0 0 -
    did -a stats2 17 1 1 0 0 Mode params: 	+ 0 0 0 -
    did -a stats2 17 1 1 0 0 	+ 0 0 0
    did -a stats2 17 1 1 0 0 Nickname: 	+ 0 0 0 -
    did -a stats2 17 1 1 0 0 Usermodes: 	+ 0 0 0 -
    did -a stats2 17 1 1 0 0
    did -a stats2 17 1 1 0 0 Connected: 	+ 0 0 0 -
    did -a stats2 17 1 1 0 0 Idle time: 	+ 0 0 0 -
    did -a stats2 17 1 1 0 0 Lag: 	+ 0 0 0 -
    did -a stats2 17 1 1 0 0
    did -a stats2 17 1 1 0 0 Away: 	+ 0 0 0 -
  }
}

alias -l checklag { scon $1 .ctcpreply $!me LAGSTATS $ticks }
on *:CTCPREPLY:LAGSTATS*:{
  haltdef
  if ($nick != $me) { halt }
  if ($dialog(stats2)) { did -o stats2 17 17 1 0 0 Lag: 	+ 0 0 0 $calc(($ticks - $2) / 1000) secs }
}


alias -l stats.channelinfo {
  if ($scon($1).status == connected) {
    did -a stats2 17 1 1 0 0 Channel: 	+ 0 0 0 $chan($2)
    did -a stats2 17 1 1 0 0
    did -a stats2 17 1 1 0 0 Total users: 	+ 0 0 0 $nick($chan($2),0,a)
    did -a stats2 17 1 1 0 0 Ops: 	+ 0 0 0 $nick($chan($2),0,o) ( $+ $iif($int($calc($nick($chan($2),0,o) / $nick($chan($2),0,a) * 100)) == $null,0,$int($calc($nick($chan($2),0,o) / $nick($chan($2),0,a) * 100)))) $+ % $+ )
    did -a stats2 17 1 1 0 0 Halfops: 	+ 0 0 0 $nick($chan($2),0,h) ( $+ $iif($int($calc($nick($chan($2),0,h) / $nick($chan($2),0,a) * 100)) == $null,0,$int($calc($nick($chan($2),0,h) / $nick($chan($2),0,a) * 100)))) $+ % $+ )
    did -a stats2 17 1 1 0 0 Voiced: 	+ 0 0 0 $nick($chan($2),0,v) ( $+ $iif($int($calc($nick($chan($2),0,v) / $nick($chan($2),0,a) * 100)) == $null,0,$int($calc($nick($chan($2),0,v) / $nick($chan($2),0,a) * 100)))) $+ % $+ )
    did -a stats2 17 1 1 0 0 Regulars: 	+ 0 0 0 $nick($chan($2),0,r) ( $+ $iif($int($calc($nick($chan($2),0,r) / $nick($chan($2),0,a) * 100)) == $null,0,$int($calc($nick($chan($2),0,r) / $nick($chan($2),0,a) * 100)))) $+ % $+ )
    did -a stats2 17 1 1 0 0
    did -a stats2 17 1 1 0 0 Topic: 	+ 0 0 0 $iif($chan($2).topic,$strip($ifmatch),-)
    did -a stats2 17 1 1 0 0 Modes: 	+ 0 0 0 $iif($chan($chan($2)).mode,$left($chan($chan($2)).mode,1) $right($chan($chan($2)).mode,-1),-)
    did -a stats2 17 1 1 0 0 Key: 	+ 0 0 0 $iif($chan($2).key,$ifmatch,-)
    did -a stats2 17 1 1 0 0 Limit: 	+ 0 0 0 $iif($chan($2).limit,$ifmatch,-)
    did -a stats2 17 1 1 0 0
    did -a stats2 17 1 1 0 0 Logfile: 	+ 0 0 0 $chan($2).logfile
    did -a stats2 17 1 1 0 0 Window ID: 	+ 0 0 0 $chan($2).wid
    did -a stats2 17 1 1 0 0 Connect ID: 	+ 0 0 0 $chan($2).cid
  }
  else {
    did -a stats2 17 1 1 0 0 Channel: 	+ 0 0 0 -
    did -a stats2 17 1 1 0 0
    did -a stats2 17 1 1 0 0 Total users: 	+ 0 0 0 -
    did -a stats2 17 1 1 0 0 Ops: 	+ 0 0 0 -
    did -a stats2 17 1 1 0 0 Halfops: 	+ 0 0 0 -
    did -a stats2 17 1 1 0 0 Voiced: 	+ 0 0 0 -
    did -a stats2 17 1 1 0 0 Regulars: 	+ 0 0 0 -
    did -a stats2 17 1 1 0 0
    did -a stats2 17 1 1 0 0 Topic: 	+ 0 0 0 -
    did -a stats2 17 1 1 0 0 Modes: 	+ 0 0 0 -
    did -a stats2 17 1 1 0 0 Key: 	+ 0 0 0 -
    did -a stats2 17 1 1 0 0 Limit: 	+ 0 0 0 -
    did -a stats2 17 1 1 0 0
    did -a stats2 17 1 1 0 0 Logfile: 	+ 0 0 0 -
    did -a stats2 17 1 1 0 0 Window ID: 	+ 0 0 0 -
    did -a stats2 17 1 1 0 0 Connect ID: 	+ 0 0 0 -
  }
}


alias -l stats.queryinfo {
  if ($scon($1).status == connected) {
    did -a stats2 16 1 1 0 0 Nickname: 	+ 0 0 0 $2
    did -a stats2 16 1 1 0 0 Address: 	+ 0 0 0 $query($2).addr
    did -a stats2 16 1 1 0 0 	+ 0 0 0
    did -a stats2 16 1 1 0 0 Comchans:	+ 0 0 0 $comchan($2,0)
    var %c $comchan($2,0)
    var %c2 1
    while (%c2 <= %c) {
      did -a stats2 16 1 1 0 0 $iif($2 !isreg $comchan($2,%c2),$left($nick($comchan($2,%c2),$2).pnick,1)) 	+ 0 0 0 $comchan($2,%c2)
      inc %c2
    }
    did -a stats2 16 1 1 0 0 	+ 0 0 0
    did -a stats2 16 1 1 0 0 Logfile: 	+ 0 0 0 $query($2).logfile
    did -a stats2 16 1 1 0 0 Window ID: 	+ 0 0 0 $query($2).wid
    did -a stats2 16 1 1 0 0 Connect ID: 	+ 0 0 0 $query($2).cid
  }
  else {
    did -a stats2 16 1 1 0 0 Nickname: 	+ 0 0 0 -
    did -a stats2 16 1 1 0 0 Address: 	+ 0 0 0 -
    did -a stats2 16 1 1 0 0 	+ 0 0 0
    did -a stats2 16 1 1 0 0 Comchans:	+ 0 0 0 -
    did -a stats2 16 1 1 0 0 	+ 0 0 0
    did -a stats2 16 1 1 0 0 Logfile: 	+ 0 0 0 -
    did -a stats2 16 1 1 0 0 Window ID: 	+ 0 0 0 -
    did -a stats2 16 1 1 0 0 Connect ID: 	+ 0 0 0 -
  }
}

alias -l stats.events {
  if ($1 == -b) {
    did -r been 2
    did -a been 2 0 0 0 0 Oped 	0 0 0 $sinfo(b,oped) 	0 0 0 $sinfo(b,oped).year 	0 0 0 $sinfo(b,oped).month 	0 0 0 $sinfo(b,oped).week 	0 0 0 $sinfo(b,oped).day 	0 0 0 $sinfo(b,oped).p
    did -a been 2 0 0 0 0 Deoped 	0 0 0 $sinfo(b,deoped) 	0 0 0 $sinfo(b,deoped).year 	0 0 0 $sinfo(b,deoped).month 	0 0 0 $sinfo(b,deoped).week 	0 0 0 $sinfo(b,deoped).day 	0 0 0 $sinfo(b,deoped).p
    did -a been 2 0 0 0 0 Halfoped 	0 0 0 $sinfo(b,halfoped) 	0 0 0 $sinfo(b,halfoped).year 	0 0 0 $sinfo(b,halfoped).month 	0 0 0 $sinfo(b,halfoped).week 	0 0 0 $sinfo(b,halfoped).day 	0 0 0 $sinfo(b,halfoped).p
    did -a been 2 0 0 0 0 Dehalfoped 	0 0 0 $sinfo(b,dehalfoped) 	0 0 0 $sinfo(b,dehalfoped).year 	0 0 0 $sinfo(b,dehalfoped).month 	0 0 0 $sinfo(b,dehalfoped).week 	0 0 0 $sinfo(b,dehalfoped).day 	0 0 0 $sinfo(b,dehalfoped).p
    did -a been 2 0 0 0 0 Voiced 	0 0 0 $sinfo(b,voiced) 	0 0 0 $sinfo(b,voiced).year 	0 0 0 $sinfo(b,voiced).month 	0 0 0 $sinfo(b,voiced).week 	0 0 0 $sinfo(b,voiced).day 	0 0 0 $sinfo(b,voiced).p
    did -a been 2 0 0 0 0 Devoiced 	0 0 0 $sinfo(b,devoiced) 	0 0 0 $sinfo(b,devoiced).year 	0 0 0 $sinfo(b,devoiced).month 	0 0 0 $sinfo(b,devoiced).week 	0 0 0 $sinfo(b,devoiced).day 	0 0 0 $sinfo(b,devoiced).p
    did -a been 2 0 0 0 0 Kicked 	0 0 0 $sinfo(b,kicked) 	0 0 0 $sinfo(b,kicked).year 	0 0 0 $sinfo(b,kicked).month 	0 0 0 $sinfo(b,kicked).week 	0 0 0 $sinfo(b,kicked).day 	0 0 0 $sinfo(b,kicked).p
    did -a been 2 0 0 0 0 Banned 	0 0 0 $sinfo(b,banned) 	0 0 0 $sinfo(b,banned).year 	0 0 0 $sinfo(b,banned).month 	0 0 0 $sinfo(b,banned).week 	0 0 0 $sinfo(b,banned).day 	0 0 0 $sinfo(b,banned).p
    did -a been 2 0 0 0 0
    did -a been 2 0 0 0 0 Total 	0 0 0 $sinfo(b,total) 	0 0 0 $sinfo(b,total).year 	0 0 0 $sinfo(b,total).month 	0 0 0 $sinfo(b,total).week 	0 0 0 $sinfo(b,total).day 	0 0 0 $sinfo(b,total).p
    did -a been 1 Since: $hg(been.date)
  }
  elseif ($1 == -h) {
    did -r have 2
    did -a have 2 0 0 0 0 Oped 	0 0 0 $sinfo(h,oped) 	0 0 0 $sinfo(h,oped).year 	0 0 0 $sinfo(h,oped).month 	0 0 0 $sinfo(h,oped).week 	0 0 0 $sinfo(h,oped).day 	0 0 0 $sinfo(h,oped).p
    did -a have 2 0 0 0 0 Deoped 	0 0 0 $sinfo(h,deoped) 	0 0 0 $sinfo(h,deoped).year 	0 0 0 $sinfo(h,deoped).month 	0 0 0 $sinfo(h,deoped).week 	0 0 0 $sinfo(h,deoped).day 	0 0 0 $sinfo(h,deoped).p
    did -a have 2 0 0 0 0 Halfoped 	0 0 0 $sinfo(h,halfoped) 	0 0 0 $sinfo(h,halfoped).year 	0 0 0 $sinfo(h,halfoped).month 	0 0 0 $sinfo(h,halfoped).week 	0 0 0 $sinfo(h,halfoped).day 	0 0 0 $sinfo(h,halfoped).p
    did -a have 2 0 0 0 0 Dehalfoped 	0 0 0 $sinfo(h,dehalfoped) 	0 0 0 $sinfo(h,dehalfoped).year 	0 0 0 $sinfo(h,dehalfoped).month 	0 0 0 $sinfo(h,dehalfoped).week 	0 0 0 $sinfo(h,dehalfoped).day 	0 0 0 $sinfo(h,dehalfoped).p
    did -a have 2 0 0 0 0 Voiced 	0 0 0 $sinfo(h,voiced) 	0 0 0 $sinfo(h,voiced).year 	0 0 0 $sinfo(h,voiced).month 	0 0 0 $sinfo(h,voiced).week 	0 0 0 $sinfo(h,voiced).day 	0 0 0 $sinfo(h,voiced).p
    did -a have 2 0 0 0 0 Devoiced 	0 0 0 $sinfo(h,devoiced) 	0 0 0 $sinfo(h,devoiced).year 	0 0 0 $sinfo(h,devoiced).month 	0 0 0 $sinfo(h,devoiced).week 	0 0 0 $sinfo(h,devoiced).day 	0 0 0 $sinfo(h,devoiced).p
    did -a have 2 0 0 0 0 Kicked 	0 0 0 $sinfo(h,kicked) 	0 0 0 $sinfo(h,kicked).year 	0 0 0 $sinfo(h,kicked).month 	0 0 0 $sinfo(h,kicked).week 	0 0 0 $sinfo(h,kicked).day 	0 0 0 $sinfo(h,kicked).p
    did -a have 2 0 0 0 0 Banned 	0 0 0 $sinfo(h,banned) 	0 0 0 $sinfo(h,banned).year 	0 0 0 $sinfo(h,banned).month 	0 0 0 $sinfo(h,banned).week 	0 0 0 $sinfo(h,banned).day 	0 0 0 $sinfo(h,banned).p
    did -a have 2 0 0 0 0 Changed Nick 	0 0 0 $sinfo(h,nick) 	0 0 0 $sinfo(h,nick).year 	0 0 0 $sinfo(h,nick).month 	0 0 0 $sinfo(h,nick).week 	0 0 0 $sinfo(h,nick).day 	0 0 0 $sinfo(h,nick).p
    did -a have 2 0 0 0 0 Set Topic 	0 0 0 $sinfo(h,topic) 	0 0 0 $sinfo(h,topic).year 	0 0 0 $sinfo(h,topic).month 	0 0 0 $sinfo(h,topic).week 	0 0 0 $sinfo(h,topic).day 	0 0 0 $sinfo(h,topic).p
    did -a have 2 0 0 0 0 Quit Server 	0 0 0 $sinfo(h,quit) 	0 0 0 $sinfo(h,quit).year 	0 0 0 $sinfo(h,quit).month 	0 0 0 $sinfo(h,quit).week 	0 0 0 $sinfo(h,quit).day 	0 0 0 $sinfo(h,quit).p
    did -a have 2 0 0 0 0 Joined Chan 	0 0 0 $sinfo(h,joined) 	0 0 0 $sinfo(h,joined).year 	0 0 0 $sinfo(h,joined).month 	0 0 0 $sinfo(h,joined).week 	0 0 0 $sinfo(h,joined).day 	0 0 0 $sinfo(h,joined).p
    did -a have 2 0 0 0 0 Parted Chan 	0 0 0 $sinfo(h,parted) 	0 0 0 $sinfo(h,parted).year 	0 0 0 $sinfo(h,parted).month 	0 0 0 $sinfo(h,parted).week 	0 0 0 $sinfo(h,parted).day 	0 0 0 $sinfo(h,parted).p
    did -a have 2 0 0 0 0 Queries 	0 0 0 $sinfo(h,query) 	0 0 0 $sinfo(h,query).year 	0 0 0 $sinfo(h,query).month 	0 0 0 $sinfo(h,query).week 	0 0 0 $sinfo(h,query).day 	0 0 0 $sinfo(h,query).p
    did -a have 2 0 0 0 0 Connected 	0 0 0 $sinfo(h,connected) 	0 0 0 $sinfo(h,connected).year 	0 0 0 $sinfo(h,connected).month 	0 0 0 $sinfo(h,connected).week 	0 0 0 $sinfo(h,connected).day 	0 0 0 $sinfo(h,connected).p
    did -a have 2 0 0 0 0
    did -a have 2 0 0 0 0 Total 	0 0 0 $sinfo(h,total) 	0 0 0 $sinfo(h,total).year 	0 0 0 $sinfo(h,total).month 	0 0 0 $sinfo(h,total).week 	0 0 0 $sinfo(h,total).day 	0 0 0 $sinfo(h,total).p
    did -a have 1 Since: $hg(have.date)
  }
  elseif ($1 == -s) {
    did -r seen 2
    did -a seen 2 0 0 0 0 Oped 	0 0 0 $sinfo(s,oped) 	0 0 0 $sinfo(s,oped).year 	0 0 0 $sinfo(s,oped).month 	0 0 0 $sinfo(s,oped).week 	0 0 0 $sinfo(s,oped).day 	0 0 0 $sinfo(s,oped).p
    did -a seen 2 0 0 0 0 Deoped 	0 0 0 $sinfo(s,deoped) 	0 0 0 $sinfo(s,deoped).year 	0 0 0 $sinfo(s,deoped).month 	0 0 0 $sinfo(s,deoped).week 	0 0 0 $sinfo(s,deoped).day 	0 0 0 $sinfo(s,deoped).p
    did -a seen 2 0 0 0 0 Halfoped 	0 0 0 $sinfo(s,halfoped) 	0 0 0 $sinfo(s,halfoped).year 	0 0 0 $sinfo(s,halfoped).month 	0 0 0 $sinfo(s,halfoped).week 	0 0 0 $sinfo(s,halfoped).day 	0 0 0 $sinfo(s,halfoped).p
    did -a seen 2 0 0 0 0 Dehalfoped 	0 0 0 $sinfo(s,dehalfoped) 	0 0 0 $sinfo(s,dehalfoped).year 	0 0 0 $sinfo(s,dehalfoped).month 	0 0 0 $sinfo(s,dehalfoped).week 	0 0 0 $sinfo(s,dehalfoped).day 	0 0 0 $sinfo(b,dehalfoped).p
    did -a seen 2 0 0 0 0 Voiced 	0 0 0 $sinfo(s,voiced) 	0 0 0 $sinfo(s,voiced).year 	0 0 0 $sinfo(s,voiced).month 	0 0 0 $sinfo(s,voiced).week 	0 0 0 $sinfo(s,voiced).day 	0 0 0 $sinfo(s,voiced).p
    did -a seen 2 0 0 0 0 Devoiced 	0 0 0 $sinfo(s,devoiced) 	0 0 0 $sinfo(s,devoiced).year 	0 0 0 $sinfo(s,devoiced).month 	0 0 0 $sinfo(s,devoiced).week 	0 0 0 $sinfo(s,devoiced).day 	0 0 0 $sinfo(s,devoiced).p
    did -a seen 2 0 0 0 0 Kicked 	0 0 0 $sinfo(s,kicked) 	0 0 0 $sinfo(s,kicked).year 	0 0 0 $sinfo(s,kicked).month 	0 0 0 $sinfo(s,kicked).week 	0 0 0 $sinfo(s,kicked).day 	0 0 0 $sinfo(s,kicked).p
    did -a seen 2 0 0 0 0 Banned 	0 0 0 $sinfo(s,banned) 	0 0 0 $sinfo(s,banned).year 	0 0 0 $sinfo(s,banned).month 	0 0 0 $sinfo(s,banned).week 	0 0 0 $sinfo(s,banned).day 	0 0 0 $sinfo(s,banned).p
    did -a seen 2 1 1 0 0 Nick Change 	0 0 0 $sinfo(s,nick) 	0 0 0 $sinfo(s,nick).year 	0 0 0 $sinfo(s,nick).month 	0 0 0 $sinfo(s,nick).week 	0 0 0 $sinfo(s,nick).day 	0 0 0 $sinfo(s,nick).p
    did -a seen 2 1 1 0 0 Topic Change 	0 0 0 $sinfo(s,topic) 	0 0 0 $sinfo(s,topic).year 	0 0 0 $sinfo(s,topic).month 	0 0 0 $sinfo(s,topic).week 	0 0 0 $sinfo(s,topic).day 	0 0 0 $sinfo(s,topic).p
    did -a seen 2 1 1 0 0 Server Quit 	0 0 0 $sinfo(s,quit) 	0 0 0 $sinfo(s,quit).year 	0 0 0 $sinfo(s,quit).month 	0 0 0 $sinfo(s,quit).week 	0 0 0 $sinfo(s,quit).day 	0 0 0 $sinfo(s,quit).p
    did -a seen 2 1 1 0 0 Chan Join 	0 0 0 $sinfo(s,joined) 	0 0 0 $sinfo(s,joined).year 	0 0 0 $sinfo(s,joined).month 	0 0 0 $sinfo(s,joined).week 	0 0 0 $sinfo(s,joined).day 	0 0 0 $sinfo(s,joined).p
    did -a seen 2 1 1 0 0 Chan Part 	0 0 0 $sinfo(s,parted) 	0 0 0 $sinfo(s,parted).year 	0 0 0 $sinfo(s,parted).month 	0 0 0 $sinfo(s,parted).week 	0 0 0 $sinfo(s,parted).day 	0 0 0 $sinfo(s,parted).p
    did -a seen 2 0 0 0 0
    did -a seen 2 0 0 0 0 Total 	0 0 0 $sinfo(s,total) 	0 0 0 $sinfo(s,total).year 	0 0 0 $sinfo(s,total).month 	0 0 0 $sinfo(s,total).week 	0 0 0 $sinfo(s,total).day 	0 0 0 $sinfo(s,total).p
    did -a seen 1 Since: $hg(seen.date)
  }
  else {
    did -r stats2 52
    did -ra stats2 32 Stats since: $hg(firstdate)
    did -ra stats2 34 Files sent: $hg(dccsend)
    did -ra stats2 35 Size: $bytes($hg(dccsendsize),3).suf
    did -ra stats2 36 Filed recieved: $hg(dccget)
    did -ra stats2 37 Size: $bytes($hg(dccgetsize),3).suf
    did -ra stats2 40 $time
    did -ra stats2 41 ( $+ $time(z) $+ GMT)
    did -ra stats2 43 $day $mdate
    did -ra stats2 45 $totalonline
    did -ra stats2 47 $uptime(mirc,1)
    did -ra stats2 49 $uptime(system,1)

    did -a stats2 52 0 0 0 0 Misc:
    did -a stats2 52 0 0 0 0 mIRC started 	0 0 0 $sinfo(e,started) 	0 0 0 $sinfo(e,started).year 	0 0 0 $sinfo(e,started).month 	0 0 0 $sinfo(e,started).week 	0 0 0 $sinfo(e,started).day 	0 0 0 $sinfo(e,started).p
    did -a stats2 52 0 0 0 0 Viewed stats 	0 0 0 $sinfo(e,viewed) 	0 0 0 $sinfo(e,viewed).year 	0 0 0 $sinfo(e,viewed).month 	0 0 0 $sinfo(e,viewed).week 	0 0 0 $sinfo(e,viewed).day 	0 0 0 $sinfo(e,viewed).p
    did -a stats2 52 0 0 0 0 Echo's 	0 0 0 $sinfo(e,echo) 	0 0 0 $sinfo(e,echo).year 	0 0 0 $sinfo(e,echo).month 	0 0 0 $sinfo(e,echo).week 	0 0 0 $sinfo(e,echo).day 	0 0 0 $sinfo(e,echo).p
    did -a stats2 52 0 0 0 0 CTCP replies 	0 0 0 $sinfo(e,ctcps) 	0 0 0 $sinfo(e,ctcps).year 	0 0 0 $sinfo(e,ctcps).month 	0 0 0 $sinfo(e,ctcps).week 	0 0 0 $sinfo(e,ctcps).day 	0 0 0 $sinfo(e,ctcps).p
    did -a stats2 52 0 0 0 0 Webpage hits 	0 0 0 $sinfo(e,pagehits) 	0 0 0 $sinfo(e,pagehits).year 	0 0 0 $sinfo(e,pagehits).month 	0 0 0 $sinfo(e,pagehits).week 	0 0 0 $sinfo(e,pagehits).day 	0 0 0 $sinfo(e,pagehits).p
    did -a stats2 52 0 0 0 0
    did -a stats2 52 0 0 0 0 Text Stuff:
    did -a stats2 52 0 0 0 0 Lines 	0 0 0 $sinfo(e,lines) 	0 0 0 $sinfo(e,lines).year 	0 0 0 $sinfo(e,lines).month 	0 0 0 $sinfo(e,lines).week 	0 0 0 $sinfo(e,lines).day 	0 0 0 $sinfo(e,lines).p
    did -a stats2 52 0 0 0 0 Words 	0 0 0 $sinfo(e,words) 	0 0 0 $sinfo(e,words).year 	0 0 0 $sinfo(e,words).month 	0 0 0 $sinfo(e,words).week 	0 0 0 $sinfo(e,words).day 	0 0 0 $sinfo(e,words).p
    did -a stats2 52 0 0 0 0 Characters 	0 0 0 $sinfo(e,chars) 	0 0 0 $sinfo(e,chars).year 	0 0 0 $sinfo(e,chars).month 	0 0 0 $sinfo(e,words).week 	0 0 0 $sinfo(e,chars).day 	0 0 0 $sinfo(e,chars).p
    did -a stats2 52 0 0 0 0 Punctuations 	0 0 0 $sinfo(e,puncs) 	0 0 0 $sinfo(e,puncs).year 	0 0 0 $sinfo(e,puncs).month 	0 0 0 $sinfo(e,puncs).week 	0 0 0 $sinfo(e,puncs).day 	0 0 0 $sinfo(e,puncs).p
    did -a stats2 52 0 0 0 0 Smilies 	0 0 0 $sinfo(e,smilies) 	0 0 0 $sinfo(e,smilies).year 	0 0 0 $sinfo(e,smilies).month 	0 0 0 $sinfo(e,smilies).week 	0 0 0 $sinfo(e,smilies).day 	0 0 0 $sinfo(e,smilies).p
    if ($hfind(stats,custom.*,0,w)) {
      did -a stats2 52 0 0 0 0
      did -a stats2 52 0 0 0 0 Custom:
      var %c = 1
      while (%c <= $hfind(stats,custom.*,0,w)) {
        var %h = $hfind(stats,custom.*,%c,w)
        did -a stats2 52 0 0 0 0 $gettok(%h,2,46) 	0 0 0 $sinfo(e,%h) 	0 0 0 $sinfo(e,%h).year 	0 0 0 $sinfo(e,%h).month 	0 0 0 $sinfo(e,%h).week 	0 0 0 $sinfo(e,%h).day 	0 0 0 $sinfo(e,%h).p
        inc %c
      }
    }
    did -a stats2 52 0 0 0 0
    did -a stats2 52 0 0 0 0 Total 	0 0 0 $sinfo(e,total) 	0 0 0 $sinfo(e,total).year 	0 0 0 $sinfo(e,total).month 	0 0 0 $sinfo(e,total).week 	0 0 0 $sinfo(e,total).day 	0 0 0 $sinfo(e,total).p
  }
}

alias -l stats2 {
  if (!$dialog(stats2)) || (!$hg(autoupdate)) { .timerstats off }
  else {
    did -ra stats2 40 $time
    did -ra stats2 43 $day $mdate
    did -ra stats2 45 $totalonline
    did -ra stats2 47 $uptime(mirc,1)
    did -ra stats2 49 $uptime(system,1)
  }
}

alias -l stats.cputm { if ($regex(cputm,$moo(testing),/CPUID Processor Brand \(where suppored. blank otherwise\): \((.+)\)/i)) { return $replace($regml(cputm,1),(tm),�,(r),�,(c),�) } }

alias -l stats.cpu {
  did -ra stats2 63 $iif($sinfo(y,cpu),$ifmatch,n/a)
  did -ra stats2 65 $iif($sinfo(y,mhz),$ifmatch,n/a)
  did -ra stats2 67 $iif($sinfo(y,cache),$ifmatch,n/a)
  did -ra stats2 68 Load: $iif($sinfo(y,load),$ifmatch,n/a)
  did -a stats2 69 $iif($sinfo(y,load),$remove($ifmatch,%),0) 0 100
  did -ra stats2 75 $iif($sinfo(y,man),$ifmatch,n/a)

  did -ra stats2 71 $iif($sinfo(y,ram),$ifmatch,n/a)
  did -ra stats2 72 In use: $iif($sinfo(y,ramuse),$gettok($ifmatch,1,40),n/a)
  did -a stats2 73 $iif($sinfo(y,ramuse),$gettok($remove($ifmatch,%),1,40),0) 0 100
}
alias -l stats.cache {
  did -ra stats2 89 $iif($sinfo(y,cachesize),$ifmatch,n/a)
  did -ra stats2 91 $iif($sinfo(y,cacheassoc),$ifmatch,n/a)
  did -ra stats2 93 $iif($sinfo(y,cachelines),$ifmatch,n/a)
  did -ra stats2 95 $iif($sinfo(y,cachelinesize),$ifmatch,n/a)
  did -ra stats2 97 $iif($sinfo(y,cacheinstrsize),$ifmatch,n/a)
  did -ra stats2 99 $iif($sinfo(y,cacheinstrassoc),$ifmatch,n/a)
  did -ra stats2 101 $iif($sinfo(y,cacheinstrlines),$ifmatch,n/a)
  did -ra stats2 103 $iif($sinfo(y,cacheinstrlinesize),$ifmatch,n/a)
}
alias -l stats.os {
  did -ra stats2 78 $iif($sinfo(y,os),$ifmatch,n/a)
  did -ra stats2 80 $iif($sinfo(y,osver),$ifmatch,n/a)
  did -ra stats2 82 $iif($sinfo(y,osbuild),$ifmatch,n/a)
  did -ra stats2 84 $iif($sinfo(y,osinst),$ifmatch,n/a)
  did -ra stats2 86 $iif($sinfo(y,osup),$ifmatch,n/a)
}
alias -l stats.hdd {
  did -r stats2 112
  var %l = 67,%tfs = 0,%ts = 0,%i = 2,%rtfs = 0,%rts = 0
  while (%l <= 90) {
    if ($disk($chr(%l))) {
      if ($disk($chr(%l)).type == fixed) || ($disk($chr(%l)).type == cdrom) || ($disk($chr(%l)).type == removable) {
        var %f = $disk($chr(%l)).free,%s = $disk($chr(%l)).size
        inc %tfs %f
        inc %ts %s
        if ($disk($chr(%l)).type == fixed) { var %ico = 1 }
        if ($disk($chr(%l)).type == cdrom) { var %ico = 2 }
        if ($disk($chr(%l)).type == removable) { var %ico = 3 }
        if (0 %ico 0 0 $+($chr(%l),: ( $+ $iif($disk($chr(%l)).label,$disk($chr(%l)).label,No label) $+ ), 	+ 0 0 0 $bytes(%s,3).suf, 	+ 0 0 0 $bytes($calc(%s - %f),3).suf, 	+ 0 0 0 $bytes(%f,3).suf,	+ 0 0 0 $round($calc((%f / %s)*100),1),%) != $did(stats2,112,%i)) {
          did -a stats2 112 $ifmatch
          var %dn = 1
        }
        inc %i
      }
      elseif ($disk($chr(%l)).type == remote) {
        var %rf = $disk($chr(%l)).free,%rs = $disk($chr(%l)).size
        inc %rtfs %rf
        inc %rts %rs
        if (0 3 0 0 $+($chr(%l),: ( $+ $disk($chr(%l)).unc $+ ), 	+ 0 0 0 $bytes(%rs,3).suf, 	+ 0 0 0 $bytes($calc(%rs - %rf),3).suf, 	+ 0 0 0 $bytes(%rf,3).suf,	+ 0 0 0 $round($calc((%rf / %rs)*100),1),%) != $did(stats2,112,%i)) {
          did -a stats2 112 $ifmatch
          var %dn = 1,%rdn = 1
        }
        inc %i
      }
    }
    inc %l
  }
  if (%dn) {
    did -a stats2 112 0 0 0 0
    if (%rdn) {
      did -a stats2 112 0 1 0 0 0 Local total	0 0 0 $+($bytes(%ts,3).suf,	0 0 0 $bytes(%tfs,3).suf,	0 0 0 $round($calc((%tfs / %ts)*100),1),%)
      did -a stats2 112 0 1 0 0 0 Mapped total	0 0 0 $+($bytes(%rts,3).suf,	0 0 0 $bytes(%rtfs,3).suf,	0 0 0 $round($calc((%rtfs / %rts)*100),1),%)
      did -a stats2 112 0 0 0 0 0
    }
    did -a stats2 112 0 1 0 0 Total	0 0 0 $+($bytes($calc(%ts + %rts),3).suf, 	+ 0 0 0 $bytes($calc((%ts + %rts) - (%rtfs + %tfs)),3).suf, 	0 0 0 $bytes($calc(%rtfs + %tfs),3).suf,	0 0 0 $round($calc(((%rtfs + %tfs)/(%ts + %rts))*100),1),%)
  }
}

alias -l stats.con {
  did -ra stats2 124 $iif($sinfo(y,con),$ifmatch,n/a)
  did -ra stats2 126 $iif($sinfo(y,conspeed),$ifmatch,n/a)
  did -ra stats2 128 $iif($sinfo(y,condown),$ifmatch,n/a)
  did -ra stats2 130 $iif($sinfo(y,conup),$ifmatch,n/a)
  did -ra stats2 132 $iif($sinfo(y,conactive),$ifmatch,n/a)

  did -ra stats2 135 $iif($sinfo(y,eth),$ifmatch,n/a)
  did -ra stats2 137 $iif($sinfo(y,ethspeed),$ifmatch,n/a)
  did -ra stats2 139 $iif($sinfo(y,ethget),$ifmatch,n/a)
  did -ra stats2 141 $iif($sinfo(y,ethsent),$ifmatch,n/a)
  did -ra stats2 143 $ip

  did -ra stats2 156 $iif($sinfo(y,upstream),$ifmatch,n/a)
  did -ra stats2 157 $iif($sinfo(y,downstream),$ifmatch,n/a)
}
alias -l stats.gfx {
  did -ra stats2 115 $iif($sinfo(y,gfx),$ifmatch,n/a)
  did -ra stats2 117 $iif($sinfo(y,gfxres),$ifmatch,n/a)
  did -ra stats2 119 $iif($sinfo(y,gfxref),$ifmatch,n/a)
  did -ra stats2 121 $iif($sinfo(y,gfxdepth),$ifmatch,n/a)
}
alias -l stats.misc {
  did -r stats2 145
  stats.miscadd is3dNow 3DNow! support
  stats.miscadd is3dNowExt Extended 3DNow! support
  stats.miscadd isMMX MMX support
  stats.miscadd isMMXExt MMX Extensions
  stats.miscadd isCPUID Supports CPUID instruction
  stats.miscadd isFPU FPU present
  stats.miscadd isVME Virtual Mode Extensions
  stats.miscadd isDEBUG Debug extensions
  stats.miscadd isPSE Page Size Extensions
  stats.miscadd isTSC Time Stamp Counter
  stats.miscadd isMSR Model Specific Registers
  stats.miscadd isPAE Page Address Extensions
  stats.miscadd isMCE Machine Check Extensions
  stats.miscadd isCMPXCHG8 CMPXCHG8 instruction
  stats.miscadd isAPIC APIC
  stats.miscadd isSYSENTER SYSENTER/SYSEXIT instruction
  stats.miscadd isMTRR Memory Type Range Registers instruction
  stats.miscadd isGPE Global Paging Extensions
  stats.miscadd isMCA Machine Check Architecture
  stats.miscadd isCMOV CMOV instruction
  stats.miscadd isPAT Page Attribue Table
  stats.miscadd isPSE36 PSE36 (Page Size Extensions)
  stats.miscadd isFXSAVE FXSAVE/FXRSTOR instruction
  stats.miscadd isSSE SSE
  stats.miscadd isSSEFP SSE FP support
}
alias -l stats.miscadd { did -a stats2 145 1 1 0 0  $2- 	+ 0 0 0 $iif($procinfo($1) == $true,Yes,No) }

;#### $mirc2html by Sephiroth #####

alias -l mirc2html {
  var %t = $replace($1-,<,&#060;,>,&#062;),%li,%re,%x,%y = 0
  if ( isin %t) {
    %t = %t $+
    %x = $pos(%t,,0)
    while (%y < %x) {
      inc %y
      %li = $.colrep($.controlrep($gettok(%t,1,15)))
      %re = $gettok(%t,2-,15)
      %t = %li $+ </b></u></font> $+ %re
    }
  }
  else { %t = $.colrep($.controlrep(%t)) }
  return %t
}
alias -l .rgb {
  if ($1 isnum 0-15) {
    tokenize 44 $rgb($color($1)) $+ $iif($2 isnum 0-15,$chr(44) $+ $rgb($color($2)))
    var %col = $+($chr(35),$base($1,10,16,2),$base($2,10,16,2),$base($3,10,16,2)),%bgcol = $+($chr(35),$base($4,10,16,2),$base($5,10,16,2),$base($6,10,16,2))
    return $iif($prop == html,<font color= $+ %col $+ $iif($4 || $4 isnum 0,$chr(32) $+ bgcolor= $+ %bgcol) $+ >,%col $iif($4 || $4 isnum 0,%bgcol))
  }
  else { return }
}
alias -l .colrep {
  var %t = $replace($1-,$chr(32),�),%s = ,%p,%cp,%atos,%l,%left,%right,%color = $false,%x,%y,%z
  %p = 0
  %atos = $pos(%t,%s,0)
  while (%p < %atos) {
    inc %p
    %komma = $false
    %l = $len(%t)
    %cp = $pos(%t,%s,%p)
    %left = $left(%t,$calc(%cp -1))
    %right = $right(%t,$calc(%l - %cp +1))
    %a = ""
    %b = ""
    if ($mid(%right,2,1) isnum) {
      %color = $true
      %x = $mid(%right,1,6)
      %y = 1
      while (%y < 6) {
        inc %y
        %z = $mid(%x,%y,1)
        if (%z isnum 0-9) {
          if ((!%komma) && ($len(%a) < 2)) %a = %a $+ %z
          elseif ((%komma) && ($len(%b) < 2)) %b = %b $+ %z
        }
        elseif (%z == $chr(44)) { %komma = $true }
      }
    }
    else {
      %color = $false
    }
    %t = %left $+ $iif(%color,$.rgb(%a,%b).html,</font>) $+ %right
  }
  %t = %t
  return $strip($replace(%t,�,$chr(32)),c)
}
alias -l .controlrep {
  var %t = $replace($1-,$chr(32),�),%tok = �<b>�</b>��<u>�</u>�� $+ $.rgb($color(background),$color(normal)).html $+ �</font>,%r = $numtok(%tok,185),%a,%b,%c,%s,%p,%cp,%atos,%l,%left,%right,%op
  while (%r) {
    %c = $gettok(%tok,%r,185)
    %s = $gettok(%c,1,191)
    %a = $gettok(%c,2,191)
    %b = $gettok(%c,3,191)
    %p = 0
    %atos = $pos(%t,%s,0)
    while (%p < %atos) {
      inc %p
      %l = $len(%t)
      %cp = $pos(%t,%s,%p)
      %left = $left(%t,$calc(%cp -1))
      %right = $right(%t,$calc(%l - %cp +1))
      %t = %left $+ $iif(2 // %p,%b,%a) $+ %right
    }
    %t = $remove(%t,%s)
    dec %r
  }
  return $replace(%t,�,$chr(32),,</b></u></font>)
}
;###########

;################ echo aliases ################

alias -l servecho {
  var %c = 1
  while (%c <= $chan(0)) {
    if ($hg(echo.chan) == all) { msg $chan(%c) $1- }
    elseif ($hg(echo.chan) == only) && ($chan(%c) isin $hg(echo.chan.only)) { msg $chan(%c) $1- }
    elseif ($hg(echo.chan) == not) && ($chan(%c) !isin $hg(echo.chan.not)) { msg $chan(%c) $1- }
    inc %c
  }
  var %q = 1
  while (%q <= $query(0)) {
    if ($hg(echo.chan) == all) { msg $query(%q) $1- }
    elseif ($hg(echo.chan) == only) && ($query(%q) isin $hg(echo.chan.only)) { msg $query(%q) $1- }
    elseif ($hg(echo.chan) == not) && ($query(%q) !isin $hg(echo.chan.not)) { msg $query(%q) $1- }
    inc %q
  }
}

alias -l stats.echo {

  if ($1 == servers) {
    var %o = $activecid
    var %e = $ptext1(Server info) [Server] [Joined Channels] [Open Queries]
    var %s = 1
    while (%s <= $scon(0)) {
      scon %s
      var %c = 1
      while (%c <= $chan(0)) {
        set %stats.chan %stats.chan $+ $iif(%stats.chan,$chr(44)) $chan(%c)
        inc %c
      }
      var %q = 1
      while (%q <= $query(0)) {
        set %stats.query %stats.query $+ $iif(%stats.query,$chr(44)) $query(%q)
        inc %q
      }
      var %e = %e 	 $ptext($server $nbr($iif($network,$ifmatch))) $ptext(%stats.chan) $ptext(%stats.query)
      unset %stats.chan %stats.query
      inc %s
    }
    scid %o
  }
  elseif ($1 == power) {
    var %1 = $scon(0),%2 = 1,%3 = 0,%4 = 0,%5 = 0,%6 = 0,%7 = 0
    while (%2 <= %1) {
      scon %2
      set %3 $calc(%3 + $chan(0))
      var %8 = $chan(0),%9 = 1
      while (%9 <= %8) {
        if ($me isop $chan(%9)) { inc %4 1 | set %7 $calc(%7 + $nick($chan(%9),0,a,o)) }
        if ($me ishop $chan(%9)) { inc %5 1 | set %7 $calc(%7 + $nick($chan(%9),0,a,oh)) }
        if ($me isvoice $chan(%9)) { inc %6 1 | set %7 $calc(%7 + $nick($chan(%9),0,r)) }
        inc %9 1
      }
      inc %2 1
    }
    var %e = $ptext1(Show ur Powah) I'm on $ptext(%3) channels ( $+ %1 servers), I have ops in $ptext(%4) $+, halfops in $ptext(%5) $+ , voice in $ptext(%6) and I have power over $ptext(%7) peons!
  }
  elseif ($1 == time) { var %e = $ptext1(Time) Time on this system: $ptext($day $mdate $+ $chr(44) $time) }
  elseif ($1 == uptime) { var %e = $ptext1(Uptime) System uptime: $ptext($uptime(system,1)) $+ , mIRC uptime: $ptext($uptime(mirc,1)) $+ , been online on this server for: $ptext($uptime(server,1)) $+ , total online time: $ptext($totalonline (since $hg(firstdate) $+ )) }
  elseif ($1 == events) { var %e = $ptext1(Events) Since $hg(firstdate) I have started up mIRC $ptext($hg(started)) times, viewed my stats $ptext($hg(viewed)) times, echo'd my stats $ptext($hg(echo.total)) times, replied to $ptext($hg(ctcps)) ctcp requests, had $ptext($hg(pagehits)) hits on my webpage, sent $ptext($hg(dccsend)) files with a total of $ptext($bytes($hg(dccsendsize),3).suf) and recieved $ptext($hg(dccget)) files with a total of $ptext($bytes($hg(dccgetsize),3).suf) }
  elseif ($1 == texts) { var %e = $ptext1(Text Stuff) Since $hg(firstdate) I have typed: $ptext($hg(lines)) lines, $ptext($hg(words)) words, $ptext($hg(chars)) characters, $ptext($hg(puncs)) punctuations and $ptext($hg(smilies)) smilies }
  elseif ($1 == words) {
    if ($hfind(stats,custom.*,0,w)) {
      var %i = 1
      while (%i <= $hfind(stats,custom.*,0,w)) {
        var %h = $hfind(stats,custom.*,%i,w)
        var %w = %w $+(',$gettok(%h,2,46),') $ptext($hg(%h)) times $+ $iif((!%w) && ($hfind(stats,custom.*,0,w) != 1),$chr(44))
        inc %i
      }
      var %e = $ptext1(Own words) Since $hg(firstdate) I've typed the word %w
    }
    else { echo -a 10(4!10) Currently, you do not keep track of any words. }
  }
  elseif ($1 == been) { var %e = $ptext1(Been Stats) Since $hg(firstdate) times I've been: oped: $ptext($hg(been.oped)) $+ , deoped: $ptext($hg(been.deoped)) $+ , halfoped: $ptext($hg(been.halfoped)) $+ , dehalfoped: $ptext($hg(been.dehalfoped)) $+ , voiced: $ptext($hg(been.voiced)) $+ , devoiced: $ptext($hg(been.devoiced)) $+ , kicked: $ptext($hg(been.kicked)) $+ , banned: $ptext($hg(been.banned)) }
  elseif ($1 == have) { var %e = $ptext1(Have Stats) Since $hg(have.date) times I have: oped: $ptext($hg(have.oped)) $+ , deoped: $ptext($hg(have.deoped)) $+ , halfoped: $ptext($hg(have.halfoped)) $+ , dehalfoped: $ptext($hg(have.dehalfoped)) $+ , voiced: $ptext($hg(have.voiced)) $+ , devoiced: $ptext($hg(have.devoiced)) $+ , kicked: $ptext($hg(have.kicked)) $+ , banned: $ptext($hg(have.banned)) $+ , changed nick: $ptext($hg(have.nick)) $+ , set a topic: $ptext($hg(have.topic)) $+ , joined a channel: $ptext($hg(have.joined)) $+ , parted a channel: $ptext($hg(have.parted)) $+ , opened a query: $ptext($hg(have.query)) $+ , connected: $ptext($hg(have.connected)) $+ , quit a server: $ptext($hg(have.quit)) }
  elseif ($1 == seen) { var %e = $ptext1(Seen Stats) Since $hg(firstdate) times I've seen ppl being: oped: $ptext($hg(seen.oped)) $+ , deoped: $ptext($hg(seen.deoped)) $+ , halfoped: $ptext($hg(seen.halfoped)) $+ , dehalfoped: $ptext($hg(seen.dehalfoped)) $+ , voiced: $ptext($hg(seen.voiced)) $+ , devoiced: $ptext($hg(seen.devoiced)) $+ , kicked: $ptext($hg(seen.kicked)) $+ , banned: $ptext($hg(seen.banned)) $+ , nick change: $ptext($hg(seen.nick)) $+ , topic set: $ptext($hg(seen.topic)) $+ , channel join: $ptext($hg(seen.joined)) $+ , channel part: $ptext($hg(seen.parted)) $+ , server quit: $ptext($hg(seen.quit)) }
  elseif ($1 == cpu) { var %e = $ptext1(CPU info) Processor: $ptext($sinfo(y,cpu)) $+ , Manufacturer: $ptext($sinfo(y,man)) $+ , Megahertz: $ptext($sinfo(y,mhz)) $+ , Cache: $ptext($sinfo(y,cache)) $+ , Load: $ptext($sinfo(y,load)) }
  elseif ($1 == os) { var %e = $ptext1(OS info) Operating System: $ptext($sinfo(y,os)) $+ , Version: $ptext($sinfo(y,osver)) $+ , Build number: $ptext($sinfo(y,osbuild)) $+ , Installed for: $ptext($sinfo(y,osinst)) $+ , Uptime: $ptext($uptime(system,1)) }
  elseif ($1 == cache) { var %e = $ptext1(L1 Cache info) Size: $ptext($sinfo(y,cachesize)) $+ , Associativity: $ptext($sinfo(y,cacheassoc)) $+ , Lines: $ptext($sinfo(y,cachelines)) $+ , Line size: $ptext($sinfo(y,cachelinesize)) $+ , Instuction size: $ptext($sinfo(y,cacheinstrsize)) $+ , Instruction associativity: $ptext($sinfo(y,cacheinstrassoc)) $+ , Instruction lines: $ptext($sinfo(y,cacheinstrlines)) $+ , Instruction line size: $ptext($sinfo(y,cacheinstrlinesize)) }
  elseif ($1 == hdd) {
    var %l = 67,%tfs = 0,%ts = 0,%i = 2,%rtfs = 0,%rts = 0,%e = $ptext1(HDD info) [Drive] [Size] [Used] [Free] [% Free]
    while (%l <= 90) {
      if ($disk($chr(%l))) {
        if ($disk($chr(%l)).type == fixed) || ($disk($chr(%l)).type == cdrom) || ($disk($chr(%l)).type == removable) {
          var %f = $disk($chr(%l)).free,%s = $disk($chr(%l)).size
          inc %tfs %f
          inc %ts %s
          if ($disk($chr(%l)).type == fixed) { var %d = $ptext1(HD) }
          elseif ($disk($chr(%l)).type == cdrom) { var %d = $ptext1(CD) }
          elseif ($disk($chr(%l)).type == removable) { var %d = $ptext1(RM) }
          var %d = %d $chr(%l) $+ : $bytes(%s,3).suf || $bytes($calc(%s - %f),3).suf || $bytes(%f,3).suf || $round($calc((%f / %s)*100),1) $+ %
          var %dn = 1
          inc %i
        }
        elseif ($disk($chr(%l)).type == remote) {
          var %rf = $disk($chr(%l)).free,%rs = $disk($chr(%l)).size
          inc %rtfs %rf
          inc %rts %rs
          var %d = $ptext1(RE) $chr(%l) $+ : $nbr($disk($chr(%l)).unc) || $bytes(%rs,3).suf || $bytes($calc(%rs - %rf),3).suf || $bytes(%rf,3).suf || $round($calc((%rf / %rs)*100),1) $+ %
          var %dn = 1,%rdn = 1
          inc %i
        }
        var %e = %e 	 %d
      }
      inc %l
    }
    if (%dn) {
      var %e = %e 	 $ptext1(TO) Total: $bytes($calc(%ts + %rts),3).suf || $bytes($calc((%ts + %rts) - (%rtfs + %tfs)),3).suf || $bytes($calc(%rtfs + %tfs),3).suf || $round($calc(((%rtfs + %tfs)/(%ts + %rts))*100),1) $+ %
    }
    else { echo -a 10(4!10) No harddisk data available. }
  }
  elseif ($1 == gfx) { var %e = $ptext1(gfx info) gfx card: $ptext($sinfo(y,gfx)) $+ , resolution: $ptext($sinfo(y,gfxres)) $+ , refresh rate: $ptext($sinfo(y,gfxref)) $+ , depth: $ptext($sinfo(y,gfxdepth)) }
  elseif ($1 == con) { var %e = $ptext1(connection info) Connection: $ptext($sinfo(y,con)) $+ , Speed: $ptext($sinfo(y,conspeed)) $+ , Downloaded: $ptext($sinfo(y,condown)) $+ , Uploaded: $ptext($sinfo(y,conup)) $+ , Active for: $ptext($sinfo(y,conactive)) $+ , IP: $ptext($ip) }
  elseif ($1 == eth) { var %e = $ptext1(network info) Name: $ptext($sinfo(y,eth)) $+ , Speed: $ptext($sinfo(y,ethspeed)) $+ , Recieved: $ptext($sinfo(y,ethget)) $+ , Sent: $ptext($sinfo(y,ethsent)) $+ , IP: $ptext($ip) }
  elseif ($1 == misc) {
    var %e = $stats.miscecho(is3dNow,3DNow! support)
    var %e = %e $+ , $stats.miscecho(is3dNowExt,Extended 3DNow!)
    var %e = %e $+ , $stats.miscecho(isMMX,MMX)
    var %e = %e $+ , $stats.miscecho(isMMXExt,MMX Extensions)
    var %e = %e $+ , $stats.miscecho(isCPUID,Supports CPUID)
    var %e = %e $+ , $stats.miscecho(isFPU,FPU)
    var %e = %e $+ , $stats.miscecho(isVME,Virtual Mode Extensions)
    var %e = %e $+ , $stats.miscecho(isDEBUG,Debug extensions)
    var %e = %e $+ , $stats.miscecho(isPSE,Page Size Extensions)
    var %e = %e $+ , $stats.miscecho(isTSC,Time Stamp Counter)
    var %e = %e $+ , $stats.miscecho(isMSR,Model Specific Registers)
    var %e = %e $+ , $stats.miscecho(isPAE,Page Address Extensions)
    var %e = %e $+ , $stats.miscecho(isMCE,Machine Check Extensions)
    var %e = %e $+ , $stats.miscecho(isCMPXCHG8,CMPXCHG8)
    var %e = %e $+ , $stats.miscecho(isAPIC,APIC)
    var %e = %e $+ , $stats.miscecho(isSYSENTER,SYSENTER/SYSEXIT)
    var %e = %e $+ , $stats.miscecho(isMTRR,Memory Type Range Registers)
    var %e = %e $+ , $stats.miscecho(isGPE,Global Paging Extensions)
    var %e = %e $+ , $stats.miscecho(isMCA,Machine Check Architecture)
    var %e = %e $+ , $stats.miscecho(isCMOV,CMOV)
    var %e = %e $+ , $stats.miscecho(isPAT,Page Attribue Table)
    var %e = %e $+ , $stats.miscecho(isPSE36,PSE36 (Page Size Extensions))
    var %e = %e $+ , $stats.miscecho(isFXSAVE,FXSAVE/FXRSTOR)
    var %e = %e $+ , $stats.miscecho(isSSE,SSE)
    var %e = %e $+ , $stats.miscecho(isSSEFP,SSE FP)
  }
  elseif ($1 == custom) { var %e = $eval($hg(echo.custom),2) }

  if ($hg(color)) { return %e }
  else { return $strip(%e) }
}
alias -l stats.miscecho { return $2 $+ : $ptext($iif($procinfo($1) == $true,Yes,No)) }

;############### ctcp replies ###################

ctcp *:*:*:{
  if ($1 == STATS) {
    if (!$hg(ctcp)) { .ctcpreply $nick STATS: ctcpreplying has been disabled. | halt }
    if (!$2) { .ctcpreply $nick STATS: Use one of the following parameters: /ctcp $me STATS <power $chr(124) time $chr(124) uptime $chr(124) texts $chr(124) events $chr(124) words $chr(124) been $chr(124) have $chr(124) seen $chr(124) cpu $chr(124) os $chr(124) cache $chr(124) con $chr(124) eth $chr(124) gfx $chr(124) custom $chr(124) page> }
    elseif ($2 == power) {
      var %1 = $scon(0),%2 = 1,%3 = 0, %4 = 0, %5 = 0, %6 = 0, %7 = 0
      while (%2 <= %1) {
        scon %2
        set %3 $calc(%3 + $chan(0))
        var %8 $chan(0)
        var %9 1
        while (%9 <= %8) {
          if ($me isop $chan(%9)) { inc %4 1 | set %7 $calc(%7 + $nick($chan(%9),0,a,o)) }
          if ($me ishop $chan(%9)) { inc %5 1 | set %7 $calc(%7 + $nick($chan(%9),0,a,oh)) }
          if ($me isvoice $chan(%9)) { inc %6 1 | set %7 $calc(%7 + $nick($chan(%9),0,r)) }
          inc %9 1
        }
        inc %2 1
      }
      var %e = POWER: I'm on $ptext(%3) channels ( $+ %1 servers), I have ops in $ptext(%4) $+ , halfops in $ptext(%5) $+ , voice in $ptext(%6) and I have power over $ptext(%7) peons!
    }
    elseif ($2 == time) { var %e = TIME: Time on this system: $ptext($day $mdate $+ , $time) }
    elseif ($2 == uptime) { var %e = STATUS: Windows uptime: $ptext($uptime(system,1)) $+ , mIRC Uptime: $ptext($uptime(mirc,1)) $+ , Been online on this server for: $ptext($uptime(server,1)) $+ , Total online time: $ptext($totalonline (since $hg(firstdate) $+ )) }
    elseif ($2 == events) { var %e = EVENTS: Since $hg(firstdate) I have started up mIRC $ptext($hg(started)) times, had $ptext($hg(pagehits)) hits on my webpage, sent $ptext($hg(dccsend)) files with a total of $ptext($bytes($hg(dccsendsize),3).suf) and recieved $ptext($hg(dccget)) files with a total of $ptext($bytes($hg(dccgetsize),3).suf) }
    elseif ($2 == texts) { var %e = TEXT STUFF: Since $hg(firstdate) I have typed: $ptext($hg(lines)) lines, $ptext($hg(words)) words, $ptext($hg(chars)) characters, $ptext($hg(puncs)) punctuations and $ptext($hg(smilies)) smilies. }
    elseif ($2 == words) {
      if ($hfind(stats,custom.*,0,w)) {
        var %i = 1
        while (%i <= $hfind(stats,custom.*,0,w)) {
          var %h = $hfind(stats,custom.*,%i,w)
          var %w = %w $+(',$gettok(%h,2,46),') $ptext($hg(%h)) times $+ $iif((!%w) && ($hfind(stats,custom.*,0,w) != 1),$chr(44))
          inc %i
        }
        var %e = OWN WORDS: Since $hg(firstdate) I've recoded I typed the word %w
      }
      else { var %e = STATS: Currently I am not keeping track of any words I'm typing. }
    }
    elseif ($2 == been) { var %e = BEEN STATS: Since $hg(been.date) times I've been: oped: $ptext($hg(been.oped)) $+ , deoped: $ptext($hg(been.deoped)) $+ , halfoped: $ptext($hg(been.halfoped)) $+ , dehalfoped: $ptext($hg(been.dehalfoped)) $+ , voiced: $ptext($hg(been.voiced)) $+ , devoiced: $ptext($hg(been.devoiced)) $+ , kicked: $ptext($hg(been.kicked)) $+ , banned: $ptext($hg(been.banned)) }
    elseif ($2 == have) { var %e = HAVE STATS: Since $hg(have.date) times I have: oped: $ptext($hg(have.oped)) $+ , deoped: $ptext($hg(have.deoped)) $+ , halfoped: $ptext($hg(have.halfoped)) $+ , dehalfoped: $ptext($hg(have.dehalfoped)) $+ , voiced: $ptext($hg(have.voiced)) $+ , devoiced: $ptext($hg(have.devoiced)) $+ , kicked: $ptext($hg(have.kicked)) $+ , banned: $ptext($hg(have.banned)) $+ , changed nick: $ptext($hg(have.nick)) $+ , set a topic: $ptext($hg(have.topic)) $+ , joined a channel: $ptext($hg(have.joined)) $+ , parted a channel: $ptext($hg(have.parted)) $+ , opened a query: $ptext($hg(have.query)) $+ , connected: $ptext($hg(have.connected)) $+ , quit a server: $ptext($hg(have.quit)) }
    elseif ($2 == seen) { var %e = SEEN STATS: Since $hg(seen.date) times I've seen ppl being: oped: $ptext($hg(seen.oped)) $+ , deoped: $ptext($hg(seen.deoped)) $+ , halfoped: $ptext($hg(seen.halfoped)) $+ , dehalfoped: $ptext($hg(seen.dehalfoped)) $+ , voiced: $ptext($hg(seen.voiced)) $+ , devoiced: $ptext($hg(seen.devoiced)) $+ , kicked: $ptext($hg(seen.kicked)) $+ , banned: $ptext($hg(seen.banned)) $+ , nick change: $ptext($hg(seen.nick)) $+ , topic set: $ptext($hg(seen.topic)) $+ , channel join: $ptext($hg(seen.joined)) $+ , channel part: $ptext($hg(seen.parted)) $+ , server quit: $ptext($hg(seen.quit)) }
    elseif ($2 == cpu) { var %e = CPU INFO: Processor: $ptext($sinfo(y,cpu)) $+ , Manufacturer: $ptext($sinfo(y,man)) $+ , Megahertz: $ptext($sinfo(y,mhz)) $+ , Cache: $ptext($sinfo(y,cache)) $+ , Load: $ptext($sinfo(y,load)) }
    elseif ($2 == os) { var %e = OS INFO: Operating System: $ptext($sinfo(y,os)) $+ , Version: $ptext($sinfo(y,osver)) $+ , Build number: $ptext($sinfo(y,osbuild)) $+ , Installed for: $ptext($sinfo(y,osinst)) $+ , Uptime: $ptext($uptime(system,1)) }
    elseif ($2 == cache) { var %e = CACHE INFO: Size: $ptext($sinfo(y,cachesize)) $+ , Associativity: $ptext($sinfo(y,cacheassoc)) $+ , Lines: $ptext($sinfo(y,cachelines)) $+ , Line size: $ptext($sinfo(y,cachelinesize)) $+ , Instuction size: $ptext($sinfo(y,cacheinstrsize)) $+ , Instruction associativity: $ptext($sinfo(y,cacheinstrassoc)) $+ , Instruction lines: $ptext($sinfo(y,cacheinstrlines)) $+ , Instruction line size: $ptext($sinfo(y,cacheinstrlinesize)) }
    elseif ($2 == con) { var %e = CONNECTION INFO: Connection: $ptext($sinfo(y,con)) $+ , Speed: $ptext($sinfo(y,conspeed)) $+ , Downloaded: $ptext($sinfo(y,condown)) $+ , Uploaded: $ptext($sinfo(y,conup)) $+ , Active for: $ptext($sinfo(y,conactive)) $+ , IP: $ptext($ip) }
    elseif ($2 == eth) { var %e = NETWORK INFO: Name: $ptext($sinfo(y,eth)) $+ , Speed: $ptext($sinfo(y,ethspeed)) $+ , Recieved: $ptext($sinfo(y,ethget)) $+ , Sent: $ptext($sinfo(y,ethsent)) }
    elseif ($2 == gfx) { var %e = GFX INFO: gfx card: $ptext($sinfo(y,gfx)) $+ , resolution: $ptext($sinfo(y,gfxres)) $+ , refresh rate: $ptext($sinfo(y,gfxref)) $+ , depth: $ptext($sinfo(y,gfxdepth)) }
    elseif ($2 == custom) { var %e = $eval($hg(echo.custom),2) }
    elseif ($2 == page) {
      if ($hg(webonline)) { var %e = PAGE: My webpage is at: $hg(webonline) }
      else { var %e = PAGE: My webpage is currently offline. }
    }
    if (%e) {
      if ($hg(colorctcp)) { .ctcpreply $nick %e }
      else { .ctcpreply $nick $strip(%e) }
      hi ctcps 1
      if ($dialog(stats2)) && ($hg(autoupdate)) { stats.update e 6 ctcps }
    }
  }
}

;################# configuration dialog ####################

dialog -l statsconf {
  title "mIRC Stats v4.61 - Configuration"
  size $position(config) 230 130
  option dbu

  list 1, 2 4 60 111, size
  button "ok", 2, 156 117 35 12, ok
  button "cancel", 3, 193 117 35 12, cancel

  tab "general", 4, 300 200 0 0
  tab "echoing", 5
  tab "data", 6
  tab "positioning", 7
  tab "weboptions", 8
  tab "personal", 9
  tab "contact", 10
  tab "about", 13
  tab "misc", 14
  tab "webpage", 15

  box "Custom Words", 38, 65 1 163 72, tab 4
  list 39, 70 10 154 49, tab 4 size
  button "add", 40, 70 60 20 10, tab 4
  button "reset", 41, 92 60 20 10, tab 4
  button "del", 42, 204 60 20 10, tab 4
  box "Menu's", 43, 65 76 163 39, tab 4
  check "Menubar", 44, 74 85 30 8, tab 4
  check "Status", 45, 74 94 30 8, tab 4
  check "Channel", 46, 130 85 30 8, tab 4
  check "Query", 47, 130 94 30 8, tab 4
  check "Nicklist", 48, 180 85 30 8, tab 4
  check "Show commands", 49, 74 104 60 8, tab 4

  box "Miscellaneous", 21, 65 1 163 72, tab 14
  check "Enable CTCP replying", 22, 74 10 70 8, tab 14
  check "Enable lag meter", 30, 150 10 50 8, tab 14
  check "Use grids in listviews", 23, 74 20 70 8, tab 14
  check "US format dates", 31, 150 20 50 8, tab 14
  check "Auto-update stats", 24, 74 50 70 8, tab 14
  check "Use classic server view", 32, 150 30 70 8, tab 14
  check "Dialogs on desktop", 28, 74 30 70 8, tab 14
  check "Dialogs always on top", 29, 74 40 70 8, tab 14
  check "Save stats every:", 25, 74 60 50 8, tab 14
  edit "", 26, 130 59 20 10, tab 14 center
  text "minutes", 27, 153 60 30 8, tab 14
  button "icons", 34, 150 41 25 10, tab 14
  button "color", 35, 180 41 25 10, tab 14
  text "", 36, 0 0 0 0, tab 14 hide
  box "When opening dialog initiate", 240, 65 76 163 39, tab 14
  check "Server info", 241, 74 85 45 8, tab 14
  check "Events", 242, 74 94 45 8, tab 14
  check "CPU info", 243, 74 103 45 8, tab 14
  check "L1 Cache info", 244, 130 85 45 8, tab 14
  check "OS info", 245, 130 94 45 8, tab 14
  check "HDD info", 246, 130 103 45 8, tab 14
  check "GFX info", 247, 180 85 45 8, tab 14
  check "Connection info", 248, 180 94 45 8, tab 14
  check "Misc info", 249, 180 103 45 8, tab 14

  box "Options", 51, 65 1 163 30, tab 5
  radio "Public", 52, 74 10 30 8, tab 5
  radio "Personal", 53, 120 10 30 8, tab 5
  check "Use color", 54, 74 19 40 8, tab 5
  check "Use ctcp color", 64, 120 19 50 8, tab 5
  box "Parentext", 55, 65 36 163 38, tab 5
  edit "", 56, 74 46 70 10, autohs tab 5
  button "", 57, 74 58 70 10, tab 5
  edit "", 58, 148 46 73 10, autohs tab 5
  button "", 59, 148 58 73 10, tab 5
  box "Custom line", 60, 65 74 163 41, tab 5
  edit "", 61, 74 85 148 10, autohs tab 5
  button "", 62, 74 97 148 10, tab 5

  box "Reset", 191, 65 1 163 65, tab 6
  text "Events:", 192, 74 12 20 8, tab 6
  edit "", 193, 110 11 70 10, tab 6 disable
  button "reset", 194, 185 11 20 10, tab 6
  text "Been:", 195, 74 24 20 8, tab 6
  edit "", 196, 110 23 70 10, tab 6 disable
  button "reset", 197, 185 23 20 10, tab 6
  text "Have:", 198, 74 35 20 8, tab 6
  edit "", 199, 110 34 70 10, tab 6 disable
  button "reset", 200, 185 34 20 10, tab 6
  text "Seen:", 201, 74 46 20 8, tab 6
  edit "", 202, 110 45 70 10, tab 6 disable
  button "reset", 203, 185 45 20 10, tab 6

  box "Stats", 207, 65 68 50 47, tab 6
  button "save", 208, 74 77 30 10, tab 6
  button "back-up", 209, 74 88 30 10, tab 6
  button "import", 210, 74 99 30 10, tab 6
  box "Update", 211, 121 68 107 47, tab 6
  button "check for updates", 212, 170 77 50 10, tab 6
  text "Current version:", 213, 126 90 40 8, tab 6
  edit "4.61 (13/06/2004)", 214, 170 89 50 10, tab 6 disable
  text "Latest version:", 215, 126 102 40 8, tab 6
  edit "", 216, 170 101 50 10, tab 6 disable
  button "download", 217, 170 77 50 10, tab 6 hide

  box "Co�rdinates", 78, 65 1 163 75, tab 7
  radio "Default", 71, 74 16 30 8, tab 7 group
  radio "Derive co�rds from last usage", 72, 74 27 80 8, tab 7
  radio "Specify", 73, 74 39 30 8, tab 7
  text "X:", 74, 90 49 8 8, tab 7
  edit "", 75, 100 48 30 10, tab 7
  text "Y:", 76, 90 61 8 8, tab 7
  edit "", 77, 100 60 30 10, tab 7
  box "Apply for", 180, 65 80 163 35, tab 7
  check "Stats dialog", 181, 74 90 40 8, tab 7
  check "Configuration dialog", 182, 74 100 60 8, tab 7
  check "Been dialog", 183, 135 90 40 8, tab 7
  check "Have dialog", 184, 135 100 40 8, tab 7
  check "Seen dialog", 185, 176 90 40 8, tab 7

  box "Webpage", 270, 65 1 163 114, tab 15
  text "Webpage:", 271, 74 11 40 8, tab 15
  combo 272, 110 10 110 10, drop tab 15
  text "", 284, 71 23 153 1, tab 15
  text "Name:", 273, 74 28 30 8, tab 15
  text "", 274, 110 28 110 8, tab 15
  text "Version:", 275, 74 38 30 8, tab 15
  text "", 276, 110 38 110 8, tab 15
  text "Author:", 277, 74 48 30 8, tab 15
  text "", 278, 110 48 110 8, tab 15
  text "E-mail:", 279, 74 58 30 8, tab 15
  link "", 280, 110 58 110 8, tab 15
  text "Website:", 281, 74 68 30 8, tab 15
  link "", 282, 110 68 110 8, tab 15
  edit "", 283, 74 81 146 30, tab 15 multi return vsbar read

  box "Display", 81, 65 1 163 55, tab 8
  text "Window title:", 82, 74 10 40 8, tab 8
  edit "", 83, 110 9 110 10, autohs tab 8
  text "Page title:", 84, 74 21 40 8, tab 8
  edit "", 85, 110 20 110 10, autohs tab 8
  text "Top pic url:", 86, 74 32 40 8, tab 8
  edit "", 87, 110 31 110 10, autohs tab 8
  text "Bottom pic url:", 88, 74 43 40 8, tab 8
  edit "", 89, 110 42 110 10, autohs tab 8
  box "Show", 90, 65 57 163 28, tab 8
  check "Time", 91, 74 65 40 8, tab 8
  check "Private chans", 92, 120 65 40 8, tab 8
  check "Secret chans", 93, 120 74 40 8, tab 8
  check "Counters", 94, 74 74 40 8, tab 8
  check "System Stats", 95, 170 65 40 8, tab 8
  check "Server info", 119, 170 74 40 8, tab 8
  box "Other options", 96, 65 87 163 28, tab 8
  check "Report connections to the page", 97, 74 95 100 8, tab 8
  check "Launch page when starting mIRC on port:", 98, 74 104 110 8, tab 8
  edit "", 99, 190 102 30 10, tab 8 autohs center

  box "Personal Information", 100, 64 1 164 114, tab 9
  text "Nickname:", 101, 74 11 40 8, tab 9
  edit "", 102, 110 10 110 10, autohs tab 9
  text "Alt-Nickname:", 103, 74 23 40 8, tab 9
  edit "", 104, 110 22 110 10, autohs tab 9
  text "Full name:", 105, 74 34 40 8, tab 9
  edit "", 106, 110 33 110 10, autohs tab 9
  text "Location", 107, 74 45 40 8, tab 9
  edit "", 108, 110 44 110 10, autohs tab 9
  text "Age:", 109, 74 56 40 8, tab 9
  edit "", 110, 110 55 15 10, tab 9 limit 2
  radio "Male", 111, 140 56 20 8, tab 9 group
  radio "Female", 112, 170 56 25 8, tab 9
  text "Hobbies:", 113, 74 74 40 8, tab 9
  edit "", 114, 110 73 110 10, autohs tab 9
  text "Occupation:", 115, 74 85 40 8, tab 9
  edit "", 116, 110 84 110 10, autohs tab 9
  text "Bio:", 117, 74 96 40 8, tab 9
  edit "", 118, 110 95 110 10, autohs tab 9

  box "Contact Information", 120, 64 1 164 114, tab 10
  text "Email Address:", 121, 74 11 40 8, tab 10
  edit "", 122, 110 10 110 10, autohs tab 10
  text "Website:", 123, 74 22 40 8, tab 10
  edit "", 124, 110 21 110 10, autohs tab 10
  text "MSN addy:", 125, 74 35 40 8, tab 10
  edit "", 126, 110 34 110 10, autohs tab 10
  text "AIM nick:", 127, 74 46 40 8, tab 10
  edit "", 128, 110 45 110 10, autohs tab 10
  text "ICQ number:", 129, 74 57 40 8, tab 10
  edit "", 130, 110 56 110 10, autohs tab 10
  text "Yahoo addy:", 131, 74 68 40 8, tab 10
  edit "", 132, 110 67 110 10, autohs tab 10
  text "IRC networks:", 133, 74 80 40 8, tab 10
  edit "", 134, 110 79 110 10, autohs tab 10
  text "IRC channels:", 135, 74 91 40 8, tab 10
  edit "", 136, 110 90 110 10, autohs tab 10
  text "IRC nicks:", 137, 74 102 40 8, tab 10
  edit "", 138, 110 101 110 10, autohs tab 10

  box "About mIRC Stats", 220, 64 1 164 114, tab 13
  text "mIRC Stats� v4.61", 221, 74 15 50 8, tab 13
  text "Copyright � 2003", 222, 74 30 50 8, tab 13
  text "Voice of Power - Marc Kuiper", 223, 74 38 100 8, tab 13
  text "mIRC.net, mIRCScripts.org, ScriptsDB.org, mIRCSource.com or Hawkee.com;              depending where downloaded.", 224, 74 45 120 24, tab 13
  text "All rights reserved.", 225, 74 68 50 8, tab 13
  text "Written by", 226, 74 85 27 8, tab 13
  link "Voice of Power", 227, 102 85 40 8, tab 13
  text "mIRC� v6.15                   Copyright � 1995-2003         mIRC Co. Ltd.                     All rights reserved.", 228, 165 85 70 30, tab 13
}
on *:dialog:statsconf:*:*:{
  if ($devent == init) {
    smdx SetMircVersion $version
    smdx MarkDialog $dname
    smdx SetControlMDX $dname 1 TreeView haslines hasbuttons linesatroot > $sviews

    did -a $dname 1 +e General
    did -i $dname 1 1 cb root 2
    did -a $dname 1 Misc
    did -a $dname 1 Echoing
    did -a $dname 1 Data
    did -a $dname 1 Positioning
    did -i $dname 1 1 cb root
    did -a $dname 1 +e Webpage
    did -i $dname 1 1 cb root 3
    did -a $dname 1 Options
    did -a $dname 1 Personal
    did -a $dname 1 Contact
    did -i $dname 1 1 cb root
    did -a $dname 1 About

    smdx SetControlMDX $dname 39 ListView report labeltip showsel single rowselect $iif($hg(grids),grid) noheader > $sviews
    did -i $dname 39 1 headerdims 225:1 62:2

    if (config isin $hg(disp.color.apply)) {
      if (back isin $hg(disp.color.apply)) { did -i $dname 1 1 setcolor bkg $gettok($hg(disp.color),1,32) }
      if (text isin $hg(disp.color.apply)) { did -i $dname 1 1 setcolor text $gettok($hg(disp.color),2,32) }
      if (line isin $hg(disp.color.apply)) { did -i $dname 1 1 setcolor line $gettok($hg(disp.color),3,32) }
    }
    if (words isin $hg(disp.color.apply)) {
      if (back isin $hg(disp.color.apply)) { did -i $dname 39 1 setbkg color $gettok($hg(disp.color),1,32) }
      if (back isin $hg(disp.color.apply)) { did -i $dname 39 1 settxt bgcolor $gettok($hg(disp.color),1,32) }
      if (text isin $hg(disp.color.apply)) { did -i $dname 39 1 settxt color $gettok($hg(disp.color),2,32) }
    }

    if ($hfind(stats,custom.*,0,w)) {
      var %c = 1
      while (%c <= $hfind(stats,custom.*,0,w)) {
        var %h = $hfind(stats,custom.*,%c,w)
        did -a $dname 39 0 0 0 0 $gettok(%h,2,46) 	0 0 0 $hg(%h)
        inc %c
      }
    }
    if ($hg(menu.menubar)) { did -c $dname 44 }
    if ($hg(menu.status)) { did -c $dname 45 }
    if ($hg(menu.channel)) { did -c $dname 46 }
    if ($hg(menu.query)) { did -c $dname 47 }
    if ($hg(menu.nicklist)) { did -c $dname 48 }
    if ($hg(menu.commands)) { did -c $dname 49 }

    if ($hg(ctcp)) { did -c $dname 22 }
    if ($hg(grids)) { did -c $dname 23 }
    if ($hg(autoupdate)) { did -c $dname 24 }
    if ($hg(saveevery)) { did -c $dname 25 }
    did -a $dname 26 $hg(saveeverynum)
    if ($hg(desktop)) { did -c $dname 28 }
    if ($hg(ontop)) { did -c $dname 29 }
    if ($hg(checklag)) { did -c $dname 30 }
    if ($hg(usdate)) { did -c $dname 31 }
    if ($hg(disp.servers) == classic) { did -c $dname 32 }
    if (server isin $hg(init)) { did -c $dname 241 }
    if (events isin $hg(init)) { did -c $dname 242 }
    if (cpu isin $hg(init)) { did -c $dname 243 }
    if (cache isin $hg(init)) { did -c $dname 244 }
    if (os isin $hg(init)) { did -c $dname 245 }
    if (hdd isin $hg(init)) { did -c $dname 246 }
    if (gfx isin $hg(init)) { did -c $dname 247 }
    if (con isin $hg(init)) { did -c $dname 248 }
    if (misc isin $hg(init)) { did -c $dname 249 }

    window -hl @stats.paren1
    window -hl @stats.paren2
    window -hl @stats.custom
    smdx SetControlMDX $dname 57,59,62 window > $sdialog
    did -a $dname 57 grab $window(@stats.paren1).hwnd @stats.paren1
    did -a $dname 59 grab $window(@stats.paren2).hwnd @stats.paren2
    did -a $dname 62 grab $window(@stats.custom).hwnd @stats.custom
    if ($hg(echo) == public) { did -c $dname 52 }
    elseif ($hg(echo) == personal) { did -c $dname 53 }
    if ($hg(color)) { did -c $dname 54 }
    if ($hg(colorctcp)) { did -c $dname 64 }
    did -a $dname 56 $hg(echo.parentext1)
    if ($did(56)) { aline @stats.paren1 $replace($did(56),<text>,mIRC Stats) }
    did -a $dname 58 $hg(echo.parentext2)
    if ($did(58)) { aline @stats.paren2 $replace($did(58),<text>,value) }
    did -a $dname 61 $replace($hg(echo.custom),<text>,value)
    if ($did(61)) { aline @stats.custom $eval($did(61),2) }

    did -a $dname 193 last: $iif($hg(firstdate),$ifmatch,n/a)
    did -a $dname 196 last: $iif($hg(been.date),$ifmatch,n/a)
    did -a $dname 199 last: $iif($hg(have.date),$ifmatch,n/a)
    did -a $dname 202 last: $iif($hg(seen.date),$ifmatch,n/a)

    smdx SetControlMDX $dname 75,77 UpDown arrowkeys center alignright edit numeric nothousands > $sctl
    if ($hg(positionc) == default) { did -c $dname 71 }
    elseif ($hg(positionc) == derive) { did -c $dname 72 }
    elseif ($hg(positionc) == specify) { did -c $dname 73 }
    did -i $dname 75 1 $gettok($hg(position),1,32) 0 $window(-1).w 0
    did -i $dname 77 1 $gettok($hg(position),2,32) 0 $window(-1).h 0
    if (!$did(73).state) { did -b $dname 74,75,76,77 }
    if (stats isin $hg(pos.apply)) { did -c $dname 181 }
    if (config isin $hg(pos.apply)) { did -c $dname 182 }
    if (been isin $hg(pos.apply)) { did -c $dname 183 }
    if (have isin $hg(pos.apply)) { did -c $dname 184 }
    if (seen isin $hg(pos.apply)) { did -c $dname 185 }

    smdx SetBorderStyle $dname 284 staticedge
    var %w = $findfile($scriptdirwebpages\,*.msw,0,did -a $dname 272 $nopath($1-))
    if ($hg(webcurrent)) { did -c $dname 272 $didwm($dname,272,$hg(webcurrent))) }
    else { did -c $dname 272 1 }
    did -a $dname 274 $stats.read($did(272).seltext,name)
    did -a $dname 276 v $+ $stats.read($did(272).seltext,version) (mIRC Stats v $+ $stats.read($did(272).seltext,msversion) $+ )
    did -a $dname 278 $stats.read($did(272).seltext,author)
    did -a $dname 280 $stats.read($did(272).seltext,email)
    did -a $dname 282 $stats.read($did(272).seltext,website)
    did -a $dname 283 $stats.read($did(272).seltext,description)

    did -a $dname 83 $hg(webwintitle)
    did -a $dname 85 $hg(webpagetitle)
    did -a $dname 87 $hg(webpiclink)
    did -a $dname 89 $hg(webpiclink2)
    if ($hg(webshowtime)) { did -c $dname 91 }
    if ($hg(webshowpriv)) { did -c $dname 92 }
    if ($hg(webshowsec)) { did -c $dname 93 }
    if ($hg(webshowcount)) { did -c $dname 94 }
    if ($hg(webshowsys)) { did -c $dname 95 }
    if ($hg(webshowserv)) { did -c $dname 119 }
    if ($hg(webreport)) { did -c $dname 97 }
    if ($hg(webstart)) { did -c $dname 98 }
    did -a $dname 99 $hg(webstartport)

    did -a $dname 102 $hg(webnick)
    did -a $dname 104 $hg(webanick)
    did -a $dname 106 $hg(webfullname)
    did -a $dname 108 $hg(weblocation)
    did -a $dname 110 $hg(webage)
    if ($hg(websex) == male) { did -c $dname 111 }
    elseif ($hg(websex) == female) { did -c $dname 112 }
    did -a $dname 114 $hg(webhobbies)
    did -a $dname 116 $hg(webocc)
    did -a $dname 118 $hg(webbio)

    did -a $dname 122 $hg(webemail)
    did -a $dname 124 $hg(webwebsite)
    did -a $dname 126 $hg(webmsn)
    did -a $dname 128 $hg(webaim)
    did -a $dname 130 $hg(webicq)
    did -a $dname 132 $hg(webyahoo)
    did -a $dname 134 $hg(webnets)
    did -a $dname 136 $hg(webchans)
    did -a $dname 138 $hg(webnicks)

  }
  if ($devent == sclick) {
    if ($did == 1) {
      tokenize 32 $spage($dname,1).select
      if ($2 == 2) {
        if (!$3) { did -f $dname 4 }
        elseif ($3 == 2) { did -f $dname 14 }
        elseif ($3 == 3) { did -f $dname 5 }
        elseif ($3 == 4) { did -f $dname 6 }
        elseif ($3 == 5) { did -f $dname 7 }
      }
      elseif ($2 == 3) {
        if (!$3) { did -f $dname 15 }
        elseif ($3 == 2) { did -f $dname 8 }
        elseif ($3 == 3) { did -f $dname 9 }
        elseif ($3 == 4) { did -f $dname 10 }
      }
      elseif ($2 == 4) { did -f $dname 13 }
    }
    if ($did == 2) {
      ha ctcp $did(22).state
      ha grids $did(23).state
      ha autoupdate $did(24).state
      ha saveevery $did(25).state
      ha saveeverynum $did(26)
      ha desktop $did(28).state
      ha ontop $did(29).state
      ha checklag $did(30).state
      ha usdate $did(31).state
      if ($did(36)) {
        tokenize 47 $hg(firstdate)
        ha firstdate $+($2,/,$1,/,$3)
        tokenize 47 $hg(been.date)
        ha been.date $+($2,/,$1,/,$3)
        tokenize 47 $hg(have.date)
        ha have.date $+($2,/,$1,/,$3)
        tokenize 47 $hg(seen.date)
        ha seen.date $+($2,/,$1,/,$3)
      }
      if ($did(32).state) { ha disp.servers classic }
      else { ha disp.servers new }
      if ($did(241).state) { var %i = server }
      if ($did(242).state) { var %i = %i events }
      if ($did(243).state) { var %i = %i cpu }
      if ($did(244).state) { var %i = %i cache }
      if ($did(245).state) { var %i = %i os }
      if ($did(246).state) { var %i = %i hdd }
      if ($did(247).state) { var %i = %i gfx }
      if ($did(248).state) { var %i = %i con }
      if ($did(249).state) { var %i = %i misc }
      ha init %i

      ha menu.menubar $did(44).state
      if ($did(44).state) { .enable #menu.menubar }
      else { .disable #menu.menubar }
      ha menu.status $did(45).state
      if ($did(45).state) { .enable #menu.status }
      else { .disable #menu.status }
      ha menu.channel $did(46).state
      if ($did(46).state) { .enable #menu.channel }
      else { .disable #menu.channel }
      ha menu.query $did(47).state
      if ($did(47).state) { .enable #menu.query }
      else { .disable #menu.query }
      ha menu.nicklist $did(48).state
      if ($did(48).state) { .enable #menu.nicklist }
      else { .disable #menu.nicklist }
      ha menu.commands $did(49).state

      if ($did(52).state) { ha echo public }
      elseif ($did(53).state) { ha echo personal }
      ha color $did(54).state
      ha colorctcp $did(64).state
      ha echo.parentext1 $did(56)
      ha echo.parentext2 $did(58)
      ha echo.custom $did(61)

      if ($did(71).state) { ha positionc default }
      elseif ($did(72).state) { ha positionc derive }
      elseif ($did(73).state) { ha positionc specify }
      ha position $gettok($did(75),1,32) $gettok($did(77),1,32)
      ha pos.apply $iif($did(181).state,stats) $iif($did(182).state,config) $iif($did(183).state,been) $iif($did(184).state,have) $iif($did(185).state,seen)

      ha webwintitle $did(83)
      ha webpagetitle $did(85)
      ha webpiclink $did(87)
      ha webpiclink2 $did(89)
      ha webshowtime $did(91).state
      ha webshowpriv $did(92).state
      ha webshowsec $did(93).state
      ha webshowcount $did(94).state
      ha webshowsys $did(95).state
      ha webshowserv $did(119).state
      ha webreport $did(97).state
      ha webstart $did(98).state
      ha webstartport $did(99)

      ha webnick $did(102)
      ha webanick $did(104)
      ha webfullname $did(106)
      ha weblocation $did(108)
      ha webage $did(110)
      if ($did(111).state == 1) { ha websex male }
      elseif ($did(112).state == 1) { ha websex female }
      ha webhobbies $did(114)
      ha webocc $did(116)
      ha webbio $did(118)

      ha webemail $did(122)
      ha webwebsite $did(124)
      ha webmsn $did(126)
      ha webaim $did(128)
      ha webicq $did(130)
      ha webyahoo $did(132)
      ha webnets $did(134)
      ha webchans $did(136)
      ha webnicks $did(138)

      if ($findfile($scriptdirwebpages,* $+ $stats.read($did(272).seltext,script),1,var %file = $1-)) {
        if ($script($hg(webcurscript))) { .unload -rs $ifmatch }

        .load -rs $+(",%file,")
        ha webcurrent $did(272).seltext
        ha webcurname $stats.read($did(272).seltext,name)
        ha webcurauthor $stats.read($did(272).seltext,author)
        ha webcuremail $stats.read($did(272).seltext,email)
        ha webcurwebsite $stats.read($did(272).seltext,website)
        ha webcurdesc $stats.read($did(272).seltext,description)
        ha webcurver $stats.read($did(272).seltext,version)
        ha webcurmsver $stats.read($did(272).seltext,msversion)
        ha webcurscript %file
        ha webcuralias $stats.read($did(272).seltext,alias)
      }
    }
    if ($did == 31) { did -ra $dname 36 1 }
    if ($did == 34) { stats icons }
    if ($did == 35) { stats color }
    if ($did == 40) {
      var %w = $$input(Specify a word you wish to record.,eq,Custom Words)
      if ($hg(custom. $+ $gettok(%w,1,32))) {
        var %e = $input($+(',%w,') already exists $+ $chr(44) do you wish to reset it?,yq,Custom Words)
        if (%e) { ha custom. $+ %w 0 }
      }
      else {
        ha custom. $+ %w 0
        did -a $dname 39 0 0 0 0 %w 	0 0 0 $hg(custom. $+ %w)
      }
    }
    if ($did == 41) {
      var %w = $input(Are you sure you wish to reset $+(',$cell($dname,39,$did(39).sel,1),') ?,yq,Custom Words)
      if (%w) {
        ha custom. $+ $cell($dname,39,$did(39).sel,1) 0
        did -o $dname 39 $did(39).sel 0 0 0 0 $cell($dname,39,$did(39).sel,1) 	0 0 0 0
      }
    }
    if ($did == 42) {
      var %w = $input(Are you sure you wish to delete $+(',$cell($dname,39,$did(39).sel,1),') ?,yq,Custom Words)
      if (%w) {
        hdel stats custom. $+ $cell($dname,39,$did(39).sel,1)
        did -d $dname 39 $did(39).sel
      }
    }
    if ($did == 71) || ($did == 72) { did -b $dname 74,75,76,77 }
    if ($did == 73) { did -e $dname 74,75,76,77 }
    if ($did == 194) { resetstats events | did -ra $dname 193 last: $hg(firstdate) }
    if ($did == 197) { resetstats been | did -ra $dname 196 last: $hg(been.date) }
    if ($did == 200) { resetstats have | did -ra $dname 199 last: $hg(have.date) }
    if ($did == 203) { resetstats seen | did -ra $dname 202 $hg(seen.date) }
    if ($did == 206) { resetstats webcolor }
    if ($did == 208) { hsave -o stats $+(",$scriptdirstats.src,") }
    if ($did == 209) {
      var %f = $$sfile($scriptdir*.src,Save stats to..,Save)
      hsave -o stats $+(",%f,")
    }
    if ($did == 210) {
      var %i = $input(Be aware that old files from version 1.0 $+ $chr(44) 1.1 and 2.0 cannot be imported $+ $chr(44) since version 3.0 most stats have been renamed and are used differently $+ $chr(44) make sure the file is valid before you continue. $crlf $crlf If the file is invalid $+ $chr(44) you will have to reset everything for mIRC Stats to function properly. $crlf $crlf Continue?,yi,Import)
      if (%i) {
        var %f = $$sfile($scriptdir*.src,Select stats file..,Load)
        if (!$hget(stats)) { hmake stats 15 }
        if ($exists($+(",%f,"))) { hload stats $+(",%f,") }
      }
    }
    if ($did == 212) { stats.updatecheck -d }
    if ($did == 217) { run http://www.voiceofpower.us/scripts/mstats_latest.zip }
    if ($did == 227) { run mailto:marckuiper@hotmail.com }
    if ($did == 272) {
      did -ra $dname 274 $stats.read($did(272).seltext,name)
      did -ra $dname 276 v $+ $stats.read($did(272).seltext,version) (mIRC Stats v $+ $stats.read($did(272).seltext,msversion) $+ )
      did -ra $dname 278 $stats.read($did(272).seltext,author)
      did -ra $dname 280 $stats.read($did(272).seltext,email)
      did -ra $dname 282 $stats.read($did(272).seltext,website)
      did -ra $dname 283 $stats.read($did(272).seltext,description)
    }
  }
  if ($devent == edit) {
    if ($did == 56) {
      clear @stats.paren1
      if ($did(56)) { aline @stats.paren1 $replace($ifmatch,<text>,mIRC Stats) }
    }
    if ($did == 58) {
      clear @stats.paren2
      if ($did(58)) { aline @stats.paren2 $replace($ifmatch,<text>,value) }
    }
    if ($did == 61) {
      clear @stats.custom
      if ($did(61)) { aline @stats.custom $eval($ifmatch,2) }
    }
  }
  if ($devent == close) { ha pos.config $dialog(statsconf).x $dialog(statsconf).y }
}

dialog -l stats.icons {
  title "mIRC Stats 4.61 - Icons"
  size -1 -1 147 149
  option dbu

  text "Server:", 1, 2 5 30 8
  icon 2, 35 1 30 20
  edit "", 3, 55 4 63 10, read autohs
  button "change", 4, 120 4 25 10
  text "Channel:", 5, 2 28 30 8
  icon 6, 35 24 30 20
  edit "", 7, 55 27 63 10, read autohs
  button "change", 8, 120 27 25 10
  text "Query:", 9, 2 51 30 8
  icon 10, 35 47 30 20
  edit "", 11, 55 50 63 10, read autohs
  button "change", 12, 120 50 25 10
  text "Hard Disk:", 13, 2 74 30 8
  icon 14, 35 70 30 20
  edit "", 15, 55 73 63 10, read autohs
  button "change", 16, 120 73 25 10
  text "CDrom:", 17, 2 97 30 8
  icon 18, 35 93 30 20
  edit "", 19, 55 96 63 10, read autohs
  button "change", 20, 120 96 25 10
  text "Removable:", 21, 2 120 30 8
  icon 22, 35 116 30 20
  edit "", 23, 55 119 63 10, read autohs
  button "change", 24, 120 119 25 10

  box "", 25, -5 130 200 100
  button "default", 26, 75 135 30 12
  button "ok", 27, 40 135 30 12, ok
}
on *:dialog:stats.icons:*:*:{
  if ($devent == init) {
    did -g $dname 2 $gettok($icon(serv),1,44) $gettok($icon(serv),2,44)
    did -a $dname 3 $icon(serv)
    did -g $dname 6 $gettok($icon(chan),1,44) $gettok($icon(chan),2,44)
    did -a $dname 7 $icon(chan)
    did -g $dname 10 $gettok($icon(query),1,44) $gettok($icon(query),2,44)
    did -a $dname 11 $icon(query)
    did -g $dname 14 $gettok($icon(hd),1,44) $gettok($icon(hd),2,44)
    did -a $dname 15 $icon(hd)
    did -g $dname 18 $gettok($icon(cd),1,44) $gettok($icon(cd),2,44)
    did -a $dname 19 $icon(cd)
    did -g $dname 22 $gettok($icon(rm),1,44) $gettok($icon(rm),2,44)
    did -a $dname 23 $icon(rm)
  }
  if ($devent == sclick) {
    if ($did == 4) { icons serv }
    if ($did == 8) { icons chan }
    if ($did == 12) { icons query }
    if ($did == 16) { icons hd }
    if ($did == 20) { icons cd }
    if ($did == 24) { icons rm }
    if ($did == 26) {
      did -ra stats.icons 3 0, $+ $shortfn($scriptdiricons\) $+ serv.ico
      did -g stats.icons 2 $shortfn($scriptdiricons\) $+ serv.ico 0
      ha icon.serv 0, $+ $shortfn($scriptdiricons\) $+ serv.ico
      did -ra stats.icons 7 0, $+ $shortfn($scriptdiricons\) $+ chan.ico
      did -g stats.icons 6 $shortfn($scriptdiricons\) $+ chan.ico 0
      ha icon.chan 0, $+ $shortfn($scriptdiricons\) $+ chan.ico
      did -ra stats.icons 11 0, $+ $shortfn($scriptdiricons\) $+ query.ico
      did -g stats.icons 10 $shortfn($scriptdiricons\) $+ query.ico 0
      ha icon.query 0, $+ $shortfn($scriptdiricons\) $+ query.ico
      did -ra stats.icons 15 0, $+ $shortfn($scriptdiricons\) $+ hd.ico
      did -g stats.icons 14 $shortfn($scriptdiricons\) $+ hd.ico 0
      ha icon.hd 0, $+ $shortfn($scriptdiricons\) $+ hd.ico
      did -ra stats.icons 19 0, $+ $shortfn($scriptdiricons\) $+ cd.ico
      did -g stats.icons 18 $shortfn($scriptdiricons\) $+ cd.ico 0
      ha icon.cd 0, $+ $shortfn($scriptdiricons\) $+ cd.ico
      did -ra stats.icons 23 0, $+ $shortfn($scriptdiricons\) $+ rm.ico
      did -g stats.icons 22 $shortfn($scriptdiricons\) $+ rm.ico 0
      ha icon.rm 0, $+ $shortfn($scriptdiricons\) $+ rm.ico
    }
  }
}

dialog -l stats.icon {
  size -1 -1 288 340
  title "Select icon"
  button "Ok" 1, 135 310 70 23,ok
  list 2, 8 50 272 255, size
  button "Cancel" 3, 210 310 70 23, cancel
  edit "" 4, 8 25 208 22, autohs
  button "Browse..." 5, 218 25 60 22
  text "" 6, 10 313 30 15
}
on *:dialog:stats.icon:*:*:{
  if ($devent == init) {
    smdx SetMircVersion $version
    smdx MarkDialog $dname
    smdx SetControlMDX $dname 2 listview icon single > $sviews
    did -ba $dname 4 $mircexe
    did -i $dname 2 1 iconspacing 42 3

    var %c = $gettok($bdll(cicon,$mircexe),2,32)
    var %n = 0
    while (%n <= %c) {
      did -i $dname 2 1 seticon list %n $+ , $+ $mircexe
      if (%n > 0) { did -a $dname 2 0 %n 0 0 }
      inc %n
    }
  }
  if ($devent == sclick) {
    if ($did == 2) { if ($did($dname,2).sel) { did -ra $dname 6 #: $calc($did($dname,$did).sel -2) } }
    if ($did == 5) {
      var %f = $$sfile($scriptdir*.ico;*.icl;*.exe;*.dll,Please select an icon,Choose)
      did -ra $dname 4 %f
      var %c = $gettok($bdll(cicon,%f),2,32)
      var %n = 0
      did -r $dname 2
      did -i $dname 2 1 clearicons normal
      while (%n <= %c) {
        did -i $dname 2 1 seticon list %n $+ , $+ %f
        if (%n > 0) { did -a $dname 2 0 %n 0 0 }
        inc %n
      }
    }
    if ($did == 1) && ($did($dname,2).seltext) {
      var %g = $gettok($did($dname,2).seltext,3,32)
      var %i = $calc(%g -1) $+ , $+ $shortfn($nofile($did(4))) $+ $nopath($did(4))
      if (%icontype == serv) {
        did -ra stats.icons 3 %i
        did -g stats.icons 2 $gettok(%i,1,44) $gettok(%i,2,44)
        ha icon.serv %i
      }
      if (%icontype == chan) {
        did -ra stats.icons 7 %i
        did -g stats.icons 6 $gettok(%i,1,44) $gettok(%i,2,44)
        ha icon.chan %i
      }
      if (%icontype == query) {
        did -ra stats.icons 11 %i
        did -g stats.icons 10 $gettok(%i,1,44) $gettok(%i,2,44)
        ha icon.query %i
      }
      if (%icontype == hd) {
        did -ra stats.icons 15 %i
        did -g stats.icons 14 $gettok(%i,1,44) $gettok(%i,2,44)
        ha icon.hd %i
      }
      if (%icontype == cd) {
        did -ra stats.icons 19 %i
        did -g stats.icons 18 $gettok(%i,1,44) $gettok(%i,2,44)
        ha icon.cd %i
      }
      if (%icontype == rm) {
        did -ra stats.icon 23 %i
        did -g stats.icons 22 $gettok(%i,1,44) $gettok(%i,2,44)
        ha icon.rm %i
      }
      unset %icontype
    }
  }
}

dialog -l stats.color {
  title "mIRC Stats 4.61 - Color"
  size -1 -1 106 132
  option dbu

  box "Colors", 1, 2 2 102 51
  check "Back color:", 2, 5 10 35 8
  check "Text color:", 3, 5 20 35 8
  check "Line color:", 4, 5 30 35 8
  button "", 5, 45 10 30 8
  button "", 6, 45 20 30 8
  button "", 7, 45 30 30 8
  combo 8, 80 9 20 8, drop
  combo 9, 80 19 20 8, drop
  combo 10, 80 29 20 8, drop
  button "adapt colors", 11, 5 41 40 10
  button "preview", 12, 71 41 30 10

  box "Apply for", 20, 2 54 102 66
  check "Servers tree", 21, 5 62 40 8
  check "Servers list", 22, 60 62 40 8
  check "Channels list", 23, 5 70 40 8
  check "Queries list", 24, 60 70 40 8
  check "Events list", 25, 5 78 40 8
  check "Been list", 26, 60 78 40 8
  check "Have list", 27, 5 86 40 8
  check "Seen list", 28, 60 86 40 8
  check "HDD list", 29, 5 94 40 8
  check "Misc list", 30, 60 94 40 8
  check "Echo tree", 33, 5 102 40 8
  check "Editboxes", 32, 60 102 40 8
  check "Custom words list", 31, 5 110 52 8
  check "Config tree", 34, 60 110 40 8

  button "ok", 40, 40 121 30 10, ok
}
on *:dialog:stats.color:*:*:{
  if ($devent == init) {
    smdx SetMircVersion $version
    smdx MarkDialog $dname
    smdx SetControlMDX $dname 5,6,7 Text > $sctl
    smdx SetBorderStyle $dname 5,6,7 border
    smdx SetColor $dname 5 background $gettok($hg(disp.color),1,32)
    smdx SetColor $dname 6 background $gettok($hg(disp.color),2,32)
    smdx SetColor $dname 7 background $gettok($hg(disp.color),3,32)
    didtok $dname 8,9,10 44 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
    did -c $dname 8,9,10 1

    if (back isin $hg(disp.color.apply)) { did -c $dname 2 }
    if (text isin $hg(disp.color.apply)) { did -c $dname 3 }
    if (line isin $hg(disp.color.apply)) { did -c $dname 4 }
    if (servers isin $hg(disp.color.apply)) { did -c $dname 21 }
    if (serversl isin $hg(disp.color.apply)) { did -c $dname 22 }
    if (channels isin $hg(disp.color.apply)) { did -c $dname 23 }
    if (querys isin $hg(disp.color.apply)) { did -c $dname 24 }
    if (events isin $hg(disp.color.apply)) { did -c $dname 25 }
    if (been isin $hg(disp.color.apply)) { did -c $dname 26 }
    if (have isin $hg(disp.color.apply)) { did -c $dname 27 }
    if (seen isin $hg(disp.color.apply)) { did -c $dname 28 }
    if (hdd isin $hg(disp.color.apply)) { did -c $dname 29 }
    if (misc isin $hg(disp.color.apply)) { did -c $dname 30 }
    if (words isin $hg(disp.color.apply)) { did -c $dname 31 }
    if (editboxes isin $hg(disp.color.apply)) { did -c $dname 32 }
    if (echo isin $hg(disp.color.apply)) { did -c $dname 33 }
    if (config isin $hg(disp.color.apply)) { did -c $dname 34 }
  }
  if ($did == 5) { var %c = $colordll($gettok($hg(disp.color),1,32)) | if (%c != $false) { var %o = $gettok($hg(disp.color),2-3,32) | ha disp.color %c %o | smdx SetColor $dname 5 background %c } }
  if ($did == 6) { var %c = $colordll($gettok($hg(disp.color),2,32)) | if (%c != $false) { var %o = $gettok($hg(disp.color),1,32),%o2 = $gettok($hg(disp.color),3,32) | ha disp.color %o %c %o2 | smdx SetColor $dname 6 background %c } }
  if ($did == 7) { var %c = $colordll($gettok($hg(disp.color),3,32)) | if (%c != $false) { var %o = $gettok($hg(disp.color),1-2,32) | ha disp.color %o %c | smdx SetColor $dname 7 background %c } }
  if ($did == 8) { var %c = $color($did(8).seltext) | var %o = $gettok($hg(disp.color),2-3,32) | ha disp.color %c %o | smdx SetColor $dname 5 background %c }
  if ($did == 9) { var %c = $color($did(9).seltext) | var %o = $gettok($hg(disp.color),1,32),%o2 = $gettok($hg(disp.color),3,32) | ha disp.color %o %c %o2 | smdx SetColor $dname 6 background %c }
  if ($did == 10) { var %c = $color($did(10).seltext) | var %o = $gettok($hg(disp.color),1-2,32) | ha disp.color %o %c | smdx SetColor $dname 7 background %c }
  if ($did == 11) {
    ha disp.color $color($color(back)) $color($color(normal text)) $color($color(action text))
    smdx SetColor $dname 5 background $gettok($hg(disp.color),1,32)
    smdx SetColor $dname 6 background $gettok($hg(disp.color),2,32)
    smdx SetColor $dname 7 background $gettok($hg(disp.color),3,32)
    did -c $dname 8 $calc($color(back) + 1)
    did -c $dname 9 $calc($color(normal text) + 1)
    did -c $dname 10 $calc($color(action tex) + 1)
  }
  if ($did == 12) { if (!$dialog(stats.color.prev)) { dialog -m stats.color.prev stats.color.prev } }
  if ($did == 40) {
    if ($did(2).state) { var %a = back }
    if ($did(3).state) { var %a = %a text }
    if ($did(4).state) { var %a = %a line }
    if ($did(21).state) { var %a = %a servers }
    if ($did(22).state) { var %a = %a serversl }
    if ($did(23).state) { var %a = %a channels }
    if ($did(24).state) { var %a = %a querys }
    if ($did(25).state) { var %a = %a events }
    if ($did(26).state) { var %a = %a been }
    if ($did(27).state) { var %a = %a have }
    if ($did(28).state) { var %a = %a seen }
    if ($did(29).state) { var %a = %a hdd }
    if ($did(30).state) { var %a = %a misc }
    if ($did(31).state) { var %a = %a words }
    if ($did(32).state) { var %a = %a editboxes }
    if ($did(33).state) { var %a = %a echo }
    if ($did(34).state) { var %a = %a config }
    ha disp.color.apply %a
  }
}

dialog -l stats.color.prev {
  title "Color preview"
  size -1 -1 177 95
  option dbu
  list 1, 2 2 70 80, size
  list 2, 75 2 100 80, size extsel
  edit "Editbox", 3, 2 84 70 10
  button "close", 4, 150 84 25 10, ok
}
on *:dialog:stats.color.prev:*:*:{
  if ($devent == init) {
    smdx SetMircVersion $version
    smdx MarkDialog $dname
    smdx SetControlMDX $dname 1 TreeView haslines hasbuttons linesatroot showsel > $sviews
    smdx SetControlMDX $dname 2 ListView report labeltip showsel single rowselect $iif($hg(grids),grid) > $sviews

    did -a $dname 1 +e TreeView
    did -i $dname 1 1 cb root 2
    did -a $dname 1 Branch 1
    did -a $dname 1 Branch 2
    did -i $dname 1 1 cb root
    did -a $dname 1 +e Network
    did -i $dname 1 1 cb root 3
    did -a $dname 1 #Channel
    did -a $dname 1 Query
    did -i $dname 2 1 headerdims 95:1 50:2 50:3
    did -i $dname 2 1 headertext Header 	Text 	Bla
    did -a $dname 2 This 	is 	a
    did -a $dname 2 preview 	of	what
    did -a $dname 2 a 	List 	View
    did -a $dname 2 could 	look 	like
    did -a $dname 2 :)

    var %d = stats.color
    if ($dialog(%d)) {
      if ($did(%d, 2).state) { did -i $dname 1 1 setcolor bkg $gettok($hg(disp.color),1,32) }
      if ($did(%d, 3).state) { did -i $dname 1 1 setcolor text $gettok($hg(disp.color),2,32) }
      if ($did(%d, 4).state) { did -i $dname 1 1 setcolor line $gettok($hg(disp.color),3,32) }
      if ($did(%d, 2).state) { did -i $dname 2 1 setbkg color $gettok($hg(disp.color),1,32) }
      if ($did(%d, 2).state) { did -i $dname 2 1 settxt bgcolor $gettok($hg(disp.color),1,32) }
      if ($did(%d, 3).state) { did -i $dname 2 1 settxt color $gettok($hg(disp.color),2,32) }
      if ($did(%d, 2).state) { smdx SetColor $dname 3 background $gettok($hg(disp.color),1,32) }
      if ($did(%d, 2).state) { smdx SetColor $dname 3 textbg $gettok($hg(disp.color),1,32) }
      if ($did(%d, 3).state) { smdx SetColor $dname 3 text $gettok($hg(disp.color),2,32) }
    }
  }
}



alias -l stats.updatecheck {
  if ($portfree(80)) {
    if ($1 == -d) { did -ra statsconf 216 Contacting... }
    elseif ($show) { echo -a 10(4!10) Looking for updates... }
    sockopen $iif($1 == -d, verstatsd, verstats) voiceofpower.us 80
  }
  elseif ($1 == -d) { did -ra statsconf 216 Port 80 is in use }
  elseif ($show) { echo -a 10(4!10) Cannot check for an update, port 80 is in use. }
}
on 1:SOCKOPEN:verstat*:{
  if ($sockerr > 0) {
    if ($sockname == verstats) { echo -a 10(4!10) An error has occured: $sockerr }
    else { did -ra statsconf 216 Error connecting }
  }
  sockwrite -n $sockname GET /scripts/mstats_versions.txt HTTP/1.1
  sockwrite -n $sockname Host: voiceofpower.us
  sockwrite -n $sockname Connection: keep-alive
  sockwrite $sockname $crlf
  if ($isfile(verstats.txt)) { .remove verstats.txt }
}
on 1:SOCKREAD:verstat*:{
  if ($sockname == verstatsd) { did -ra statsconf 216 Downloading data... }
  sockread -f &data
  bwrite verstats.txt -1 -1 &data
  .timerverstats 1 1 verstatsclose $iif($sockname == verstatsd, -d)
}
alias -l verstatsclose {
  if ($isfile(verstats.txt)) {
    if ($hg(usdate)) { var %l = $read(verstats.txt,$lines(verstats.txt)) }
    else { var %l = $read(verstats.txt,$calc($lines(verstats.txt) - 1)) }
    if ($1 == -d) { did -h statsconf 212 | did -v statsconf 217 }
    .remove verstats.txt
  }

  if ($1 == -d) { did -ra statsconf 216 $iif(%l, $ifmatch, None found) }
  else {
    if ($gettok(%l, 1, 32) > $msver) {
      echo -a 10(4!10) New version found: %l !
      echo -a 10(4!10) Download it here: http://www.voiceofpower.us/scripts/mstats_latest.zip
    }
  }

  sockclose verstats $+ $iif($1 == -d, d)
}


;################ the stats dialog ####################

dialog -l stats2 {
  title "mIRC Stats v4.61 - Servers"
  size -1 -1 206 202
  option dbu

  tab "Servers", 1, 0 0 206 202
  tab "Events", 2
  tab "System Stats", 3
  tab "Echo", 4

  box "Current Servers", 11, 2 16 79 184, tab 1
  list 12, 5 24 71 163, size tab 1
  button "Refresh", 13, 5 188 25 10, tab 1
  button "List chans", 14, 48 188 30 10, tab 1
  box "Server Info", 15, 85 16 119 184, tab 1
  list 16, 88 24 113 173, size extsel hide tab 1
  list 17, 88 24 113 163, size extsel tab 1
  button "Users", 18, 88 188 25 10, hide tab 1
  button "Bans", 19, 176 188 25 10, hide tab 1
  button "Power", 20, 88 188 25 10, tab 1

  box "Current Servers", 21, 2 16 202 65, tab 1 hide
  list 22, 5 24 195 44, size tab 1 hide
  box "Channels", 23, 2 81 202 60, tab 1 hide
  list 24, 5 89 195 49, size tab 1 hide
  box "Queries", 25, 2 141 202 59, tab 1 hide
  list 26, 5 149 195 48, size tab 1 hide
  button "Refresh", 27, 5 69 25 10, tab 1 hide
  button "List chans", 28, 34 69 30 10, tab 1 hide
  button "Power", 29, 175 69 25 10, tab 1 hide

  box "Status / DCC", 31, 2 16 66 70, tab 2
  text "", 32, 4 24 60 8, tab 2
  text "DCC:", 33, 4 34 80 8, tab 2
  text "", 34, 8 42 50 8, tab 2
  text "", 35, 10 50 50 8, tab 2
  text "", 36, 8 58 50 8, tab 2
  text "", 37, 10 66 50 8, tab 2
  box "Time", 38, 71 16 133 70, tab 2
  text "Hour:", 39, 74 24 30 8, tab 2
  edit "", 40, 120 23 30 10, tab 2 read
  text "", 41, 153 24 40 8, tab 2 disable
  text "Date:", 42, 74 36 30 8, tab 2
  edit "", 43, 120 35 80 10, tab 2 read
  text "Total online:", 44, 74 50 40 8, tab 2
  edit "", 45, 120 49 80 10, autohs tab 2 read
  text "mIRC uptime:", 46, 74 62 40 8, tab 2
  edit "", 47, 120 61 80 10, autohs tab 2 read
  text "System uptime:", 48, 74 74 50 8, tab 2
  edit "", 49, 120 73 80 10, autohs tab 2 read
  box "Events", 51, 2 88 202 112, tab 2
  list 52, 5 96 196 91, size tab 2
  button "Been", 53, 5 188 30 10, tab 2
  button "Have", 54, 37 188 30 10, tab 2
  button "Seen", 55, 69 188 30 10, tab 2
  button "Refresh", 56, 176 188 25 10, tab 2

  list 60, 35 18 140 10, tab 3 size
  box "CPU", 61, 2 30 104 100, tab 3
  text "CPU:", 62, 5 38 40 8, tab 3
  edit "", 63, 43 37 60 10, tab 3 autohs read
  text "Manufacturer:", 74, 5 49 40 8, tab 3
  edit "", 75, 43 48 40 10, tab 3 autohs read
  text "Megahertz:", 64, 5 60 40 8, tab 3
  edit "", 65, 43 59 40 10, tab 3 autohs read
  text "Cache:", 66, 5 71 40 8, tab 3
  edit "", 67, 43 70 40 10, tab 3 autohs read
  text "Load: 0%", 68, 5 82 37 8, tab 3
  text "", 69, 43 81 60 10, tab 3
  text "RAM ammount:", 70, 5 96 40 8, tab 3
  edit "", 71, 43 95 40 10, tab 3 autohs read
  text "In use: 0%", 72, 5 107 37 8, tab 3
  text "", 73, 43 106 60 10, tab 3
  box "L1 Cache", 87, 109 30 95 100, tab 3
  text "Size:", 88, 112 38 50 8, tab 3
  edit "", 89, 151 37 50 10, tab 3 autohs read
  text "Associativity:", 90, 112 49 50 8, tab 3
  edit "", 91, 151 48 50 10, tab 3 autohs read
  text "Lines:", 92, 112 60 50 8, tab 3
  edit "", 93, 151 59 50 10, tab 3 autohs read
  text "Line size:", 94, 112 71 50 8, tab 3
  edit "", 95, 151 70 50 10, tab 3 autohs read
  text "Instr size:", 96, 112 82 50 8, tab 3
  edit "", 97, 151 81 50 10, tab 3 autohs read
  text "Instr assoc:", 98, 112 93 50 8, tab 3
  edit "", 99, 151 92 50 10, tab 3 autohs read
  text "Instr lines:", 100, 112 104 50 8, tab 3
  edit "", 101, 151 103 50 10, tab 3 autohs read
  text "Instr line size:", 102, 112 115 50 8, tab 3
  edit "", 103, 151 114 50 10, tab 3 autohs read
  box "OS", 76, 2 131 149 69, tab 3
  text "OS:", 77, 5 139 40 8, tab 3
  edit "", 78, 43 138 100 10, autohs read tab 3
  text "Version:", 79, 5 150 40 8, tab 3
  edit "", 80, 43 149 40 10, autohs read tab 3
  text "Build number:", 81, 5 161 40 8, tab 3
  edit "", 82, 43 160 40 10, autohs read tab 3
  text "Installed for:", 83, 5 175 40 8, tab 3
  edit "", 84, 43 174 100 10, autohs read tab 3
  text "Uptime:", 85, 5 186 40 8, tab 3
  edit "", 86, 43 185 100 10, autohs read tab 3

  box "HDD", 111, 2 30 202 100, tab 3 hide
  list 112, 5 38 195 88, size extsel tab 3 hide
  box "GFX", 113, 2 131 149 69, tab 3 hide
  text "GFX card:", 114, 5 144 40 8, tab 3 hide
  edit "", 115, 43 143 100 10, autohs read tab 3 hide
  text "Resolution:", 116, 5 156 40 8, tab 3 hide
  edit "", 117, 43 155 40 10, autohs read tab 3 hide
  text "Refresh rate:", 118, 5 168 40 8, tab 3 hide
  edit "", 119, 43 167 40 10, autohs read tab 3 hide
  text "Depth:", 120, 5 180 40 8, tab 3 hide
  edit "", 121, 43 179 40 10, autohs read tab 3 hide

  box "Dail-up", 122, 2 30 104 70, tab 3 hide
  text "Connection:", 123, 4 38 40 8, tab 3 hide
  edit "", 124, 43 37 60 10, autohs read tab 3 hide
  text "Speed:", 125, 5 50 40 8, tab 3 hide
  edit "", 126, 43 49 60 10, autohs read tab 3 hide
  text "Downloaded:", 127, 5 62 40 8, tab 3 hide
  edit "", 128, 43 61 60 10, autohs read tab 3 hide
  text "Uploaded:", 129, 5 74 40 8, tab 3 hide
  edit "", 130, 43 73 60 10, autohs read tab 3 hide
  text "Active for:", 131, 5 86 40 8, tab 3 hide
  edit "", 132, 43 85 60 10, autohs read tab 3 hide
  box "Ethernet", 133, 109 30 95 70, tab 3 hide
  text "Name:", 134, 112 38 40 8, tab 3 hide
  edit "", 135, 137 37 64 10, autohs read tab 3 hide
  text "Speed:", 136, 112 50 40 8, tab 3 hide
  edit "", 137, 137 49 64 10, autohs read tab 3 hide
  text "Recieved:", 138, 112 62 40 8, tab 3 hide
  edit "", 139, 137 61 64 10, autohs read tab 3 hide
  text "Sent:", 140, 112 74 40 8, tab 3 hide
  edit "", 141, 137 73 64 10, autohs read tab 3 hide
  text "IP:", 142, 112 86 40 8, tab 3 hide
  edit "", 143, 137 85 64 10, autohs read tab 3 hide
  box "Misc", 144, 2 101 149 99, tab 3 hide
  list 145, 5 109 142 88, size extsel tab 3 hide
  box "Bandwidth", 153, 154 101 50 29, tab 3 hide
  text "Up:", 154, 159 109 20 8, tab 3 hide
  text "Down:", 155, 159 119 20 8, tab 3 hide
  text "", 156, 179 109 20 8, tab 3 hide
  text "", 157, 179 119 20 8, tab 3 hide

  box "Refresh", 146, 154 131 50 69, tab 3
  button "CPU/Cache", 147, 162 138 35 10, tab 3
  button "OS info", 148, 162 148 35 10, tab 3
  button "HDD info", 149, 162 158 35 10, tab 3
  button "GFX info", 150, 162 168 35 10, tab 3
  button "Con info", 151, 162 178 35 10, tab 3
  button "Misc info", 152, 162 188 35 10, tab 3

  box "Servers/Channels/Queries", 161, 2 16 104 150, tab 4
  list 162, 5 24 96 129, size tab 4
  button "refresh", 163, 5 154 25 10, tab 4
  box "Basic Options", 164, 2 167 104 33, tab 4
  radio "Public", 165, 10 177 40 8, tab 4 group
  radio "Personal", 166, 50 177 40 8, tab 4
  check "Color", 167, 10 188 40 8, tab 4
  box "Echo", 171, 109 16 95 120, tab 4
  button "Servers", 172, 118 24 35 10, tab 4
  button "Power", 173, 118 35 35 10, tab 4
  button "Time", 174, 118 46 35 10, tab 4
  button "Uptime", 175, 118 57 35 10, tab 4
  button "Events", 176, 118 68 35 10, tab 4
  button "Text stuff", 177, 118 79 35 10, tab 4
  button "Own words", 178, 118 90 35 10, tab 4
  button "Been stats", 179, 118 101 35 10, tab 4
  button "Have stats", 180, 118 112 35 10, tab 4
  button "Seen stats", 181, 118 123 35 10, tab 4
  button "CPU info", 182, 160 24 35 10, tab 4
  button "OS info", 183, 160 35 35 10, tab 4
  button "Cache info", 184, 160 46 35 10, tab 4
  button "HDD info", 185, 160 57 35 10, tab 4
  button "GFX info", 186, 160 68 35 10, tab 4
  button "Ccon info", 187, 160 79 35 10, tab 4
  button "Eth info", 188, 160 90 35 10, tab 4
  button "Misc info", 189, 160 101 35 10, tab 4
  button "Custom", 190, 160 123 35 10, tab 4
  box "Advanced Options", 192, 109 137 95 63, tab 4
  check "Enable server echoing", 193, 115 145 65 8, tab 4
  radio "Only in:", 194, 115 157 27 8, tab 4 group
  radio "Not in:", 195, 115 169 25 8, tab 4
  radio "Echo in all channels and queries", 196, 115 181 90 8, tab 4
  edit "", 197, 145 156 57 10, tab 4 autohs
  edit "", 198, 145 168 57 10, tab 4 autohs

  menu "&Options", 201
  item "Configuration", 202, 201
  item break, 203, 201
  item "Icons", 204, 201
  item "Colors", 205, 201
  item break, 206, 201
  item "Close", 207, 201
  menu "&Help", 208
  item "Help", 209, 208
}

on *:dialog:stats2:*:*:{
  if ($devent == init) {
    smdx SetMircVersion $version
    smdx MarkDialog $dname
    var %c = smdx SetColor $dname 40,43,45,47,49,63,65,67,71,75,78,80,82,84,86,89,91,93,95,97,99,101,103,115,117,119,121,124,126,128,130,132,135,137,139,141,143
    if (editboxes isin $hg(disp.color.apply)) {
      if (back isin $hg(disp.color.apply)) { %c background $gettok($hg(disp.color),1,32) }
      if (back isin $hg(disp.color.apply)) { %c textbg $gettok($hg(disp.color),1,32) }
      if (text isin $hg(disp.color.apply)) { %c text $gettok($hg(disp.color),2,32) }
    }
    else {
      %c background $rgb(hilight)
      %c textbg $rgb(hilight)
      %c text $rgb(text)
    }
    hi viewed 1

    if ($hg(disp.servers) != classic) {
      did -h $dname 11,12,13,14,15,16,17,18,19,20
      did -v $dname 21,22,23,24,25,26,27,28,29

      smdx SetControlMDX $dname 22,24,26 ListView report labeltip showsel single rowselect $iif($hg(grids),grid) > $sviews
      did -i $dname 22 1 headerdims 120:1 80:2 80:3 50:4 80:5 80:6 80:7 90:8 90:9 80:10 80:11 80:12 70:13 50:14
      did -i $dname 22 1 headertext Server 	Network 	IP address 	Port 	Chan types 	Chan modes 	Mode prefix 	Mode params 	Nickname 	Usermodes 	Connected 	Idle time 	Lag 	Away
      did -i $dname 22 1 seticon normal $icon(serv)
      did -i $dname 24 1 headerdims 80:1 50:2 50:3 50:4 50:5 50:6 100:7 50:8 50:9 50:10 100:11 50:12 50:13
      did -i $dname 24 1 headertext Channel 	Total 	Ops 	Hops 	Voiced 	Regs 	Topic 	Modes 	Key 	Limit 	Logfile 	Win ID 	Con ID
      did -i $dname 24 1 seticon normal $icon(chan)
      did -i $dname 26 1 headerdims 80:1 120:2 70:3 100:4 50:5 50:6
      did -i $dname 26 1 headertext Nickname 	Address 	Comchans 	Logfile 	Win ID 	Con ID
      did -i $dname 26 1 seticon normal $icon(query)

      if (server isin $hg(init)) { stats.servers.new }
    }
    smdx SetControlMDX $dname 12,162 TreeView haslines hasbuttons linesatroot showsel > $sviews
    did -i $dname 12,162 1 iconsize normal small
    did -i $dname 12,162 1 seticon normal $icon(serv)
    did -i $dname 12,162 1 seticon normal $icon(chan)
    did -i $dname 12,162 1 seticon normal $icon(query)
    smdx SetControlMDX $dname 16,17 ListView report labeltip showsel single rowselect $iif($hg(grids),grid) noheader > $sviews
    did -i $dname 16,17 1 headerdims 80:1 140:2

    if (server isin $hg(init)) {
      var %s 1
      while (%s <= $scon(0)) {
        if ($scon(%s).status == connected) {
          did -a $dname 12,162 +e 1 1 $scon(%s).server
          did -i $dname 12,162 1 cb last
          scon %s stats.servers.chans
        }
        inc %s 1
      }
      stats.serverinfo 1
    }
    if (servers isin $hg(disp.color.apply)) {
      if (back isin $hg(disp.color.apply)) { did -i $dname 12 1 setcolor bkg $gettok($hg(disp.color),1,32) }
      if (text isin $hg(disp.color.apply)) { did -i $dname 12 1 setcolor text $gettok($hg(disp.color),2,32) }
      if (line isin $hg(disp.color.apply)) { did -i $dname 12 1 setcolor line $gettok($hg(disp.color),3,32) }
    }
    if (echo isin $hg(disp.color.apply)) {
      if (back isin $hg(disp.color.apply)) { did -i $dname 162 1 setcolor bkg $gettok($hg(disp.color),1,32) }
      if (text isin $hg(disp.color.apply)) { did -i $dname 162 1 setcolor text $gettok($hg(disp.color),2,32) }
      if (line isin $hg(disp.color.apply)) { did -i $dname 162 1 setcolor line $gettok($hg(disp.color),3,32) }
    }
    if (serversl isin $hg(disp.color.apply)) {
      if (back isin $hg(disp.color.apply)) { did -i $dname 16,17,22 1 setbkg color $gettok($hg(disp.color),1,32) }
      if (back isin $hg(disp.color.apply)) { did -i $dname 16,17,22 1 settxt bgcolor $gettok($hg(disp.color),1,32) }
      if (text isin $hg(disp.color.apply)) { did -i $dname 16,17,22 1 settxt color $gettok($hg(disp.color),2,32) }
    }
    if (channels isin $hg(disp.color.apply)) {
      if (back isin $hg(disp.color.apply)) { did -i $dname 24 1 setbkg color $gettok($hg(disp.color),1,32) }
      if (back isin $hg(disp.color.apply)) { did -i $dname 24 1 settxt bgcolor $gettok($hg(disp.color),1,32) }
      if (text isin $hg(disp.color.apply)) { did -i $dname 24 1 settxt color $gettok($hg(disp.color),2,32) }
    }
    if (querys isin $hg(disp.color.apply)) {
      if (back isin $hg(disp.color.apply)) { did -i $dname 26 1 setbkg color $gettok($hg(disp.color),1,32) }
      if (back isin $hg(disp.color.apply)) { did -i $dname 26 1 settxt bgcolor $gettok($hg(disp.color),1,32) }
      if (text isin $hg(disp.color.apply)) { did -i $dname 26 1 settxt color $gettok($hg(disp.color),2,32) }
    }

    if (events isin $hg(init)) {
      smdx SetControlMDX $dname 52 Listview report labeltip showsel single rowselect $iif($hg(grids),grid) > $sviews
      did -i $dname 52 1 headerdims 95:1 75:2 60:3 69:4 65:5 60:6 69:7
      did -i $dname 52 1 headertext Event 	Times 	Per year 	Per month 	Per week 	Per day 	% of total
      .timerstats -o 0 1 stats2
      stats.events
    }
    if (events isin $hg(disp.color.apply)) {
      if (back isin $hg(disp.color.apply)) { did -i $dname 52 1 setbkg color $gettok($hg(disp.color),1,32) }
      if (back isin $hg(disp.color.apply)) { did -i $dname 52 1 settxt bgcolor $gettok($hg(disp.color),1,32) }
      if (text isin $hg(disp.color.apply)) { did -i $dname 52 1 settxt color $gettok($hg(disp.color),2,32) }
    }

    smdx SetControlMDX $dname 60 ToolBar flat list wrap nodivider arrows > $sbars
    smdx SetBorderStyle 60
    did -i $dname 60 1 bmpsize 0 0
    did -a $dname 60 +acgx 0 CPU/OS/Cache
    did -a $dname 60 -
    did -a $dname 60 +acg 0 HDD/GFX
    did -a $dname 60 -
    did -a $dname 60 +acg 0 Connections/Misc
    smdx SetControlMDX $dname 69,73 ProgressBar smooth > $sctl
    smdx SetControlMDX $dname 112 ListView report labeltip showsel single rowselect $iif($hg(grids),grid) > $sviews
    did -i $dname 112 1 headerdims 130:1 70:2 62:3 62:4 62:5
    did -i $dname 112 1 headertext Drive 	Size 	Used 	Free 	% Free
    did -i $dname 112 1 seticon normal $icon(hd)
    did -i $dname 112 1 seticon normal $icon(cd)
    did -i $dname 112 1 seticon normal $icon(rm)
    smdx SetControlMDX $dname 145 ListView report labeltip showsel single rowselect $iif($hg(grids),grid) noheader > $sviews
    did -i $dname 145 1 headerdims 217:1 30:2

    if (hdd isin $hg(disp.color.apply)) {
      if (back isin $hg(disp.color.apply)) { did -i $dname 112 1 setbkg color $gettok($hg(disp.color),1,32) }
      if (back isin $hg(disp.color.apply)) { did -i $dname 112 1 settxt bgcolor $gettok($hg(disp.color),1,32) }
      if (text isin $hg(disp.color.apply)) { did -i $dname 112 1 settxt color $gettok($hg(disp.color),2,32) }
    }
    if (misc isin $hg(disp.color.apply)) {
      if (back isin $hg(disp.color.apply)) { did -i $dname 145 1 setbkg color $gettok($hg(disp.color),1,32) }
      if (back isin $hg(disp.color.apply)) { did -i $dname 145 1 settxt bgcolor $gettok($hg(disp.color),1,32) }
      if (text isin $hg(disp.color.apply)) { did -i $dname 145 1 settxt color $gettok($hg(disp.color),2,32) }
    }

    if (cpu isin $hg(init)) { stats.cpu }
    if (cache isin $hg(init)) { stats.cache }
    if (os isin $hg(init)) { stats.os }
    if (hdd isin $hg(init)) { stats.hdd }
    if (gfx isin $hg(init)) { stats.gfx }
    if (con isin $hg(init)) { stats.con }
    if (misc isin $hg(init)) { stats.misc }

    if ($hg(echo) == public) { did -c $dname 165 }
    elseif ($hg(echo) == personal) { did -c $dname 166 }
    if ($hg(color)) { did -c $dname 167 }
    if ($hg(echo.server)) { did -c $dname 193 }
    if ($hg(echo.chan) == only) { did -c $dname 194 | did -b $dname 198 }
    elseif ($hg(echo.chan) == not) { did -c $dname 195 | did -b $dname 197 }
    elseif ($hg(echo.chan) == all) { did -c $dname 196 | did -b $dname 197,198 }
    did -a $dname 197 $hg(echo.chan.only)
    did -a $dname 198 $hg(echo.chan.not)
  }
  if ($devent == sclick) {
    if ($did == 1) { dialog -t stats2 mIRC Stats v $+ $msver - Servers }
    if ($did == 2) { dialog -t stats2 mIRC Stats v $+ $msver - Events }
    if ($did == 3) { dialog -t stats2 mIRC Stats v $+ $msver - System Stats }
    if ($did == 4) { dialog -t stats2 mIRC Stats v $+ $msver - Echo }
    if ($did == 12) {
      if ($len($right($spage($dname,12).select,-6)) == 1) { did -ra $dname 15 Server info | did -h $dname 16 | did -h $dname 18,19 | did -vr $dname 17 | did -v $dname 20 | tokenize 32 $spage($dname,12).select | stats.serverinfo $calc($2 - 1) }
      else {
        if ($left($sbranch($dname,12),1) == $chr(35)) { did -ra $dname 15 Channel info | did -h $dname 16,20 | did -vr $dname 17 | did -v $dname 18,19 | tokenize 32 $spage($dname,12).select | scon $calc($2 - 1) | stats.channelinfo $calc($2 - 1) $calc($3 - 1) }
        else { did -ra $dname 15 Query info | did -h $dname 17 | did -h $dname 18,19,20 | did -vr $dname 16 | tokenize 32 $spage($dname,12).select | scon $calc($2 - 1) | stats.queryinfo $calc($2 - 1) $query($sbranch($dname,12)) }
      }
    }
    if ($did == 13) || ($did == 163) {
      did -r $dname 12,17,162
      var %s 1
      while (%s <= $scon(0)) {
        if ($scon(%s).status == connected) {
          did -a $dname 12,162 +e 1 1 0 0 $scon(%s).server
          did -i $dname 12,162 1 cb last
          scon %s stats.servers.chans
        }
        inc %s 1
      }
      stats.serverinfo 1
    }
    if ($did == 14) {
      if ($len($right($spage($dname,12).select,-6)) == 1) {
        tokenize 32 $spage($dname,12).select
        if ($scon($calc($1 - 1)).status == connected) { scon $calc($1 - 1) list }
      }
    }
    if ($did == 18) {
      did -r $dname 17
      tokenize 32 $spage($dname,12).select
      scon $calc($2 - 1)
      if ($chan($calc($3 - 1)).ial == $false) { did -a $dname 17 1 1 0 0 IAL not ready 	+ 0 0 0 please wait and try again }
      else {
        did -a $dname 17 1 1 0 0 Total: 	+ 0 0 0 $nick($chan($calc($3 - 1)),0)
        var %c1 $nick($chan($calc($3 - 1)),0)
        var %c2 1
        while (%c2 <= %c1) {
          did -a $dname 17 1 1 0 0 $iif($nick($chan($calc($3 - 1)),%c2) !isreg $chan($calc($3 - 1)),$left($nick($chan($calc($3 - 1)),%c2).pnick,1)) $nick($chan($calc($3 - 1)),%c2) 	+ 0 0 0 $ialchan(*,$chan($calc($3 - 1)),%c2)
          if (%c2 >= 100) { did -a $dname 17 1 1 0 0 too much 	+ 0 0 0 users | break }
          inc %c2 1
        }
      }
    }
    if ($did == 19) {
      did -r $dname 17
      tokenize 32 $spage($dname,12).select
      scon $calc($2 - 1)
      did -a $dname 17 1 1 0 0 Total: 	+ 0 0 0 $ibl($chan($calc($3 - 1)),0)
      if ($ibl($chan($calc($3 - 1)),0) == 0) { did -a $dname 17 1 1 0 0 No bans... 	+ 0 0 0 }
      else {
        var %b1 $ibl($chan($calc($3 - 1)),0)
        var %b2 1
        while (%b2 <= %b1) {
          did -a $dname 17 1 1 0 0 by $ibl($chan($calc($3 - 1)),%b2).by at $ibl($chan($calc($3 - 1)),%b2).date 	+ 0 0 0 $ibl($chan($calc($3 - 1)),%b2)
          if (%b2 >= 50) { did -a $dname 17 1 1 0 0 too much 	+ 0 0 0 users | break }
          inc %b2 1
        }
      }
    }
    if ($did == 20) {
      did -r $dname 17
      var %p1 = $scon(0),%p2 = 1,%p3 = 0,%p4 = 0,%p5 = 0,%p6 = 0,%p7 = 0
      while (%p2 <= %p1) {
        scon %p2
        set %p3 $calc(%p3 + $chan(0))
        var %p8 $chan(0),%p9 = 1
        while (%p9 <= %p8) {
          if ($me isop $chan(%p9)) { inc %p4 1 | set %p7 $calc(%p7 + $nick($chan(%p9),0,a,o)) }
          if ($me ishop $chan(%p9)) { inc %p5 1 | set %p7 $calc(%p7 + $nick($chan(%p9),0,a,oh)) }
          if ($me isvoice $chan(%p9)) { inc %p6 1 | set %p7 $calc(%p7 + $nick($chan(%p9),0,r)) }
          inc %p9 1
        }
        inc %p2 1
      }
      did -a $dname 17 0 0 1 1 Servers: 	+ 0 0 0 %p1
      did -a $dname 17 0 0 1 1 Channels: 	+ 0 0 0 %p3
      did -a $dname 17 0 0 1 1 	+ 0 0 0
      did -a $dname 17 0 0 1 1 Op in: 	+ 0 0 0 %p4 channels
      did -a $dname 17 0 0 1 1 Halfop in: 	+ 0 0 0 %p5 channels
      did -a $dname 17 0 0 1 1 Voice in: 	+ 0 0 0 %p6 channels
      did -a $dname 17 0 0 1 1 	+ 0 0 0
      did -a $dname 17 0 0 1 1 Power over: 	+ 0 0 0 %p7 peons
    }
    if ($did == 22) && ($gettok($did(22,1),1,32) == sclick) { stats.chans.new $calc($did(22).sel - 1) }
    if ($did == 27) { did -r $dname 22,24,26 | stats.servers.new }
    if ($did == 28) { if ($scon($calc($did(22).sel - 1)).status == connected) { scon $calc($did(22).sel - 1) list } }
    if ($did == 29) { if (!$dialog(stats.power)) { dialog -m stats.power stats.power } }
    if ($did == 53) { stats been }
    if ($did == 54) { stats have }
    if ($did == 55) { stats seen }
    if ($did == 56) { stats.events }
    if ($did == 60) {
      var %s = $did(60).sel
      if (%s == 2) {
        did -o $dname 60 2 +acgx 0 CPU/OS/Cache | did -o $dname 60 4 +acg 0 HDD/GFX | did -o $dname 60 6 +acg 0 Connections/Misc
        did -h $dname 111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,153,154,155,156,157
        did -v $dname 61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103
      }
      elseif (%s == 4) {
        did -o $dname 60 2 +acg 0 CPU/OS/Cache | did -o $dname 60 4 +acgx 0 HDD/GFX | did -o $dname 60 6 +acg 0 Connections/Misc
        did -h $dname 61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,153,154,155,156,157
        did -v $dname 111,112,113,114,115,116,117,118,119,120,121
      }
      elseif (%s == 6) {
        did -o $dname 60 2 +acg 0 CPU/OS/Cache | did -o $dname 60 4 +acg 0 HDD/GFX | did -o $dname 60 6 +acgx 0 Connections/Misc
        did -h $dname 61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,111,112,113,114,115,116,117,118,119,120,121
        did -v $dname 122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,153,154,155,156,157
      }
    }
    if ($did == 147) { stats.cpu | stats.cache }
    if ($did == 148) { stats.os }
    if ($did == 149) { stats.hdd }
    if ($did == 150) { stats.gfx }
    if ($did == 151) { stats.con }
    if ($did == 152) { stats.misc }
    if ($did == 165) { ha echo public }
    if ($did == 166) { ha echo personal }
    if ($did == 167) { ha color $did(167).state }
    if ($did == 193) { ha echo.server $did(193).state }
    if ($did == 194) { ha echo.chan only | did -b $dname 198 | did -e $dname 197 }
    if ($did == 195) { ha echo.chan not | did -b $dname 197 | did -e $dname 198 }
    if ($did == 196) { ha echo.chan all | did -b $dname 197,198 }

    if ($did isnum 172-190) {
      var %b = $sbranch($dname,162)
      did -i $dname 162 1 cb select
      tokenize 32 $spage($dname,162).select
      scon $calc($2 - 1)

      if ($did == 172) { var %e = $stats.echo(servers) }
      if ($did == 173) { var %e = $stats.echo(power) }
      if ($did == 174) { var %e = $stats.echo(time) }
      if ($did == 175) { var %e = $stats.echo(uptime) }
      if ($did == 176) { var %e = $stats.echo(events) }
      if ($did == 177) { var %e = $stats.echo(texts) }
      if ($did == 178) { var %e = $stats.echo(words) }
      if ($did == 179) { var %e = $stats.echo(been) }
      if ($did == 180) { var %e = $stats.echo(have) }
      if ($did == 181) { var %e = $stats.echo(seen) }
      if ($did == 182) { var %e = $stats.echo(cpu) }
      if ($did == 183) { var %e = $stats.echo(os) }
      if ($did == 184) { var %e = $stats.echo(cache) }
      if ($did == 185) { var %e = $stats.echo(hdd) }
      if ($did == 186) { var %e = $stats.echo(gfx) }
      if ($did == 187) { var %e = $stats.echo(con) }
      if ($did == 188) { var %e = $stats.echo(eth) }
      if ($did == 189) { var %e = $stats.echo(misc) }
      if ($did == 190) { var %e = $stats.echo(custom) }

      if (%e) {
        var %i = 1
        while ($gettok(%e,%i,9)) {
          if ($0 == 2) { if ($hg(echo.server)) { servecho $gettok(%e,%i,9) } }
          elseif ($hg(echo) == personal) || (!$server) { echo -a $gettok(%e,%i,9) }
          elseif (%b) { msg %b $gettok(%e,%i,9) }
          inc %i
        }
        hi echo.total 1
        if ($hg(autoupdate)) { stats.update e 5 echo }
      }
    }
  }
  if ($devent == edit) {
    if ($did == 197) { ha echo.chan.only $did(197) }
    if ($did == 198) { ha echo.chan.not $did(198) }
  }
  if ($devent == menu) {
    if ($did == 202) { stats config }
    if ($did == 204) { stats icons }
    if ($did == 205) { stats color }
    if ($did == 207) { dialog -x stats2 stats2 }
    if ($did == 209) { stats help }
  }
  if ($devent == close) { ha pos.stats $dialog(stats2).x $dialog(stats2).y }
}

dialog -l stats.power {
  title "Power"
  size -1 -1 80 74
  option dbu
  text "Servers:", 1, 4 2 30 8
  text "", 2, 43 2 50 8
  text "Channels:", 3, 4 10 30 8
  text "", 4, 43 10 50 8
  text "Op in:", 5, 4 23 30 8
  text "", 6, 43 23 50 8
  text "Halfop in:", 7, 4 31 30 8
  text "", 8, 43 31 50 8
  text "Voice in:", 9, 4 39 30 8
  text "", 10, 43 39 50 8
  text "Power over:", 11, 4 52 30 8
  text "", 12, 43 52 50 8
  text "", 13, 2 61 76 1
  button "close", 14, 53 63 25 10, cancel
}
on *:dialog:stats.power:init:*:{
  smdx SetMircVersion $version
  smdx MarkDialog $dname
  smdx SetBorderStyle $dname 13 staticedge
  var %p1 = $scon(0),%p2 = 1,%p3 = 0,%p4 = 0,%p5 = 0,%p6 = 0,%p7 = 0
  while (%p2 <= %p1) {
    scon %p2
    set %p3 $calc(%p3 + $chan(0))
    var %p8 $chan(0),%p9 = 1
    while (%p9 <= %p8) {
      if ($me isop $chan(%p9)) { inc %p4 1 | set %p7 $calc(%p7 + $nick($chan(%p9),0,a,o)) }
      if ($me ishop $chan(%p9)) { inc %p5 1 | set %p7 $calc(%p7 + $nick($chan(%p9),0,a,oh)) }
      if ($me isvoice $chan(%p9)) { inc %p6 1 | set %p7 $calc(%p7 + $nick($chan(%p9),0,r)) }
      inc %p9 1
    }
    inc %p2 1
  }
  did -a $dname 2 %p1
  did -a $dname 4 %p3
  did -a $dname 6 %p4 channels
  did -a $dname 8 %p5 channels
  did -a $dname 10 %p6 channels
  did -a $dname 12 %p7 peons
}

;########### been/have/seen dialogs along with their events ############

dialog -l been {
  title "Been Stats"
  size $position(been) 248 104
  option dbu

  text "", 1, 3 2 100 8
  list 2, 2 10 244 82, size extsel
  button "Close", 3, 221 93 25 10, cancel
  button "Echo", 4, 29 93 25 10
  button "Refresh", 5, 2 93 25 10
}
on *:dialog:been:*:*:{
  if ($devent == init) {
    smdx SetMircVersion $version
    smdx MarkDialog $dname
    smdx SetControlMDX $dname 2 ListView report labeltip showsel single rowselect $iif($hg(grids),grid) > $sviews
    did -i $dname 2 1 headerdims 85:1 75:2 60:3 69:4 65:5 60:6 69:7
    did -i $dname 2 1 headertext You've been 	Times 	Per year 	Per month 	Per week 	Per day 	% of total
    if (been isin $hg(disp.color.apply)) {
      if (back isin $hg(disp.color.apply)) { did -i $dname 2 1 setbkg color $gettok($hg(disp.color),1,32) }
      if (back isin $hg(disp.color.apply)) { did -i $dname 2 1 settxt bgcolor $gettok($hg(disp.color),1,32) }
      if (text isin $hg(disp.color.apply)) { did -i $dname 2 1 settxt color $gettok($hg(disp.color),2,32) }
    }
    stats.events -b
  }
  if ($devent == sclick) {
    if ($did == 4) { msg $$?="channel/nick:" $stats.echo(been) }
    if ($did == 5) { stats.events -b }
  }
  if ($devent == close) { ha pos.been $dialog(been).x $dialog(been).y }
}


dialog -l have {
  title "Have Stats"
  size $position(have) 248 153
  option dbu

  text "", 1, 3 2 100 8
  list 2, 2 10 244 131, size extsel
  button "Close", 3, 221 142 25 10, cancel
  button "Echo", 4, 29 142 25 10
  button "Refresh", 5, 2 142 25 10
}
on *:dialog:have:*:*:{
  if ($devent == init) {
    smdx SetMircVersion $version
    smdx MarkDialog $dname
    smdx SetControlMDX $dname 2 ListView report labeltip showsel single rowselect $iif($hg(grids),grid) > $sviews
    did -i $dname 2 1 headerdims 85:1 75:2 60:3 69:4 65:5 60:6 69:7
    did -i $dname 2 1 headertext You have 	Times 	Per year 	Per month 	Per week 	Per day 	% of total
    if (have isin $hg(disp.color.apply)) {
      if (back isin $hg(disp.color.apply)) { did -i $dname 2 1 setbkg color $gettok($hg(disp.color),1,32) }
      if (back isin $hg(disp.color.apply)) { did -i $dname 2 1 settxt bgcolor $gettok($hg(disp.color),1,32) }
      if (text isin $hg(disp.color.apply)) { did -i $dname 2 1 settxt color $gettok($hg(disp.color),2,32) }
    }
    stats.events -h
  }
  if ($devent == sclick) {
    if ($did == 4) { msg $$?="channel/nick:" $stats.echo(have) }
    if ($did == 5) { stats.events -h }
  }
  if ($devent == close) { ha pos.have $dialog(have).x $dialog(have).y }
}


dialog -l seen {
  title "Seen Stats"
  size $position(been) 248 139
  option dbu

  text "", 1, 3 2 100 8
  list 2, 2 10 244 117, size extsel
  button "Close", 3, 221 128 25 10, cancel
  button "Echo", 4, 29 128 25 10
  button "Refresh", 5, 2 128 25 10
}
on *:dialog:seen:*:*:{
  if ($devent == init) {
    smdx SetMircVersion $version
    smdx MarkDialog $dname
    smdx SetControlMDX $dname 2 ListView report labeltip showsel single rowselect $iif($hg(grids),grid) > $sviews
    did -i $dname 2 1 headerdims 85:1 75:2 60:3 69:4 65:5 60:6 69:7
    did -i $dname 2 1 headertext You've seen 	Times 	Per year 	Per month 	Per week 	Per day 	% of total
    if (seen isin $hg(disp.color.apply)) {
      if (back isin $hg(disp.color.apply)) { did -i $dname 2 1 setbkg color $gettok($hg(disp.color),1,32) }
      if (back isin $hg(disp.color.apply)) { did -i $dname 2 1 settxt bgcolor $gettok($hg(disp.color),1,32) }
      if (text isin $hg(disp.color.apply)) { did -i $dname 2 1 settxt color $gettok($hg(disp.color),2,32) }
    }
    stats.events -s
  }
  if ($devent == sclick) {
    if ($did == 4) { msg $$?="channel/nick:" $stats.echo(seen) }
    if ($did == 5) { stats.events -s }
  }
  if ($devent == close) { ha pos.seen $dialog(seen).x $dialog(seen).y }
}


;############## events ###############

on *:START:{
  if (!$hget(stats)) { hmake stats 15 }
  if ($exists($+(",$scriptdirstats.src,"))) { hload stats $shortfn($scriptdir) $+ stats.src }
  hi started 1
  if ($hg(webstart)) { statsweb $iif($hg(webstartport),$ifmatch) }
  if ($hg(saveevery)) && ($hg(saveeverynum)) { .timersavestats -i 0 $calc($hg(saveeverynum) * 60) hsave -o stats $shortfn($scriptdir) $+ stats.src }
  .stats.updatecheck
}
on *:EXIT:{ hsave -o stats $shortfn($scriptdir) $+ stats.src }
on *:CONNECT:{
  .timertotalonline -i 0 1 hi totalonline 1
  hi have.connected 1
  stats.update h 16 connected
}
on *:DISCONNECT:{
  if ($nick == $me) { hi have.quit 1 | stats.update h 12 quit }
  else { hi seen.quit 1 | stats.update s 12 quit }
}
on *:JOIN:#:{
  if ($nick == $me) { hi have.joined 1 | stats.update h 13 joined }
  else { hi seen.joined 1 | stats.update s 14 joined }
}
on *:PART:#:{
  if ($nick == $me) { hi have.parted 1 | stats.update h 14 parted }
  else { hi seen.parted 1 | stats.update s 14 parted }
}
on *:OPEN:?:{ hi have.query 1 | stats.update h 15 query }
on *:NICK:{
  if ($nick == $me) { hi have.nick 1 | stats.update h 10 nick }
  else { hi seen.nick 1 | stats.update s 10 nick }
}
on *:TOPIC:#:{
  if ($nick == $me) { hi have.topic 1 | stats.update h 11 topic }
  else { hi seen.topic 1 | stats.update s 11 topic }
}
on *:QUIT:{
  if ($nick == $me) { hi have.quit 1 | stats.update h 12 }
  else { hi seen.quit 1 | stats.update s 12 quit }
}
on *:OP:#:{
  if ($opnick == $me) { hi been.oped 1 | stats.update b 2 oped }
  if ($nick == $me) { hi have.oped 1 | stats.update h 2 oped }
  else { hi seen.oped 1 | stats.update s 2 oped }
}
on *:SERVEROP:#:{
  if ($opnick == $me) { hi been.oped 1 | stats.update b 2 oped }
  if ($nick == $me) { hi have.oped 1 | stats.update h 2 oped }
  else { hi seen.oped 1 | stats.update s 2 oped }
}
on *:DEOP:#:{
  if ($opnick == $me) { hi been.deoped 1 | stats.update b 3 deoped }
  if ($nick == $me) { hi have.deoped 1 | stats.update h 3 deoped }
  else { hi seen.deoped 1 | stats.update s 3 deoped }
}
on *:HELP:#:{
  if ($hnick == $me) { hi been.halfoped 1 | stats.update b 4 halfoped }
  if ($nick == $me) { hi have.halfoped 1 | stats.update h 4 halfoped }
  else { hi seen.halfoped 1 | stats.update s 4 halfoped }
}
on *:DEHELP:#:{
  if ($hnick == $me) { hi been.dehalfoped 1 | stats.update b 5 dehalfoped }
  if ($nick == $me) { hi have.dehalfoped 1 | stats.update h 5 dehalfoped }
  else { hi seen.dehalfoped 1 | stats.update s 5 dehalfoped }
}
on *:VOICE:#:{
  if ($vnick == $me) { hi been.voiced 1 | stats.update b 6 voiced }
  if ($nick == $me) { hi have.voiced 1 | stats.update h 6 voiced }
  else { hi seen.voiced 1 | stats.update s 6 voiced }
}
on *:DEVOICE:#:{
  if ($vnick == $me) { hi been.devoiced 1 | stats.update b 7 devoiced }
  if ($nick == $me) { hi have.devoiced 1 | stats.update h 7 devoiced }
  else { hi seen.devoiced 1 | stats.update s 7 devoiced }
}
on *:KICK:#:{
  if ($knick == $me) { hi been.kicked 1 | stats.update b 8 kicked }
  if ($nick == $me) { hi have.kicked 1 | stats.update h 8 kicked }
  else { hi seen.kicked 1 | stats.update s 8 kicked }
}
on *:BAN:#:{
  if ($bnick == $me) { hi been.banned 1 | stats.update b 9 banned }
  if ($nick == $me) { hi have.banned 1 | stats.update h 9 banned }
  else { hi seen.banned 1 | stats.update s 9 banned }
}
on *:FILESENT:*:{
  hi dccsend 1
  hi dccsendsize $file($filename).size)
  if ($dialog(stats2)) && ($hg(autoupdate)) { did -ra stats2 34 Files sent: $hg(dccsend) | did -ra stats2 35 Size: $bytes($hg(dccsendsize),3).suf }
}
on *:FILERCVD:*:{
  hi dccget 1
  hi dccgetsize $file($filename).size)
  if ($dialog(stats2)) && ($hg(autoupdate)) { did -ra stats2 36 Files sent: $hg(dccget) | did -ra stats2 37 Size: $bytes($hg(dccgetsize),3).suf }
}
on *:INPUT:*:{
  hi chars $len($1-)
  hi words $0
  hi lines 1
  if ($istok($right($1-,1),!,32)) || ($istok($right($1-,1),?,32)) || ($istok($right($1-,1),.,32)) || ($istok($right($1-,1),:,32)) || ($istok($right($1-,1),;,32)) { hi puncs 1 }
  if (: $+ $chr(41) isin $1-) || (; $+ $chr(41) isin $1-) || (: $+ $chr(40) isin $1-) || (:D isin $1-) || (:P isin $1-) || (:o isin $1-) || (:S isin $1-) { hi smilies 1 }
  if (:| isin $1-) || (:x isin $1-) || (:/ isin $1-) || (:-x isin $1-) || (:-/ isin $1-) || (:' $+ $chr(40) isin $1-) || (:$ isin $1-) || (:- $+ $chr(41) isin $1-) { hi smilies 1 }
  if (;- $+ $chr(41) isin $1-) || (:- $+ $chr(40) isin $1-) || (:-D isin $1-) || (:-P isin $1-) || (:-o isin $1-) || (:-S isin $1-) || (:-| isin $1-) || (:-$ isin $1-) { hi smilies 1 }
  var %c = 1
  while (%c <= $hfind(stats,custom.*,0,w)) {
    if ($gettok($hfind(stats,custom.*,%c,w),2,46) isin $1-) {
      var %h = $hfind(stats,custom.*,%c,w)
      hi %h 1
      stats.update e $calc(16 + %c) %h
    }
    inc %c
  }
  stats.update e 10 lines
  stats.update e 11 words
  stats.update e 12 chars
  stats.update e 13 puncs
  stats.update e 14 smilies
}


;################### webpage #############


on 1:socklisten:stats:{
  var %temp = $r(1,200000)
  sockaccept stats $+ %temp
}

on 1:sockread:stats*:{
  sockread %line
  tokenize 32 %line
  if ($1 == GET) {
    if ($isfile($hg(webcurscript))) { if (!$script($hg(webcurscript))) { .load -rs $+(",$hg(webcurscript),") } }
    else {
      var %q = $sock($1).sq
      if (!%q) { sockclose $sockname }
      else { .timer -m 1 $calc(%q /5) sclose $sockname }
      unset %line
      halt
    }

    if ($hg(webreport)) { echo -a 10(9!10) $sock($sockname).ip accessed/refreshed your mIRC Stats webpage. }
    hi pagehits 1
    $stats.read($hg(webcurrent),alias) $2

    var %q = $sock($1).sq
    if (!%q) { sockclose $sockname }
    else { .timer -m 1 $calc(%q /5) sclose $sockname }
  }
  unset %line
}



;############# menubars - only part that may be moved/edited :) - yeh I know it's a bit retarted with the groups now.. wait till I make the menu system ############

#menu.menubar on

menu menubar {
  -
  mIRC Stats
  .dialogs
  ..main dialog $iif($hg(menu.commands),	/stats) :stats
  ..configuration $iif($hg(menu.commands),	/stats config) :stats config
  ..-
  ..been stats $iif($hg(menu.commands),	/stats been) :stats been
  ..have stats $iif($hg(menu.commands),	/stats have) :stats have
  ..seen stats $iif($hg(menu.commands),	/stats seen) :stats seen
  .launch webpage $iif($hg(menu.commands), 	/statsweb) :statsweb
  .-
  .help $iif($hg(menu.commands),	/stats help) :stats help
  .-
  .unload
  ..confirm:unload -rs $script
}
#menu.menubar end

#menu.status off
menu status {
  -
  mIRC Stats
  .dialogs
  ..main dialog $iif($hg(menu.commands),	/stats) :stats
  ..configuration $iif($hg(menu.commands),	/stats config) :stats config
  ..-
  ..been stats $iif($hg(menu.commands),	/stats been) :stats been
  ..have stats $iif($hg(menu.commands),	/stats have) :stats have
  ..seen stats $iif($hg(menu.commands),	/stats seen) :stats seen
  .launch webpage $iif($hg(menu.commands), 	/statsweb) :statsweb
  .-
  .help $iif($hg(menu.commands),	/stats help) :stats help
}
#menu.status end


#menu.channel on
menu channel {
  -
  mIRC Stats
  .dialogs
  ..main dialog $iif($hg(menu.commands),	/stats) :stats
  ..configuration $iif($hg(menu.commands),	/stats config) :stats config
  ..-
  ..been stats $iif($hg(menu.commands),	/stats been) :stats been
  ..have stats $iif($hg(menu.commands),	/stats have) :stats have
  ..seen stats $iif($hg(menu.commands),	/stats seen) :stats seen
  .launch webpage $iif($hg(menu.commands), 	/statsweb) :statsweb
  .-
  .help $iif($hg(menu.commands),	/stats help) :stats help
  .-
  .echo stats
  ..Servers $iif($hg(menu.commands),	/secho servers) :secho servers
  ..Power $iif($hg(menu.commands),	/secho power) :secho power
  ..-
  ..Time $iif($hg(menu.commands),	/secho time) :secho time
  ..Uptime $iif($hg(menu.commands),	/secho uptime) :secho uptime
  ..Events $iif($hg(menu.commands),	/secho events) :secho events
  ..Text stuff $iif($hg(menu.commands),	/secho texts) :secho texts
  ..-
  ..Been stats $iif($hg(menu.commands),	/secho been) :secho been
  ..Have stats $iif($hg(menu.commands),	/secho have) :secho have
  ..Seen stats $iif($hg(menu.commands),	/secho seen) :secho seen
  ..-
  ..CPU info $iif($hg(menu.commands),	/secho cpu) :secho cpu
  ..OS info $iif($hg(menu.commands), 	/secho os) :secho os
  ..Cache info $iif($hg(menu.commands),	/secho cache) : secho cache
  ..HDD info $iif($hg(menu.commands),	/secho hdd) :secho hdd
  ..GFX info $iif($hg(menu.commands),	/secho gfx) :secho gfx
  ..Connection info $iif($hg(menu.commands),	/secho con) :secho con
  ..Network info $iif($hg(menu.commands),	/secho eth) :secho eth
  ..-
  ..Custom $iif($hg(menu.commands),	/secho custom) :secho custom
}
#menu.channel end

#menu.query on
menu query {
  -
  mIRC Stats
  .dialogs
  ..main dialog $iif($hg(menu.commands),	/stats) :stats
  ..configuration $iif($hg(menu.commands),	/stats config) :stats config
  ..-
  ..been stats $iif($hg(menu.commands),	/stats been) :stats been
  ..have stats $iif($hg(menu.commands),	/stats have) :stats have
  ..seen stats $iif($hg(menu.commands),	/stats seen) :stats seen
  .launch webpage $iif($hg(menu.commands), 	/statsweb) :statsweb
  .-
  .help $iif($hg(menu.commands),	/stats help) :stats help
  .-
  .echo stats
  ..Servers $iif($hg(menu.commands),	/secho servers) :secho servers
  ..Power $iif($hg(menu.commands),	/secho power) :secho power
  ..-
  ..Time $iif($hg(menu.commands),	/secho time) :secho time
  ..Uptime $iif($hg(menu.commands),	/secho uptime) :secho uptime
  ..Events $iif($hg(menu.commands),	/secho events) :secho events
  ..Text stuff $iif($hg(menu.commands),	/secho texts) :secho texts
  ..-
  ..Been stats $iif($hg(menu.commands),	/secho been) :secho been
  ..Have stats $iif($hg(menu.commands),	/secho have) :secho have
  ..Seen stats $iif($hg(menu.commands),	/secho seen) :secho seen
  ..-
  ..CPU info $iif($hg(menu.commands),	/secho cpu) :secho cpu
  ..OS info $iif($hg(menu.commands), 	/secho os) :secho os
  ..Cache info $iif($hg(menu.commands),	/secho cache) : secho cache
  ..HDD info $iif($hg(menu.commands),	/secho hdd) :secho hdd
  ..GFX info $iif($hg(menu.commands),	/secho gfx) :secho gfx
  ..Connection info $iif($hg(menu.commands),	/secho con) :secho con
  ..Network info $iif($hg(menu.commands),	/secho eth) :secho eth
  ..-
  ..Custom $iif($hg(menu.commands),	/secho custom) :secho custom
  .$iif($1,CTCP)
  ..$iif($hg(menu.commands),$style(2) Command $+ $chr(58) 	/ctcp $1 STATS [info]):bla
  ..-
  ..Power $iif($hg(menu.commands),	POWER) :ctcp $$1 STATS POWER
  ..-
  ..Time $iif($hg(menu.commands),	TIME) :ctcp $$1 STATS TIME
  ..Uptime $iif($hg(menu.commands),	UPTIME) :ctcp $$1 STATS UPTIME
  ..Events $iif($hg(menu.commands),	EVENTS) :ctcp $$1 STATS EVENTS
  ..Text stuff $iif($hg(menu.commands),	TEXTS) :ctcp $$1 STATS TEXTS
  ..-
  ..Been stats $iif($hg(menu.commands),	BEEN) :ctcp $$1 STATS BEEN
  ..Have stats $iif($hg(menu.commands),	HAVE) :ctcp $$1 STATS HAVE
  ..Seen stats $iif($hg(menu.commands),	SEEN) :ctcp $$1 STATS SEEN
  ..-
  ..CPU info $iif($hg(menu.commands),	CPU) :ctcp $$1 STATS CPU
  ..OS info $iif($hg(menu.commands), 	OS) :ctcp $$1 STATS OS
  ..Cache info $iif($hg(menu.commands),	CACHE) :ctcp $$1 STATS CACHE
  ..GFX info $iif($hg(menu.commands),	GFX) :ctcp $$1 STATS GFX
  ..Connection info $iif($hg(menu.commands),	CON) :ctcp $$1 STATS CON
  ..Network info $iif($hg(menu.commands),	ETH) :ctcp $$1 STATS ETH
  ..-
  ..Custom $iif($hg(menu.commands),	CUSTOM) :ctcp $$1 STATS CUSTOM
}
#menu.query end

#menu.nicklist off
menu nicklist {
  -
  mIRC Stats
  .dialogs
  ..main dialog $iif($hg(menu.commands),	/stats) :stats
  ..configuration $iif($hg(menu.commands),	/stats config) :stats config
  ..-
  ..been stats $iif($hg(menu.commands),	/stats been) :stats been
  ..have stats $iif($hg(menu.commands),	/stats have) :stats have
  ..seen stats $iif($hg(menu.commands),	/stats seen) :stats seen
  .launch webpage $iif($hg(menu.commands), 	/statsweb) :statsweb
  .-
  .help $iif($hg(menu.commands),	/stats help) :stats help
  .-
  .$iif($1,CTCP)
  ..$iif($hg(menu.commands),$style(2) Command $+ $chr(58) 	/ctcp $1 STATS [info]):bla
  ..-
  ..Power $iif($hg(menu.commands),	POWER) :ctcp $$1 STATS POWER
  ..-
  ..Time $iif($hg(menu.commands),	TIME) :ctcp $$1 STATS TIME
  ..Uptime $iif($hg(menu.commands),	UPTIME) :ctcp $$1 STATS UPTIME
  ..Events $iif($hg(menu.commands),	EVENTS) :ctcp $$1 STATS EVENTS
  ..Text stuff $iif($hg(menu.commands),	TEXTS) :ctcp $$1 STATS TEXTS
  ..-
  ..Been stats $iif($hg(menu.commands),	BEEN) :ctcp $$1 STATS BEEN
  ..Have stats $iif($hg(menu.commands),	HAVE) :ctcp $$1 STATS HAVE
  ..Seen stats $iif($hg(menu.commands),	SEEN) :ctcp $$1 STATS SEEN
  ..-
  ..CPU info $iif($hg(menu.commands),	CPU) :ctcp $$1 STATS CPU
  ..OS info $iif($hg(menu.commands), 	OS) :ctcp $$1 STATS OS
  ..Cache info $iif($hg(menu.commands),	CACHE) :ctcp $$1 STATS CACHE
  ..GFX info $iif($hg(menu.commands),	GFX) :ctcp $$1 STATS GFX
  ..Connection info $iif($hg(menu.commands),	CON) :ctcp $$1 STATS CON
  ..Network info $iif($hg(menu.commands),	ETH) :ctcp $$1 STATS ETH
  ..-
  ..Custom $iif($hg(menu.commands),	CUSTOM) :ctcp $$1 STATS CUSTOM
}
#menu.nicklist end

```
