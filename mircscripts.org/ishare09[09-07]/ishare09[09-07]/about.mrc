menu status,menubar {
  iShare
  .Open:srd
  .-
  .Help:_help
  .- 
  .Exit iShare:exit
}

menu channel {
  Channel:Channel
  -
  iShare
  .Open:ishare
  .Help:ishare help
  .-
  .Say share status:msg # Sharing: $-(config,share!) $iif($-(config,share!) == on, / $-(sys,sharedfiles) files $+($chr(40),$-(sys,sharedsize),$chr(41))) | msg # Sends: $+($send(0),/,$-(que,maxsends)) - Gets: $+($get(0),/,$-(que,maxdown))
  .Advertise: msg # Im using   $_logo v $+  $_logo(.) - Get it at: $-(config,url)
}

dialog _logs {

  size -1 -1 286 205
  option dbu
  box Logging:, 1, 5 5 48 182
  box Item:, 21, 5 187  277 15
  text , 22, 10 194 250 7
  check Downloads, 2, 11 19 40 8
  check Uploads, 3, 11 29 38 8
  check Sendfail, 4, 11 39 37 8
  check Getfail, 5, 11 49 33 8
  box Logs:, 6, 58 4 223 182
  list 7, 63 15 50 31, size sort
  list 8, 121 15 155 166, vsbar autovs size
  button Open, 9, 63 55 50 12
  button Delete/Clear, 10, 62 74 50 12
  button &Close, 11, 63 168 50 12, ok
  text Total log size: , 12, 10 135 45 8
  text  , 13, 5 146 38 8, right

}

on 1:dialog:_logs:sclick:*: {
  if ($did == 2) { if ($did(_logs,2).state == 1) + logs gets 1 | else + logs gets 0 }
  if ($did == 3) { if ($did(_logs,3).state == 1) + logs sends 1 | else + logs sends 0 }
  if ($did == 4) { if ($did(_logs,4).state == 1) + logs sendfail 1 | else + logs sendfail 0 }
  if ($did == 5) { if ($did(_logs,5).state == 1) + logs getfail 1 | else + logs getfail 0 }
  if ($did == 8) { did -ar _logs 22 $did(_logs,8).seltext    }
  if ($did == 7) { did -r _logs 8 |  _log.show2 $did(_logs,7).seltext  }
  if ($did == 9) {  if ($did(_logs,7).sel) run $+(system\logs\,$did(_logs,7).seltext) }
  if ($did == 10) {   if ($did(_logs,7).sel) write -c $+(system\logs\,$did(_logs,7).seltext) | _log  }

}
ON 1:dialog:_logs:init:0: {
  did -ar _logs 13 $_log.size
  .dll dll\mdx.dll SetMircVersion $version
  .dll dll\mdx.dll MarkDialog $dname
  dll dll\mdx.dll SetFont $dname 2,3,4,5,7,8,10,11,12,13 13 400 arial
  dll dll\mdx.dll SetFont $dname 1,6,21 13 400 verdana

  dll dll\mdx.dll SetFont $dname 22 13 400 verdana

  dll dll\mdx.dll SetColor 22 text $rgb(153,102,0)  
  _log.show
  if ($-(logs,getfail) == 1) did -c _logs 5
  if ($-(logs,sendfail) == 1) did -c _logs 4
  if ($-(logs,gets) == 1) did -c _logs 2
  if ($-(logs,sends) == 1) did -c _logs 3
  dialog -t _logs $_logo(v) - $_message(dialog,m1) 
}

alias _log { if (!$dialog(_logs)) dialog -om _logs _logs | else {  dialog -x _logs | dialog -m _logs _logs } }
alias _log.size {
  if ($exists(system\logs\getfail.txt)) var %1 $file(system\logs\getfail.txt).size 
  if ($exists(system\logs\sendfail.txt)) var %2 $file(system\logs\sendfail.txt).size 
  if ($exists(system\logs\gets.txt)) var %3 $file(system\logs\gets.txt).size 
  if ($exists(system\logs\sends.txt)) var %4 $file(system\logs\sends.txt).size 
  var %5 $calc(%1 + %2 + %3 + %4) 
  return $bytes(%5).suf
}
alias _log.show  {
  if ($exists(system\logs\getfail.txt)) did -a _logs 7 Getfail.txt
  if ($exists(system\logs\sendfail.txt)) did -a _logs 7 Sendfail.txt 
  if ($exists(system\logs\gets.txt)) did -a _logs 7 Gets.txt
  if ($exists(system\logs\sends.txt)) did -a _logs 7 Sends.txt
}
alias _log.show2 {
  var %x $1
  if ($1 == Getfail.txt)  {
    %i = 1
    while ($read(system\logs\getfail.txt, w,*,%i)) { inc %i  }
    did -a _logs 8 Get fail log:
    did -a _logs 8 $str(-,30)
    while (%i >= 1) { did -a _logs 8 $read(system\logs\getfail.txt, w,*,%i) | dec %i  } 

    if (!$read(system\logs\getfail.txt, w,*,1)) did -a _logs 8 * No log entries yet...
  }
  if ($1 == Sends.txt)  {
    %i = 1
    while ($read(system\logs\sends.txt, w,*,%i)) { inc %i  }
    did -a _logs 8 Uploads log:
    did -a _logs 8 $str(-,30)
    while (%i >= 1) { did -a _logs 8 $read(system\logs\sends.txt, w,*,%i) | dec %i  } 

    if (!$read(system\logs\sends.txt, w,*,1)) did -a _logs 8 * No log entries yet...


  }
  if ($1 == sendfail.txt)  {
    %i = 1
    while ($read(system\logs\sendfail.txt, w,*,%i)) { inc %i  }
    did -a _logs 8 Send fail log:
    did -a _logs 8 $str(-,30)
    while (%i >= 1) { did -a _logs 8 $read(system\logs\sendfail.txt, w,*,%i) | dec %i  } 

    if (!$read(system\logs\sendfail.txt, w,*,1)) did -a _logs 8 * No log entries yet...

  }

  if ($1 == Gets.txt)  {
    %i = 1
    while ($read(system\logs\gets.txt, w,*,%i)) { inc %i  }
    did -a _logs 8 Download log:
    did -a _logs 8 $str(-,30)
    while (%i >= 1) { did -a _logs 8 $read(system\logs\gets.txt, w,*,%i) | dec %i  } 

    if (!$read(system\logs\gets.txt, w,*,1)) did -a _logs 8 * No log entries yet...

  }


}



alias _ban.click {
  if (!%banner) %banner = 0
  if (%banner >= 3) { %banner 1 | dialog -g id }

  :end

}
alias _cos { if (!$dialog(_coStats)) dialog -m _costats _costats }
dialog _coStats {
  title "Status"
  size -1 -1 214 104
  option dbu
  box "Connection status:", 1, 4 7 206 92
  text "1", 2, 15 18 196 8
  text "2", 3, 15 30 196 8
  text , 4, 15 42 196 8
  text , 5, 15 54 196 8
  button "&Close", 6, 8 84 37 10, ok
  button "Connect to server", 7, 140 84 64 10, disable
  button "Join search channel", 8, 70 84 66 10, disable

}


on 1:dialog:_costats:*:*: {
  if ($devent == init) {
    %ye = 0
    .dll dll\mdx.dll SetMircVersion $version
    .dll dll\mdx.dll MarkDialog $dname
    .dll dll\mdx.dll SetFont 20 13 400 verdana

    .dll dll\mdx.dll SetFont 2,1,3,4,5 13 400 verdana
    .dll dll\mdx.dll SetFont 7,8,6 13 400 verdana

    _cos2 2 • Server status: $_network
    _cos2 3 • Search channel status: $_cc 
    if ($_cc == Not connected) did -ev _costats 8
    if ($_network == Not connected) { did -ev _costats 7 | did -b _costats 8 }
    _cos2 5 • Username: $me 
    unset %serv.conn %x %y

  }
  if (($devent == sclick) && ($did == 7)) { if ($-(sys,server)) server $-(sys,server) | else if (!$-(sys,server)) server  efnet | did -b _costats 7 | dialog -x _costats  }
  if (($devent == sclick) && ($did == 8)) { if ($-(sys,chn)) join $-(sys,chn) | else if (!$-(sys,chn)) join $-(sys,ochn) | did -b _costats 8 | dialog -x _costats } 

}
alias _cos2 { did -ar _costats $1 $2- }
alias _network {
  %x = 0
  %y = 0
  if ($server) %x = 1
  if ($network == EfNet) %y = 1
  if ((%x == 1) && (%y == 1)) {  set %serv.conn 1 | return Connected   }

  else { %serv.conn = 0 |  return Not connected   }
}


alias _cc {
  if (%serv.conn == 1) {
    if ($chan($-(sys,chn))) return Connected
    if (!$chan($-(sys,chn))) return Not Connected  
  }

  else return Not connected 


}

alias _ne {
  var %x $network

  if ((%x == $-(sys,servernet)) && ($server)) { 
    return $+($chr(40),%x,$chr(41))

  }
  else return (Invalid network)
}
alias quit {
  if (!$1) quit $_logo v $+  $_logo(.) - $iif($-(config,url),$-(config,url),)
  else quit $1-
}
