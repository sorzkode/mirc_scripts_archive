;dcc send/get stats scriptet

ctcp 1:*: { 
  if ($2 == SEND) {
    %gs23 = $3
    if ($readini(system\tmp.ini,app,$nick)) {
      if ($get(0) < $-(que,maxdown)) {    
        var %d $_dir(downDIR) 
        var %d2 %d $+ $filename
        set %x $nick
        set %y  $filename
        if ($-(dirs,downdir)) dcc get $-(dirs,downdir)
        var %win "Get %x $nopath(%y) $+ "            
        .timer 1 1 window -h "GET %x %gs23 $+ " 
        _stat gets Gets $calc($_rstat(gets,gets) + 1)     
        unset %gs23 %x %y %gd      
      }
    }
    else     if (!$readini(system\tmp.ini,app,$nick)) { .timer 1 0 window -c "GET $nick $nopath($filename) $+ " | _tskbr $+([,$time,]) User $+(",$nick,") tried to send without approval!  }                           

  }

}

on *:start: { 
  %disco2 = 2
  .disable #raw
  if (!$-(config,start)) { 
    set %fsh 1
    _set 
    _setup 1
    _stbr.init
    .timer 0 5 _stbr
    return

  }
  dialog -mo _pr _pr

  if ($-(config,updstart) == 1) dialog -s _pr 400 141 116 17
  dll dll/mdx.dll SetDialog _pr style tool 
  dll dll\VStyle.dll NoTheme $dialog(_pr).hwnd 

  did -a _pr 1,2 BGColor $rgb(0,0,0)
  did -a _pr 1,2 BarColor $rgb(0,204,0)

  _prs 10 
  _prs Starting script
  _prs 30
  _prs Starting services
  if $-(config,uonick) == 1) _rnduser
  if ($-(config,updstart) == 1)  { upd | ver2 | if ($dialog(_upd)) did -b _upd 6 | did -ar _upd 7 Automatic updatecheck started... $crlf $crlf Checking for updates... }

  _stbr.init
  _stbr  
  _prs 70 
  _prs Setting config...
  .timer 0 5 _stbr
  unset %disco2
  dll dll\hOS.dll SetmIRCTitleBar $_logo(v) 
  .dcc maxcps $calc($-(sys,speed) * 1024)
  _prs 90 
  _prs Checking existing config..
  _prs 100
  _prs Startup Complete!
  .timer 1 1 dialog -x _pr _pr
  _chkConf

  .timer 1 2 unset %disco2 
  echo -s $+([,$time,],$_logo(v)) started
  if ($-(config,autoconn) == on) echo -s $+([,$time,],Auto connecting to:) $-(sys,server) 
}


alias _do.stats {
  if ($dialog(srd)) {
    did -ar srd 173 $_rstat(gets,totgets) 
    did -ar srd 179 $_rstat(send,totsend)
    did -ar srd 176 $_rstat(gets,gets)
    did -ar srd 180 $_rstat(send,sends)
    did -ar srd 190 $bytes($_rstat(cps,topcps)).suf

    did -ar srd 192 $bytes($_rstat(cps,topcpssend)).suf
    did -ar srd 184 $bytes($_rstat(gets,totsize)).suf
    did -ar srd 186 $bytes($_rstat(send,totsize)).suf
  }
}



on 1:filesent:*.*: { 
  var %x $filename
  set %y0 $nick
  .timer 1 3 if ($-(config,ClearSent) == 1) close -is %y0
  if ($-(logs,sends) == 1) { write System\Logs\Sends.txt $str(-,20) | write system\logs\Sends.txt File: $nopath($filename) | write system\logs\Sends.txt Size: $bytes($file(%x).size).suf |  write system\logs\Sends.txt Nick: %y0 | write system\logs\Sends.txt Finished: $fulldate | write system\logs\Sends.txt Status: Success }
  _sound send
  _stat send totsize $calc($_rstat(send,totsize) + $file(%x).size)     

  _stat send totsend $calc($_rstat(send,totsend) + 1)     
  _do.stats
}

on 1:filercvd:*.*: { 
  var %x $filename
  set %y0 $nick
  .timer 1 3 if ($-(config,ClearCo) == 1) close -ig %y0
  if ($-(logs,gets) == 1) { write System\Logs\Gets.txt $str(-,20) | write system\logs\gets.txt File: $nopath($filename) | write system\logs\gets.txt Size: $bytes($file(%x).size).suf | write system\logs\gets.txt Nick: $nick | write system\logs\gets.txt Finished: $fulldate | write system\logs\gets.txt Status: Success }
  _sound complete
  _stat gets totsize  $calc($_rstat(gets,totsize) + $file(%x).size)   
  _stat gets totgets $calc($_rstat(gets,totgets) + 1)
  _do.stats
}
on 1:SendFail:*.*: { 
  set %y1 $nick
  .timer 1 3 if ($-(config,ClearFailed) == 1) close -is %y1
  if ($-(logs,sendfail) == 1) { write System\Logs\SendFail.txt $str(-,20) | write system\logs\Sendfail.txt Failed: $nopath($filename)  | write system\logs\Sendfail.txt Nick: $nick  | write system\logs\Sendfail.txt Time: $fulldate | write system\logs\Sendfail.txt Status: Failed }
  _do.stats
}
on 1:GetFail:*.*: { 
  set %y2 $nick
  .timer 1 3 if ($-(config,ClearFailed) == 1) close -ig %y2
  var %x $filename
  if ($-(logs,getfail) == 1) {  write System\Logs\GetFail.txt $str(-,20) |  write System\Logs\GetFail.txt Failed: $nopath(%x) |  write System\Logs\GetFail.txt Nick: $nick |  write System\Logs\GetFail.txt Time: $fulldate }
  _do.stats
  unset %y2 %x
}
alias _doY { 
  if ($timer(cd1).com !== _chk.dcc) .timercd1 0 4 _chk.dcc
  if ($timer(cd2).com !== _chk.dcc.send)  .timercd2 0 4 _chk.dcc.send

}


alias _chk.dcc {
  if ($dialog(srd)) {
    %i = 1

    did -r srd 50
    while ($get(%i)) { did -a srd 50 %i $get(%i).file $chr(9) $bytes($get(%i).size).suf $chr(9) $bytes($get(%i).rcvd).suf $chr(9) $bytes($get(%i).cps).suf $chr(9) $get(%i).pc $+ % $chr(9) $replace($get(%i).status,received,complete) $chr(9) $get(%i) | if ($get(%i).cps > $_rstat(cps,topCPS)) { _stat cps topCPS $get(%i).cps } | inc %i }

  }
}
alias _chk.dcc.send {
  if ($dialog(srd)) {
    %i = 1

    did -r srd 51
    while ($send(%i)) {  did -a srd 51 $send(%i).file $chr(9) $bytes($send(%i).size).suf $chr(9) $bytes($send(%i).sent).suf $chr(9) $bytes($send(%i).cps).suf $chr(9) $send(%i).pc $+ % $chr(9) $replace($send(%i).status,sending,sending) $chr(9) $send(%i) | if ($send(%i).cps > $_rstat(cps,topcpssend)) { _stat cps topcpssend $send(%i).cps  }  | inc %i }

  }
}
alias dcc { 
  if ($1 == send) { 
    dcc send $2- 
    set %xx $+($3-,")
  .timer 1 2 window -h "SEND $2 $nopath($3-) $+ "  }
  else dcc $1-
}


alias _clear {
  %i = 1
  %x = 1
  if ($1 == completedGET) { while (%i <= $get(0)) { if ($get(%i).pc == 100) window -c "GET $get(%x) $get(%x).file $+ " | inc %i } }
  if ($1 == completedSEND) { while (%x <= $send(0)) { if ($send(%x).pc == 100) window -c "SEND $send(%x) $send(%x).file $+ " ) | inc %x } }
  if ($1 = failedget) { while (%x <= $get(0)) { if ($get(%x).status == failed) window -c "GET $get(%x) $get(%x).file $+ "  | inc %x }  }
  if ($1 = failedsend) { while (%x <= $send(0)) { if ($send(%x).status == failed) window -c "SEND $send(%x) $send(%x).file $+ "  | inc %x }  }

}
