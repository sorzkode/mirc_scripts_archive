dialog _msgs {
  title Message
  size -1 -1 211 258
  option dbu
  box "Message", 1, 5 5 197 223
  text Header, 2, 10 16 187 8
  text "Header 2", 3, 10 61 187 8
  text "Header3", 4, 10 168 187 8
  text "text1", 5, 10 36 187 40
  text "text2", 6, 10 94 187 70
  text "text3", 7, 10 181 187 45
  button "Close", 8, 5 239 59 12
}

on 1:dialog:_msgs:init:0: {
  .dll dll\mdx.dll SetMircVersion $version
  .dll dll\mdx.dll MarkDialog $dname
  .dll dll\mdx.dll SetFont 5,6,7 13 400 verdana
  .dll dll\mdx.dll SetFont 3,4,2 +u 16 400 Arial
  .dll dll\mdx.dll SetColor 2,3,4 text $rgb(1,1,141)
}

alias _msgs { dialog -m _msgs _msgs }
alias _msgm { 
  if (($1) && ($dialog(_msgs))) { 
    if ($1 == text1) did -ar _msgs 5 $2-
    if ($1 == text2) did -ar _msgs 6 $2-
    if ($1 == text3) did -ar _msgs 7 $2-
    if ($1 == h1) did -ar _msgs 2 $2-  
    if ($1 == h2) did -ar _msgs 3 $2-
    if ($1 == h3) did -ar _msgs 4 $2-
  }

}

alias tms {
  _msgs
  _msgm h1 $_message(imp,m1)
  _msgm text1 $_message(imp,m2)
  _msgm text2 $_message(imp,m3)
}
