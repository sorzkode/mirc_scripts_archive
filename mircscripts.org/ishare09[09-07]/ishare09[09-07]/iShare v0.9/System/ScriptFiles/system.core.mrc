

alias ishare { 
  if ((!$1) && (!$dialog(srd)))   { srd  }
  if (($1 == help) && (!$dialog(help))) dialog -m help help
  if (($1 == Logs) && (!$dialog(_logs))) dialog -m _logs _logs
  if (($1 == nick) && (!$dialog(_nick))) dialog -m _nick _nick
  if (($1 == files) && (!$dialog(_ign))) dialog -m _ign _ign
  if ($1 == connection) _cos 
  if (($1 == update) && (!$dialog(_upd))) dialog -m _upd _upd
  if (($1 == Connect) && (!$server) && ($-(sys,server))) server $-(sys,server)
  if ($1 == Check) _chkconf pub
}

alias - { if ($2) return $readini(System\config.ini,$1,$2) }
alias + { if ($2) writeini system\config.ini $1 $2 $3- }
alias server { if ($2 == -m) echo ** Multi server is unfortunately disabled in $_logo(v) because of problems with multi-users on different channels. All this will be sorted out in the next version! Read the ReadMe.txt for more information!  | else server $1- }

; may seem a bit hard and not neccessary but Ive selected
; to do it this way to get the encode/decode part in so other users dont directly can see what others are downloading
;.... of course, all of you l33t scripters will manage to do that but whats the point? :P
alias _srv { 
  if ($server) {
    if ($1 == serv) return $server 

    if ($network !== EfNet) { return $_message(error,m3) }
    if ($network == EfNet) return $_message(short,m1) 
  }   
  else return $replace($status,connecting,Connecting,disconnected,Disconnected,connected,Connected)
}
on 1:text:@find**:#: {

  set %nick $nick
  set %search2 $decode($2-)
  search msg %search2
  unset %search2

}
alias decode.msg {
  set %encoded $decode($1-)
}
on 1:text:*:?: {
  set %yay $2-
  if ($1 == @send) {  set %send.nick $nick |  close -m $nick  |  _send %yay }
  if ($1 == @error) { set %error.nick $nick |  close -m $nick  | _error %yay  }
  set %nick2 $nick  
  decode.msg $1-
  _work %encoded
  if ($decode($1-)) {
    close -m $nick  
  }
}
;The message you will recive from other users when the file is found: @found <size> <slots> <speed> <filename>
alias _work {
  if $dialog(srd) && $1 == @found {
    var %xy $right($5-,4)
    %i2 = sec   
    if ($-(ignore,%xy)) { if ($dialog(srd)) { _tskbr $+([,$time,]) $_message(error,m1) %nick2 $_message(error,m2) } | close -m %nick2 | set %i2 Unsec }
    if (%i2 !== Unsec) { did -a srd 16 $chr(160) $5- $chr(9) $2 $chr(9) $3 $chr(9) $4 $chr(9) %nick2 

    }
  }


}

alias _send {
  if ($send(0) < $-(que,maxsends)) {
    set %send $right($1-,-2)
    set %xyz $+(*,%send,*)
    set %finalfile $findfile($_dir(shared),%xyz,1)
    set %ff2 $+(",%finalfile,")
    if ($exists(%ff2)) {  _send.do  }
    else msg %send.nick @error NoFile
    halt
  }
  if ($send(0) >= $-(que,maxsends)) {
    msg %send.nick @error Full
  }  
}
alias _send.do { 
  dcc send %send.nick %ff2
  unset %send.nick %error %finalfile %ff2 %xyz %send %file %error %error.nick %nick
  var %x $send(0) $+ "
  _stat send sends $calc($_rstat(send,sends) + 1) 

}
alias _error {
  if ($dialog(srd)) {
    set %error $1- 
    set %1 $_message(error,m4)
    set %2 $_message(error,m5) 
    if (%error == NoFile) { if (%1)  _tskbr $+([,$time,]) %1 }
    if (%error == Full) { if (%2) _tskbr $+([,$time,]) %2 }

    halt
  }
}

alias _logo { 
  if (!$1)  return iShare 
  if ($1 == v) return iShare $-(sys,vr2)
  if ($1 == .) return $-(sys,vr2)
  if ($1 == url) return $-(config,url) 
}
