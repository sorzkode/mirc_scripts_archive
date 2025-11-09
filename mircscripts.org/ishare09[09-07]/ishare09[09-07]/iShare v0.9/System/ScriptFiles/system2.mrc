
alias _dir { 
  if ($1 == shared) return $-(dirs,sharedDIR)
  if ($1 == down) return $-(dirs,downDIR)

}
alias sres { set %status klar | set %teller 0 }
on 1:exit:unsetall
alias _maxresults {
  if (%teller >= 5)  { set %status opptatt | .timer 1 8 sres }
}
alias search {
  if (!%status) set %status klar
  if (%status == klar) _maxresults
  %i = 1
  set %search $2-
  ;MAX msgs each. E.g: %x = 11 will give the users 10 results each. Do not
  ; set any higher than 6 because the risk of getting excess flood!
  %x = 6
  goto begin
  :begin
  set %file $findfile($_dir(shared),* $+ %search $+ *, $+ %i $+ ) 
  inc %i

  if ($1 = echo) {  if (%file) echo -s $nopath(%file)  }

  if (%status == klar) {  if ($1 = msg) { inc %teller | if (%file) .msg %nick $encode(@found $bytes($file(%file).size).suf $_que $_speed $nopath(%file))  }    }

  if ($1 = nr) echo -s :: %i - $nopath(%file)
  if (%i >= %x) goto end
  else goto begin
  :end
  unset %i %x %search 

}


alias _que { return $+($send(0),/,$-(que,maxsends)) }


alias _speed { if (!$-(sys,speed)) return Undefined | else return $-(sys,speed) $+ kb\s }




dialog srd {
  title 
  size -1 -1 375 245
  option dbu
  tab Search, 1, 9 16 357 212

  list 16, 21 90 327 113, tab 1 sort size hsbar 
  button Search, 17, 162 67 37 11, tab 1 default disable
  button Download, 317, 21 210 37 11, tab 1 disable
  button Msg user, 318, 65 210 37 11, tab 1 disable
  button Whois, 319, 110 210 37 11, tab 1  disable
  ;
  edit , 18, 21 68 132 10, tab 1 disable
  icon 493, 16 35 341 26, system\icons\ico3.png, 0, tab 1  


  text , 14, 150 212 100 8, tab 1 disable
  tab Transfers, 11
  box Sends:, 23, 14 133 348 92, tab 11
  button &Close, 412, 308 210 40 11, tab 1 cancel 
  list 50, 20 55 335 61, tab 11  size hsbar
  button Cancel, 701, 20 118 30 10, tab 11 disable
  button Open, 702, 56 118 30 10, tab 11 disable
  button Whois, 703, 92 118 30 10, tab 11 disable  
  Text Clear, 710, 128 119 30 10, tab 11 
  combo 711, 150 118 50 10, tab 11 drop
  text  , 704, 203 120 150 8, tab 11 nowrap disable

  list 51, 20 148 335 61, tab 11 size hsbar
  button Cancel, 707, 20 211 30 10, tab 11 disable
  button Open, 705, 56 211 30 10, tab 11 disable
  button Whois, 706, 92 211 30 10, tab 11 disable  
  text , 708, 203 213 150 8, tab 11 nowrap disable
  text Clear, 713, 128 213 30 10, tab 11
  combo 712, 150 212 50 10, tab 11 drop


  box  Gets:, 24, 14 40 348 92, tab 11
  ;transfers
  tab Options, 12
  ;  tab Stats, 13
  menu Menu, 2
  item Connect, 812, disable
  item Disconnect, 813, disable

  item break , 334
  item Close, 815, ok
  menu View, 6
  item Search, 7, 6
  item Transfers, 8, 6
  item Options, 9, 6
  item Stats, 10, 6
  menu Miscellaneous , 80
  item Logs, 811, 80

  item Filetypes, 802, 80

  item break, 803, 80
  menu Hide search channel, 804, 80
  item Yes, 805 
  item No, 806, 
  menu Auto Connect, 807, 80 
  item Yes, 808
  item No, 809
  ;

  item break, 821, 80
  item Connection status, 825
  item break, 827
  item Check for updates, 826
  item break, 828
  item Nickname options, 827  
  ;
  menu Transfers, 788
  item Clear completed, 789
  item break, 782
  item Clear sent , 787
  menu Help, 4
  Item Help Central, 99
  item break, 323

  menu Support, 321, 4
  item Join #iShare, 322, 
  item iShare web, 323

  ;options tab:
  text Max, 26, 121 52 17 8, tab 12
  text simultanously downloads, 27, 182 52 65 8, tab 12
  combo 28, 147 51 32 46, tab 12 size drop
  text Download folder:, 29, 121 69 49 8, tab 12
  edit , 30, 211 68 84 10, tab 12 read autohs 
  button Browse, 31, 298 68 37 10, tab 12
  edit , 33, 211 84 84 10, tab 12 read autohs
  button 4, 35, 336 84 11 10, tab 12
  box Download, 42, 116 33 247 84, tab 12
  button Browse, 34, 298 84 37 10, tab 12
  box Upload, 47, 116 118 247 105, tab 12
  text Max, 25, 120 134 17 8, tab 12
  text Shared folder:, 39, 120 151 49 8, tab 12
  text Play a sound on file completion:, 40, 120 168 77 8, tab 12
  edit , 41, 210 166 84 10, tab 12 read autohs
  edit , 43, 210 150 84 10, tab 12 read autohs
  button Browse, 44, 298 150 37 10, tab 12
  button Browse, 45, 298 166 37 10, tab 12
  button 4, 46, 336 166 11 10, tab 12

  combo 37, 146 133 32 46, tab 12 size drop

  text simultanously uploads, 38, 181 134 65 8, tab 12
  check , 48, 199 167 8 8, tab 12
  text Share my files:, 49, 120 209 44 8, tab 12
  radio Yes, 52, 171 209 24 8, tab 12, group
  radio No, 53, 196 209 24 8, tab 12
  ; 
  text Clear completed files:, 54, 16 46 52 8, tab 12
  radio Yes, 501, 72 46 20 8, tab 12 group
  radio No, 502, 92 46 20 8, tab 12 
  ;
  text Clear sent files:, 57, 16 60 42 8, tab 12
  radio Yes, 503, 72 60 20 8, tab 12, group
  radio No, 504, 92 60 20 8, tab 12 
  ;

  text Max upload speed:, 58, 120 187 48 8, tab 12
  text kb\s, 425, 215 187 40 10, tab 12
  ;
  combo 59, 172 186 40 50, tab 12 size drop
  text Play a sound on file completion:, 60, 121 85 77 8, tab 12
  check , 32, 200 85 8 8, tab 12
  button i, 61, 352 68 9 9, tab 12
  button &Save, 65, 13 210 37 12, tab 12
  button Default, 66, 55 210 37 12, tab 12
  button i, 62, 352 84 9 9, tab 12
  button i, 63, 352 150 9 9, tab 12
  button i, 64, 352 166 9 9, tab 12
  ;
  text Clear failed:, 69, 16 74 42 8, tab 12
  radio Yes, 505, 72 74 20 8, tab 12, group
  radio No, 506, 92 74 20 8, tab 12 

  box General, 36, 11 35 102 168, tab 12
  text Server and channel:, 55, 16 92 100 8, tab 12
  text Channel:, 56, 16 108 25 8, tab 12
  edit , 67, 46 106 64 10, tab 12 autohs
  text Server:, 68, 16 122 21 8, tab 12
  combo  70, 46 120 64 10, tab 12 autohs drop
  edit , 71 ,16 136 94 64, tab 12 read multi autovs vsbar
  tab Stats, 13
  button i, 72, 352 209 9 9, tab 12
  button i, 73, 352 187 9 9, tab 12
  ;stats:

  text Files downloaded:, 172, 16 59 48 8, tab 13
  text , 173, 90 59 20 8, tab 13
  box Statistics, 174, 11 36 120 191, tab 13
  ;cred
  box Credits, 821, 140 36 220 191, tab 13
  edit Remote off eh? ,822, 150 46 200 175, tab 13, read autovs multi vsbar
  text Files:, 181, 16 46 16 8, tab 13
  text Transferred:, 182, 16 130 41 8, tab 13
  text Downloaded:, 183, 16 145 38 8, tab 13
  text , 184, 90 145 43 8, tab 13

  text , 186, 90 160 43 8, tab 13
  text Sent:, 185, 16 160 38 8, tab 13
  text Files sent successfully, 178, 16 104 59 8, tab 13
  text Files sent:, 177, 16 89 48 8, tab 13
  text Total files requested:, 175, 16 74 54 8, tab 13
  text  , 179, 90 104 43 8, tab 13
  text , 180, 90 89 43 8, tab 13
  text , 176, 90 74 43 8, tab 13
  text Speed:, 188, 16 180 25 8, tab 13
  text Highest download speed:, 189, 16 192 62 8, tab 13
  text , 190, 90 192 43 8, tab 13
  text , 192, 90 207 43 8, tab 13
  text Highest upload speed:, 191, 16 207 62 8, tab 13

}
on 1:dialog:srd:menu:*: {
  if ($did == 789) { _clear completedGET  }
  if ($did == 787) { _clear completedSEND  }
  if ($did == 802) { if (!$dialog(_ign)) _igndia }
  if ($did == 7) { did -f srd 1 }
  if ($did == 8) { did -f srd 11 }
  if ($did == 9 ) { did -f srd 12 }
  if ($did == 10) { did -f srd  13 }
  if ($did == 805) { + config hide 1 | did -c srd 805 | did -u srd 806 }
  if ($did == 806) { + config hide 0 | did -c srd 806 | did -u srd 805 }
  if ($did == 808)  { + config autoconn on | did -c srd 808 | did -u srd 809 } 
  if ($did == 809)  { + config autoconn off | did -c srd 809 | did -u srd 808 } 
  if ($did == 811)  {  _log }
  if ($did == 812) { if ($-(sys,server)) server $-(sys,server) | else { + sys server $-(sys,oserver) | server $-(sys,server)  }  | did -b srd 812 | did -e srd 813 }
  if ($did == 813) { quit $_logo(v) | did -e srd 812 | did -b srd 813 | if ($server) disconnect  }
  if ($did == 322) { join #iShare  }
  if ($did == 825) { _cos }
  if ($did == 826) upd
  if ($did == 827) _nick
  if ($did == 99)  if (!$dialog(help)) dialog -m help help
  if ($did == 323) { if ($-(config,url)) url $-(config,url)  }
}
on *:DIALOG:srd:sclick:65: {
  + sys server $did(srd,70)  
  if ($did(srd,501).state == 1)  + config clearco 1  | else + config clearco 2
  if ($did(srd,503).state == 1)  + config clearSent 1  | else + config clearsent 2
  if ($did(srd,505).state == 1)  + config clearFailed 1  | else + config clearFailed 2
  if ($did(srd,52).state == 1) { + config Share! On }
  if ($did(srd,53).state == 1) { set %x $input($_message(help,m13),ygqau,$_message(help,m14)) | if (%x == $true) { did -c srd 53 | + config Share! Off 

    } 
    if (%x == $false) {  did -c srd 52 | did -u srd 53 | + config Share! On |

  } }
  if ($-(config,folderc) == 1) {  _shrfiles  }

  _mcheck2


}



on *:DIALOG:srd:init:0: {
  .dll dll\mdx.dll SetMircVersion $version
  .dll dll\mdx.dll MarkDialog $dname
  .dll dll\mdx.dll SetControlMDX $dname 16 ListView report infotip single grid showsel rowselect > dll\views.mdx
  .dll dll\mdx.dll SetControlMDX $dname 50 ListView report infotip single showsel rowselect > dll\views.mdx
  .dll dll\mdx.dll SetControlMDX $dname 51 ListView report infotip single showsel rowselect > dll\views.mdx
  _mcheck
  dll dll\mdx.dll SetFont $dname 16 12 400 verdana
  dll dll\mdx.dll SetFont $dname 50 12 400 verdana
  dll dll\mdx.dll SetFont $dname 51 12 400 verdana
  dll dll\mdx.dll SetFont $dname 42,47,36 +i 16 400 arial
  dll dll\mdx.dll SetFont $dname 35,46,61,62,63,64,72,73 18 400 Webdings
  dll dll\mdx.dll SetFont $dname 14 13 400 Arial


  did -ar srd 14 $_logo(v) - 2005 - Made by superhelt 
  if ($network !== Efnet) { did -b srd 17,18 | did -b srd 322 }
  if (!$server) did -b srd 322
  dll dll\mdx.dll SetFont $dname 181,182,188 +u 16 400 Verdana
  dll dll\mdx.dll SetFont $dname 174 16 400 Verdana

  ;get/send
  did -a srd 711 Completed
  did -a srd 711 Failed
  did -a srd 712 Completed
  did -a srd 712 Failed
  did -c srd 711,712 1
  ;
  did -ar srd 704,708 Dobbelclick a file to get extended information!
  dll dll\mdx.dll SetColor 181,182,188 text $rgb(53,0,53)  
  dll dll\mdx.dll SetFont $dname 412 12 400 Verdana
  dll dll\mdx.dll SetColor 173,179,176,180,190,192,184,186 text $rgb(51,51,153)  
  dll dll\mdx.dll SetColor 172,183,185,178,177,175,189,191 text $rgb(51,0,204)  
  dll dll\mdx.dll SetColor 822 background  $rgb(255,255,255)
  dll dll\mdx.dll SetColor 822 textbg $rgb(255,255,255)
  dll dll\mdx.dll SetColor 822 text $rgb(50,100,200)

  did -ar srd 822 $_message(credits,m1) $crlf
  did -a srd 822  $_message(credits,m2) $crlf
  did -a srd 822 $str($chr(175),45) $crlf
  did -a srd 822  $_message(credits,m3) $crlf $crlf
  %ii = 4
  while (%ii < 9) { did -a srd 822 •  $_message(credits, $+(m,%ii) ) $crlf $crlf | inc %ii }
  did -a srd 822  $_message(credits,m10) $crlf $crlf
  %ii = 11
  while (%ii < 16) { did -a srd 822 •  $_message(credits, $+(m,%ii) ) $crlf $crlf | inc %ii }
  did -a srd 822  $_message(credits,m16) $crlf $crlf
  %ii = 17
  while (%ii < 23) { did -a srd 822 •  $_message(credits, $+(m,%ii) ) $crlf $crlf | inc %ii }

  did -a srd 822  $_message(credits,m23) $crlf $crlf 
  %ii = 24
  while (%ii < 30) { did -a srd 822 •  $_message(credits, $+(m,%ii) ) $crlf $crlf | inc %ii }




  did -a srd 822 $str(_,45) $crlf
  did -a srd 822  $_message(credits,m30) $crlf $crlf
  did -a srd 822 $_message(credits,m31) $crlf $crlf
  did -a srd 822  $str($chr(175),45)
  ;menu
  if ($server) { did -e srd 813 | did -b srd 812 }
  if (!$server) { did -e srd 812 | did -b srd 813 }
  dll dll\mdx.dll SetFont $dname 822 16 400 verdana
  dll dll\mdx.dll SetColor 55 text $rgb(51,102,204)
  dll dll\mdx.dll SetFont $dname 55 +u 16 400 Arial
  ;sounds
  if ($-(sounds,completestatus) == on)  did -ce srd 32,33,34
  if ($-(sounds,completestatus) == off) did -b srd 33,34,35 
  if ($-(sounds,completeSENDstatus) == on) did -c srd 48
  if ($-(sounds,completeSENDstatus) == off) did -b srd 46,41,34,45

  if ($-(sounds,complete)) did -ar srd 33 $-(sounds,complete)

  if ($-(sounds,completeSEND)) did -ar srd 41 $-(sounds,completeSEND)
  ;dirs
  if ($-(dirs,downdir)) did -ar srd 30 $-(dirs,downdir)
  ;main
  if ($-(config,share!) == on) did -c srd 52
  if ($-(config,share!) == off) did -c srd 53
  _do.stats
  if ($-(config,hide) == 1) did -c srd 805 
  if ($-(config,hide) == 0) did -c srd 806
  did -ar srd 71 $readini(system\lang.ini,messages,m1) 
  dialog -t srd $_logo(v)

  .dll dll\mdx.dll SetControlMDX $dname 112 Listview grid > dll\views.mdx
  dll dll\mdx.dll SetFont $dname 67,70,71,113 13 400 verdana

  dll dll\mdx.dll SetFont $dname 23,24 16 400 Verdana


  .did -i $dname 16 1 headerdims 260 90 50 90 160 
  .did -i $dname 50 1 headerdims 210 80 80 80 50 81 85
  .did -i $dname 51 1 headerdims 210 80 80 80 50 81 85

  .did -i $dname 16 1 headertext Filename $chr(9) Size $chr(9) Que $chr(9) Speed $chr(9) User
  .did -i $dname 50 1 headertext Filename $chr(9) Size $chr(9) Received $chr(9) Speed $chr(9) % $chr(9) Status $chr(9) User
  .did -i $dname 51 1 headertext Filename $chr(9) Size $chr(9) Sent $chr(9) Speed $chr(9) % $chr(9) Status $chr(9) User

  if (!$timer(y)) _doy
  dll dll\mdx.dll SetFont $dname 17 15 400 verdana

  dll dll\mdx.dll SetFont $dname 317,318,319,701,702,703,704,705,706,707,710,711,712 12 400 verdana
  dll dll\mdx.dll SetFont $dname 704,708,710,713 13 400 verdana 
  dll dll/mdx.dll SetColor 704,708,710,713 text $rgb(153,102,0)  

  dll  dll\hstylus.dll statusbar $dialog(srd).hwnd $_logo(v) :: Ready

  _chk.dcc
  _chk.dcc.send
  if (($network == $-(sys,serverNet)) && ($chan($-(sys,chn)))) { did -e srd 17,18 }
  if ($network !== $-(sys,serverNet)) { did -b srd 17,18  }
  did -f srd 18

  if ($-(config,autoconn) == on) did -c srd 808
  if ($-(config,autoconn) !== on) did -c srd 809
  _srvlist
  if ($-(sys,server)) { did -a srd 70 $-(sys,server) | did -c srd 70 1 }
  dll dll/mdx.dll SetColor 71 textbg $rgb(255,255,255)
  dll dll/mdx.dll SetColor 71 background $rgb(255,255,255)
  dll dll/mdx.dll SetColor 71 text $rgb(0,0,0)
  if (%fsh == 1) { _fsh | unset %fsh }
}



alias cell {
  return $gettok($gettok($gettok($did($1,$2,$3),$4,9),$iif($4 = 1,6,5) $+ -,32),1,4)
}
alias mdx { return $dll($mircdirdll\mdx.dll,$1,$2-) }
alias ctl return dll\CTL_GEN.MDX

on 1:dialog:srd:dclick:*: {
  if (($devent == dclick) && ($did = 16)) {
    var %x $did(srd,16).sel
    _dcheck $cell(srd,16,%x,1)
    if (%get1 == 1)  { _err | goto end  }
    writeini system\tmp.ini app $cell(srd,16,%x,5) 1
    .timer 1 15 remini system\tmp.ini app $cell(srd,16,%x,5)
    .msg $cell(srd,16,%x,5) @send $cell(srd,16,%x,1)
    _tskbr $+([,$time,]) Requesting $cell(srd,16,%x,1) from $cell(srd,16,%x,5) 
  }
  if ($did == 50) {  set %ext $calc($did(srd,50).sel - 1) | if (%ext) { set %mode get |   if ($dialog(dccext)) dialog -x dccext | dialog -mdo dccext dccext } }
  if ($did == 51) { set %ext $calc($did(srd,51).sel - 1) | if (%ext) { set %mode send |  if ($dialog(dccext)) dialog -x dccext | dialog -mdo dccext dccext } }
  unset %get1
  :end
  unset %get1
  return

}
on 1:dialog:srd:*:*: {
  if (($devent == sclick) && ($did == 17)) {
    if ($len($did(srd,18).text) > 2) { 
      if ($did(srd,18)) _find $did(srd,18) 
      unset %send.nick %error %finalfile %ff2 %xyz %send %file %error %error.nick 
      did -b srd 317,318,319    
    }
    else _tskbr $+([,$time,]) Search phrase too short. Phrase must be over 3 characters!
  }

  ;GET
  if (($did == 711) && ($devent == sclick)) {
    if ($did(srd,711).text == Completed) { _clear completedGET | _clear completedGET | _chk.dcc }
    if ($did(srd,711).text == Failed)  { _clear failedget | _clear failedget | _chk.dcc }

  }
  ;SEND
  if (($did == 712) && ($devent == sclick)) {

    if ($did(srd,712).text == Completed) { _clear completedSEND | _clear completedSEND | _clear completedSEND | _chk.dcc.send   }
    if ($did(srd,712).text == Failed) {  _clear failedsend |  _clear failedsend | _chk.dcc.send }


  }
}


alias srd  { if (!$dialog(srd)) {  if ($_dir(shared)) dialog -m srd srd | else if ($_dir(shared) == $null) { _chkconf | dialog -m srd srd } }   }
alias _find {
  if ($dialog(srd)) {
    if ($server) {
      if ($chan($-(sys,chn))) {   
        did -r srd 16   
        if ($1) msg $-(sys,chn) @find $encode($1-)
        did -b srd 17,18
        .timer 1 5 if ($dialog(srd)) { did -e srd 17,18 | .timer 1 5 _tskbr  $_logo(v) }
        if ($dialog(srd))  .dll  dll\hstylus.dll statusbar $dialog(srd).hwnd  Searching...  
      .timer 1 5   if ($dialog(srd))  Search complete!  }
      .timer 1 6 _rez

    }

  }
}

alias _rez { 
  if ($dialog(srd)) { 
    %x = 1
    while ($did(srd,16,%x)) {  inc %x  }

    _tskbr $+([,$time,]) Results found for $+(",$did(srd,18).text,",:) $calc(%x - 2)
  }

}
alias _tskbr { if (($1) && ($dialog(srd)))  .dll dll\hstylus.dll statusbar $dialog(srd).hwnd $1- }
