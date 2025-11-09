;list files:

alias _shrfiles {


  if ($-(config,folderc) == 1) {
    _wait
    did -ar _wait 1 Getting folder information...
    did -ar _wait 2 The script may freeze for a short time but will return to normal when filelisting is complete! Please wait!
    var %x $findfile($_dir(shared),*.*,0) 
    %xyz = 0
    var %y $findfile($_dir(shared),*.*,0,_clc.size $1-)
    + sys sharedfiles %x
    + sys sharedsize $bytes(%xyz).suf
    + config folderc 0  
  }
  if ($dialog(_wait)) dialog -x _Wait
}
alias _shrfiles2 { 
  if ($1 == files) return $-(sys,sharedfiles)
  if ($1 == size)  return $-(sys,sharedsize)
}

alias _clc.size {
  set %xyx $file($1-).size
  set %xyz $calc(%xyx + %xyz)
}

alias _igndia dialog -m _ign _ign
dialog _ign {
  title "File extensions: Ignore"
  size -1 -1 130 199
  option dbu
  list 1, 11 47 57 101, size
  edit "", 2, 11 29 50 10, limit 4
  box "Ignore these files:", 3, 5 11 122 184
  button "Add", 4, 73 48 37 10, default
  button "Delete", 5, 73 63 37 10
  button "Close", 6, 73 138 37 10
  text , 7, 11 156 113 35
}

on 1:dialog:_ign:init:0: {
  .dll dll\mdx.dll SetMircVersion $version
  .dll dll\mdx.dll MarkDialog $dname
  dll dll\mdx.dll SetFont $dname 1,3 13 400 verdana
  dll dll\mdx.dll SetFont $dname 4,5,6,7 13 400 ARial
  did -a _ign 7 $_message(messages,m2)
  set %x $ini(system\config.ini,ignore,0)
  %i = 1
  while (%i <= %x) { did -a _ign 1 $ini(system\config.ini,ignore,%i) | inc %i }
}

on 1:dialog:_ign:sclick:*: {
  if ($did == 4) {  if ($did(_ign,2)) { _ckd $did(_ign,2).text | did -a _ign 1 $did(_ign,2).text | + ignore $did(_ign,2).text 1 |  did -r _ign 2   } }
  if ($did == 5)  { if ($did(_ign,1).sel) { remini system\config.ini ignore $did(_ign,1).seltext  | dialog -x _ign | _igndia  } }
  if ($did == 6) dialog -x _ign
}


alias _ckd { 
  if ($len($1-) <= 3) halt
  if ($-(ignore,$did(_ign,2).text)) halt  
}

alias _getchancount {
  if ($-(sys,chn)) {
    var %x.reg $nick($-(sys,chn),0)
    return %x.reg
  }

}
