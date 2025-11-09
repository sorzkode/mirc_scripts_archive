dialog _nfo {
  title .
  size -1 -1 237 122
  option dbu
  text , 1, 10 31 200 10
  text , 2, 10 41 200 10
  text , 3, 10 51 200 10
  text , 4, 10 61 200 10
  text , 5, 10 81 200 30
  button , 11, 55 106 97 12, hide 
  button , 12, 55 106 97 12, hide 
  button Close, 6, 10 106 37 12, ok disable 
  icon 7, -13 -1 268 29, system/icons/3.png
  box , 8, -10 99 262 50
}
on 1:dialog:_nfo:init:0: {
  .dll dll\mdx.dll SetMircVersion $version
  .dll dll\mdx.dll MarkDialog $dname  

  .dll dll\mdx.dll SetFont _nfo 1,2,3,4,5 13 400 verdana





}
on 1:dialog:_nfo:sclick:11: {
  if ($-(sys,server)) server $-(sys,server)
  else { set %error No server set - Setting original server | + sys server $-(sys,oserver) |  }
}
on 1:dialog:_nfo:sclick:12: {
  srd |  if ($dialog(_nfo)) dialog -x _nfo _nfo
}

alias nfo {
  if (!$dialog(_nfo)) { dialog -m _nfo _nfo }
  if ($1 == title) { dialog -t _nfo $2- }
  if ($1 isnum) { 
    did -ar _nfo $1 $2- 
  }
}

alias _first {
  nfo title First time - $_logo

  .timer1 0 1 if (!$dialog(_nfo)) _first 
  nfo 1 Please wait while the script is creating your configuration!
  nfo 2 Making config file..
  _chkconf
  nfo 3 Config file created
  nfo 4 Script ready!

  nfo 5 Please wait for Setup dialog to start!
  .timer1 off
  .timer 1 1 if ($dialog(_nfo)) dialog -x _nfo 
  .timer 1 3  _set 
  .timer 1 3  _setup 1
}


alias _srvLIST {
  %y = 1
  var %x $ini(serverlist.ini,servers,0)
  while (%y <= %x)  { set %read $ini(serverlist.ini,servers,%y) | _srvlist2 $readini(serverlist.ini,servers,%read) | inc %y  }
  unset %read
}

alias _srvlist2 {
  if ($dialog(srd)) did -a srd 70 $1
}

alias _dcheck { 
  %x = $get(0)
  %y = 1
  %z = $right($replace($1-,$chr(32),_),-2)
  while ($get(%y)) { if ($get(%y).file == %z) { set %get1 1 | goto end } | inc %y }
  :end 
  return
}

alias _err {
  if ($2) var %x $1 | var %y $2 
  var %xx $input($_message(error,m6),ohau,$_message(error,m7))

}

dialog help {
  title "Help Central"
  size -1 -1 234 211
  option dbu
  list 1, 7 24 84 162, size
  edit , 2, 95 56 133 130, autovs multi vsbar  read
  text , 8, 95 24 10 28
  text  , 6, 105 26 123 12
  text , 13, 95 24 133 3
  text    , 7, 105 38 123 14
  button "Close", 3, 7 195 37 12, ok
  text "iShare 0.9 help center", 4, 7 2 286 8
  text "Click a topic in the list to get more info...", 5, 7 13 116 8
}

on 1:dialog:help:init:0: {

  %x = $ini(System\Help.ini,Topics,0)
  %y = 1
  while (%x >= %y) { did -a help 1 $ini(System\Help.ini,Topics,%y) | inc %y }
  mdx SetMircVersion $version
  mdx MarkDialog $dname
  mdx SetFont $dname 4 +u 19 400 Arial Black
  mdx SetFont $dname 5 14 400 Arial
  mdx SetFont $dname 1 15 400 Arial
  mdx SetFont $dname 2 13 400 Verdana


  mdx SetColor 6,8,13 text $rgb(102,153,204)
  mdx SetColor 7 text $rgb(255,255,255)

  mdx SetColor 6,7,8,13 textbg $rgb(0,51,102)
  mdx SetColor 6,7,8,13 background $rgb(0,51,102)

  mdx SetFont $dname 6,8 22 400 Arial black
  mdx SetFont $dname 7 16 400 Arial 

  mdx SetColor 4 text $rgb(15,155,200)
  mdx SetColor 5,2 text $rgb(50,100,200)
  mdx SetColor 2 background $rgb(255,255,255)
  mdx SetColor 2 textbg $rgb(255,255,255)
  mdx SetFont $dname 3 13 400 Arial
  did -c help 1 1 
  %x = About
  did -ar help 6 %x 
  did -ar help 7  $readini(system\help.ini,topics,%x)
  did -ar help 2 $readini(system\help.ini,Help,%x)

}
on 1:dialog:help:sclick:*: {
  if ($did == 1) {
    %x = $did(help,1).seltext
    if (!$readini(system\help.ini,Help,%x)) did -ar help 2 No help found on $+(",%x,") 
    else { did -ar help 2 $readini(system\help.ini,Help,%x)  
      did -ar help 6 %x 
      did -ar help 7  $readini(system\help.ini,topics,%x)
      if %x == Searching did -a help 2  $readini(system\help.ini,Help,searching2))   
      if %x == channel did -a help 2  $readini(system\help.ini,Help,channel2))   
      if %x == —————————— { did -ar help 6 Help Central | did -c help 1 $calc($did(help,1).sel + 1) | %x = $did(help,1).seltext | did -ar help 2 $readini(system\help.ini,Help,%x)  
        did -ar help 6 %x 
        did -ar help 7  $readini(system\help.ini,topics,%x)
      }
      if %x == Messagebar did -a help 2  $readini(system\help.ini,Help,messagebar2))   
      if %x == Logs did -a help 2 $readini(system\help.ini,Help,Logs2))   
      if %x == About did -a help 2 $readini(system\help.ini,Help,about2))   
      if %x == Updates  did -a help 2 $readini(system\help.ini,Help,updates2)) 
      if %x == #iShare did -a help 2 $crlf $crlf Your current iShare channel is: $-(sys,chn)    
      if %x == Servers did -a help 2 $crlf $crlf Your current server is: $-(sys,server)    
      if %x == Nickname did -a help 2 $crlf $crlf Your current nickname is: $me   

    }





  }
  did -c help 2 1
}
alias _help { 
  if (!$dialog(help)) dialog -m help help
}
dialog _fsh {
  title "First time help!"
  size -1 -1 179 203
  option dbu
  box "Welcome to iShare!", 7, 5 4 169 194

  edit , 1, 22 55 149 115, multi vsbar
  text Did you know..., 2, 32 25 139 15
  text , 3, 22 20 10 30
  text , 4, 32 20 139 6
  text  First time information..., 5, 32 40 139 10
  button Close, 9, 22 179 48 12, ok
}
on 1:Dialog:_fsh:*:*: {
  if ($devent == init) {
    mdx SetMircVersion $version
    mdx MarkDialog $dname
    mdx SetFont $dname 1,2,3,4,5,6 14 400 Arial
    mdx SetFont $dname 7,8 15 400 Arial
    mdx SetColor 2,3,4,5 background $rgb(0,51,102)
    mdx SetFont $dname 2,3 22 400 Arial black
    mdx SetColor 2 text $rgb(102,153,204)
    mdx SetColor 5 text $rgb(255,255,255)
    mdx SetFont $dname 5 16 400 Arial
    mdx SetColor 2,5 textbg $rgb(0,51,102)

    %x = 1
    %y = 7
    while (%x <= %y) {
      did -a _fsh 1 $readini(system\help.ini,fsh,%x)
      inc %x

    }


  }

}

alias _fsh dialog -mo _fsh _fsh
