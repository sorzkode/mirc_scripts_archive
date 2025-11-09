dialog dccext {
  title "File information"
  size -1 -1 195 235
  option dbu
  box File:, 1, 3 4 188 72
  text Name:, 2, 8 16 18 8
  edit , 3, 36 15 94 10, read autohs
  text Size:, 4, 8 31 18 8
  text , 5, 58 31 25 8
  box Download:, 6, 4 79 188 125
  text User:, 7, 8 89 19 8
  text , 8, 59 89 74 8
  text Speed:, 9, 8 104 19 8
  text , 10, 58 104 25 8
  text , 11, 8 181 100 10
  text Progress:, 12, 8 165 39 8
  text Path:, 13, 8 46 18 8
  edit , 14, 36 45 108 10, read autohs left
  button Open folder, 15, 147 45 37 10
  text Recived:, 16, 8 119 23 8
  text , 17, 58 118 32 8 
  text Status:, 18, 8 134 22 8
  text , 19, 58 134 35 8
  text Ip adress:, 20, 8 149 25 8, hide
  text , 21, 58 149 55 8, hide
  button &Close, 22, 4 210 37 12, ok default
  button Cancel download, 23, 119 210 73 12
  text %, 301, 113 182 30 10

}

on 1:dialog:dccext:init:0: {
  .dll dll\mdx.dll SetMircVersion $version
  .dll dll\mdx.dll MarkDialog $dname
  dll dll\mdx.dll SetFont $dname 1,6 15 400 verdana


  dll dll\mdx.dll SetColor $dname 3,14,2,4,6,7,9,12,13,15,16,18,20,22,23 text $rgb(0,0,153)
  dll dll\mdx.dll SetColor $dname 3,5,8,10,11,17,19,21,14 text $rgb(0,102,153)

  ;  dll dll\mdx.dll SetColor $dname 3,14,2,4,6,7,9,12,13,15,16,18,20,22,23 text $rgb(50,100,200)
  dll dll\mdx.dll SetColor $dname 3,14 textbg $rgb(255,255,255)
  dll dll\mdx.dll SetColor $dname 3,14 background $rgb(255,255,255)

  .dll dll\mdx.dll SetControlMDX $dname 11 ProgressBar smooth > $ctl
  did -f dccext 22
  did -ar dccext 3 $get(%i).file
  if (%mode == get) { .timerEXT 0 1  _dcc.ext %ext | if ($get(%i).pc == 100) did -b dccext 23  }
  if (%mode == send) { .timerEXT 0 1  _dcc.ext2 %ext | if ($get(%i).pc == 100) did -b dccext 23 }
  did -r dccext 3,5,8,10,11,14,17,19,21
}
on 1:dialog:dccext:sclick:*: {
  if ($did == 23) { var %x $input(Cancel this download and delete it from the transfer list? ,ygqau,Cancel download?)
    var %i %ext
    set %i2 %ext
    if (%x = $true) {  if (%mode == get) { var %close $get(%i).file | var %closen $get(%i) | if (%close) window -c "get %closen $+(%close,") | if ($dialog(dccext)) dialog -x dccext dccext } | if (%mode == send) { set %closen $send(%i2) | set %close $send(%i2).file | if (%close) window -c "Send %closen $+(%close,") | if ($dialog(dccext)) dialog -x dccext dccext }  } 
    else { _dcc.ext %ext |  return }
    unset %close
  }
  if ($did == 15) { 
    if (%mode == get) { if ($_dir(down)) run $_dir(down) | else _chkconf } 
    if (%mode == send) { run $_dir(shared)  }
  }
}

alias _dcc.ext {
  if ($dialog(dccext)) {
    did -v dccext 20,21  

    var %i %ext
    dialog -t dccext File information - Get   
    if ($-(dirs,downdir)) did -ar dccext 14 $-(dirs,downdir)
    if (!$-(dirs,downdir)) did -ar dccext 14 $mircdirdownload
    did -ar dccext 3 $get(%i).file
    did -ar dccext 5 $bytes($get(%i).size).suf
    did -ar dccext 8 $get(%i)
    did -ar dccext 10 $bytes($get(%i).cps).suf
    did -ar dccext 11 $get(%i).pc
    did -ar dccext 301 $get(%i).pc $+ %
    did -ar dccext 17 $bytes($get(%i).rcvd).suf
    did -ar dccext 19 $replace($get(%i).status,received,Complete,active,Active)
    var %ip $left($get(%i).ip,-2) 
    var %fip %ip $+ **
    did -ar dccext 21 %fip
  }
  else .timerext off
}
alias _dcc.ext2 {
  if ($dialog(dccext)) {
    dialog -t dccext File information - Send
    var %i %ext
    did -ar dccext 14 $_dir(shared)
    did -ar dccext 3 $send(%i).file
    did -ar dccext 3 $send(%i).file
    did -ar dccext 5 $bytes($send(%i).size).suf
    did -ar dccext 8 $send(%i)
    did -ar dccext 10 $bytes($send(%i).cps).suf
    did -ar dccext 11 $send(%i).pc
    did -ar dccext 301 $send(%i).pc $+ %
    did -ar dccext 17 $send($get(%i).rcvd).suf
    did -ar dccext 19 $replace($send(%i).status,sent,Complete)
    set %ip $left($send(%i).ip,-2) 
    did -ar dccext 16 Sent:
    did -ar dccext 17 $bytes($send(%i).sent).suf


    did -ar dccext 21 %fip
  }
  else .timerext2 off
}


alias _mcheck {
  if ($-(config,clearCo) == 1) did -c srd 501
  if ($-(config,clearSent) == 1) did -c srd 503
  if ($-(config,clearFailed) == 1) did -c srd 505  
  if ($-(config,clearFailed) == 2) did -c srd 506
  if ($-(config,clearSent) == 2) did -c srd 504
  if ($-(config,clearCo) == 2) did -c srd 502
  if ($-(sys,chn))  did -ar srd 67 $-(sys,chn) 
  if (!$-(sys,chn)) { did -ar srd 67 $-(sys,Ochn) | + sys chn $-(sys,ochn) } 

  if ($-(sys,server))  did -ar srd 70 $-(sys,server) 
  ;max uploads

  did -a srd 37 1 
  did -a srd 37 2
  did -a srd 37 3
  did -a srd 37 4
  did -a srd 37 5
  did -a srd 37 6
  did -a srd 37 7
  did -a srd 37 8
  did -a srd 37 9
  did -a srd 37 10
  did -c srd 37 $-(que,maxsends)
  did -a srd 59 10
  did -a srd 59 20
  did -a srd 59 30
  did -a srd 59 40
  did -a srd 59 50
  did -a srd 59 60
  did -a srd 59 70
  did -a srd 59 80
  did -a srd 59 90
  did -a srd 59 100
  did -a srd 59 120
  did -a srd 59 150
  did -a srd 59 200
  did -a srd 59 300
  did -a srd 59 500
  did -a srd 59 1000
  did -a srd 59 1500
  did -a srd 59 2000


  did -a srd 28 1 
  did -a srd 28 2
  did -a srd 28 3
  did -a srd 28 4
  did -a srd 28 5
  did -a srd 28 6
  did -a srd 28 7
  did -a srd 28 8
  did -a srd 28 9
  did -a srd 28 10
  did -a srd 28 11
  did -a srd 28 12
  did -a srd 28 13
  did -a srd 28 14
  did -a srd 28 15





  if ($-(sys,speed)) { did -a srd 59 $-(sys,speed)
  did -c srd 59 19 }
  if (!$-(que,maxDown)) did -c srd 28 3
  if ($-(que,maxDown)) did -c srd 28 $-(que,maxdown)
  if ($-(dirs,sharedDir)) did -ar srd 43 $-(dirs,shareddir)

}

alias _mcheck2 { 

  if ($did(srd,67).text) { 
    set %x $left($did(srd,67).text,1)
    if (%x !== $chr(35)) { + sys chn $chr(35) $+ $did(srd,67).text  }
    else  if (%x == $chr(35)) { + sys chn $did(srd,67).text  }
  }


  + que maxsends $did(srd,37)
  var %x $did(srd,59).text 
  set %speed $calc(%x * 1024)
  .dcc maxcps %speed
  if ($did(srd,59)) + sys speed $did(srd,59).text
  + que maxDown $did(srd,28).text
  if ($did(srd,32).state == 1) { did -e srd 33,34,35 | + sounds completestatus on } 
  if ($did(srd,32).state == 0) { did -b srd 33,34,35 | + sounds completestatus off }
  if ($did(srd,48).state == 1) { did -e srd 45,46,41 | + sounds completeSENDstatus on } 
  if ($did(srd,48).state == 0) { did -b srd 45,46,41 | + sounds completeSENDstatus off }
  if ($did(srd,34).text) + sounds complete $+(",$did(srd,33).text,")
  if ($did(srd,30).text) + dirs downdir $did(srd,30).text
  if ($did(srd,43).text) + dirs sharedDIR $did(srd,43).text
  if ($did(srd,41).text) {  + sounds completeSEND $+(",$did(srd,41).text,")   }
  unset %x %i
}
on 1:dialog:srd:sclick:*: { 
  if ($did == 493)  { var %x $rand(1,3) | did -g srd 493 $+(",system\icons\,ico,%x,.png,")  }
  if ($did == 31) {   
    var %x $sdir($-(dirs,downdir),Choose a folder to save your downloads in!)
    if (%x) { + dirs downdir $+(",%x,") | did -ar srd 30 %x }

  }
  if ($did == 34) {  
    var %x $sfile($mircdir,Play sound on file completion!,Choose!)
    if (%x) {  did -ar srd 33 %x  }

  }
  if ($did == 32) {
    if ($did(srd,32).state == 1) did -e srd 33,34,35
    if ($did(srd,32).state == 0) did -b srd 33,34,35
  }

  if ($did == 44) { 
    var %x23 $sdir($-(dirs,sharedDIR),Choose a folder to share!)
    if (%x23) { + dirs sharedDIR $+(",%x23,") | did -ar srd 43 %x23 | + config folderc 1 }
  }
  if ($did == 48) {
    if ($did(srd,48).state == 1) did -e srd 45,46,41
    if ($did(srd,48).state == 0) did -b srd 45,46,41
  }
  if ($did == 45) {   
    var %x22 $sfile($mircdir,Choose a sound on SEND completion,Choose!)
    if (%x22) { did -ar srd 41 %x22  }

  }
  if ($dialog(srd).tab == 12) {
    if ($did !== 65) { did -e srd 65 }
    if ($did == 65) { did -b srd 65 }
  }

  if ($did == 35) {  
    if ($-(sounds,complete)) .splay $-(sounds,complete)
  }
  if ($did == 46) {  
    if ($-(sounds,completesend)) .splay $-(sounds,completesend)
  }

  if ($did == 61) { return $input($_message(help,m1),oiau,$_message(help,m2)) }
  if ($did == 62) { return $input($_message(help,m3),oiau,$_message(help,m4)) }
  if ($did == 63) { return $input($_message(help,m5),oiau,$_message(help,m6)) }
  if ($did == 64) { return $input($_message(help,m7),oiau,$_message(help,m8)) }
  if ($did == 73) { return $input($_message(help,m9),oiau,$_message(help,m10)) }
  if ($did == 72) { return $input($_message(help,m11),oiau,$_message(help,m12)) }
  if ($did == 66) { _default - srd res  }
  if ($did == 317) { if ($did(srd,16).seltext)  { set %x $did(srd,16).sel  | writeini system\tmp.ini app $cell(srd,16,%x,5) 1 |    .timer 1 15 remini system\tmp.ini app $cell(srd,16,%x,5) | .msg $cell(srd,16,%x,5) @send $cell(srd,16,%x,1) } }
  if ($did == 16) { if ($did(srd,16).seltext) { did -e srd 317,318,319 | else did -b srd 317 } | if (!$did(srd,16).seltext) did -b srd 317,318,319  }
  if ($did == 318) { if ($did(srd,16).seltext)  { var %x $did(srd,16).sel  | var %xxx $?="Msg?" | if (%xxx) msg $cell(srd,16,%x,5) %xxx } }
  if ($did == 319) { if ($did(srd,16).seltext)  { var %x $did(srd,16).sel  | .timer 1 6 .disable #raw | set %wnick $cell(srd,16,%x,5) | .enable #raw |  whois %wnick %wnick | _whois 7 %wnick  |  unset %wnick }  }
  if ($did == 701) {  if ($did(srd,50).seltext)  set %x $calc(%line2 - 1)  | if ($get(%x)) window -c "GET $get(%x) $get(%x).file $+ " | _chk.dcc | unset %line %x %get.nick | _db get }
  if ($did == 50)  { if ($did(srd,50).sel) { set %line2 $did(srd,50).sel | did -e srd 701,703,702,704 | did -ar srd 704 $cell(srd,50,$did(srd,50).sel,7) - $cell(srd,50,$did(srd,50).sel,1) | set %get.nick $cell(srd,50,$did(srd,50).sel,7)  } | else { did -b srd 701,702,703,704 |  did -r srd 704 | unset %get.nick  }  } 
  if ($did == 703) { if ($did(srd,704).text)  { if (%get.nick) {  set %wnick %get.nick | .enable #raw |  whois %wnick %wnick | _whois 7 %wnick  | .timer 1 6 .disable #raw | unset %wnick }  } }
  if ($did == 702)  {  if (%line2) { run $+($_dir(down),\,$cell(srd,50,%line2,1))  }  }
  ;
  if ($did == 707) { if (%send.nick)  set %x $calc(%line - 1) | if ($send(%x)) window -c "SEND $send(%x) $send(%x).file $+ " | _chk.dcc.send |   unset %line2 %x %send.nick | _db send }
  if ($did == 51)  { if ($did(srd,51).sel) { set %line $did(srd,51).sel | did -e srd 707,705,706,708 | did -ar srd 708 $cell(srd,51,$did(srd,51).sel,7) - $cell(srd,51,$did(srd,51).sel,1) | set %send.nick $cell(srd,51,$did(srd,51).sel,7)  } | else { did -b srd 707,705,706,708   |  did -r srd 708 | unset %send.nick   }  } 
  if ($did == 706) { if (%send.nick) {  set %wnick %send.nick | .enable #raw |  whois %wnick %wnick | _whois 7 %wnick  | .timer 1 6 .disable #raw | unset %wnick }  } 
  if ($did == 705)  { if (%line) { run $+(",$_dir(shared),$cell(srd,51,%line,1),")  }  }


}

alias _sound {

  if (($1 == complete) && ($-(sounds,completestatus) == on)) { if ($exists($-(sounds,complete))) splay $-(sounds,complete) }
  if (($1 == send) && ($-(sounds,completesendstatus) == on)) { if ($exists($-(sounds,completesend))) splay $-(sounds,completesend) }
}

;stats system
alias _stat  { if ($2) { writeini system\stats.ini $1- }  
}
alias _rstat { if ($2) { return $readini(system\stats.ini,$1,$2) } }
alias _message { 
  if ($2) return $readini(system\lang.ini,$1,$2) 
}
alias _db {
  if (($1 == get) && ($dialog(srd))) {  did -b srd 701,702,703 | unset %x %line %get.nick  } 
  if (($1 == send) && ($dialog(srd))) { did -b srd 707,706,705 | unset %x %line %send.nick  }

}
alias _chkConf { 
  %s = $1  
  %f = 0
  if (!$-(dirs,downdir)) { + dirs downdir $+(",$mircdirdownload,")  | inc %f  }
  if (!$-(dirs,shareddir)) { + dirs shareddir $+(",$mircdirdownload,")  | inc %f  }
  if (!$-(sys,chn)) { + sys chn $-(sys,ochn) | + sys server $-(sys,oserver) | inc %f } 
  if (!$-(sys,speed)) {  + sys speed 50 |  inc %f }
  if (!$-(config,clearco))   { + config clearco 1 | inc %f  }
  if (!$-(config,clearSent))   { + config clearSent 1 | inc %f  }
  if (!$-(config,clearFailed))   { + config clearfailed 1 | inc %f  }
  if (!$-(config,Share!))   { + config Share! On | inc %f  }
  if (!$server) {
    if ($-(config,autoconn) == on) {

      if ($-(sys,server)) .server $-(sys,server) 
      if (!$-(sys,server)) { .server $-(sys,oserver) | + sys server $-(sys,oserver) }

    }

  }
  if (%s == pub) { if (%f == 0)  echo -s No errors found in your confguration... }
  unset %s   
  if (%f > 0) { 
    nfo title System fix!
    nfo 1 iShare have discovered some missing parameters 
    nfo 2 and the missing configuration has been set to default!
    nfo 3 Please update your config in the Options tab!
    nfo 5 Total: %f missing parameters has been fixed!

    did -e _nfo 6  
    did -ar _nfo 12 Open iShare
    did -v _nfo 12
    unset %f  
  }
}
on 1:disconnect: { inc %disco2 | _ChkConn 
}
on 1:connect: {
  if ($network == $-(sys,servernet)) { join $-(sys,chn) 
    if ($-(config,hide) == 1) .timer 3 3 if ($chan($-(sys,chn))) window -h $-(sys,chn) 
    if ($dialog(srd)) { did -e srd 17,18 
    }
  }
  .timer 1 6 _cc.chk
}

alias _chkConn {
  if (%disco2 <= 1) { 
    nfo title $_message(help,m15)
    nfo 1 $_message(help,m16)
    nfo 2 $_message(help,m17)
    nfo 4 $_message(help,m18)
    nfo 5 $_message(help,m21)

    did -e _nfo 6
    did -v _nfo 11
    did -ar _nfo 11 $_message(help,m20)
    .timerConn off
  }
}



alias _default { 
  if ($2 == srd) { _sec.check }
  if (%def == 1) {
    if ($1 == pub) { nfo title Resetting script...  }
    + sys chn #iShare!Search
    + sys server irc.blessed.net
    + sys ochn #iShare!search
    + sys oserver irc.blessed.net
    + sys speed 10
    + sys servernet efnet
    + sys sharedfiles 0
    + sys sharedsize 0
    if ($1 == pub) { nfo 1 Main config reset   }

    + dirs shareddir $mircdirdownload
    + dirs downdir $mircdirdownload
    + logs gets 1
    + logs sends 1
    + logs sendfail 1
    + logs getfail 1
    + que maxsends 6

    + que maxdown 8
    write -c system\logs\gets.txt
    write -c system\logs\sendfail.txt
    write -c system\logs\getfail.txt
    write -c system\logs\sends.txt
    if ($1 == pub) { nfo 2 Dirs $+ $chr(44) logs and que options reset..   }

    + sounds completestatus off
    + sounds completeSENDstatus off
    + ignore .dll 1
    + ignore .pif 1
    + ignore .vbs 1
    + config clearco 1
    + config  clearsent 1
    + config clearfailed 1
    + config Share! on
    + config autoconn on
    + config hide 1
    if ($1 == pub) { nfo 3 Filetypes - sounds and secondary config has been reset! }
    if ($1 == pub) { nfo 5 Reset Complete! - 100%  }
    if ($1 == pub) { did -e _nfo 6 }
    if ($3 == res) if (!$dialog(srd)) srd
    unset %def  
  }
}
alias _reset {
  _stat send sends 0 
  _stat send totsize 0
  _stat send totsend 0
  _stat gets gets 0
  _stat gets totsize 0
  _stat gets totgets 0

  _stat cps topcps 0
  _stat cps topcpssend 0

}
alias _sec.check {
  if ($input($_message(help,m22),yghau,$_message(help,m23)) == $true) { set %def 1 | if ($dialog(srd)) dialog -x srd | var %x $input($_message(help,m25),yghau,$_message(help,m24)) | if (%x == $true) _reset  }
}
