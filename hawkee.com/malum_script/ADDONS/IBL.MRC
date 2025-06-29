#######################################################################
# Internal Banlist for mIRC written by `butane
# mIRC has an internal address list which I use alot.  Therefor I decided that it would be a good idea to
# script an internal ban list.  This is a highly efficent addon and it follows the rules by keeping variables 
# prefixed with ibl.variablename.  I could have done the ibl with variables instead of ini's but right now it
# works and thats all I care about.  On to the useage..
# Other than that "Phear"
# $ibl works alot like $ial you can use $ibl(#channel,mask,match).property or $ibl(#channel,ban).property
# the properties for $ibl are .setby and .setat
# $ibl(#killer,*,3)              would return *!*gyt-c@*.tch.virgin.net
# $ibl(#killer,*virgin.net*,0)   would return 1 (the total number of matches of virgin.net in the ban list)
# $ibl(#killer,*,0)              would return 7 (the total number of bans in the ban list)
# $ibl(#killer,*,3).setby        would return `butane!killer@ipt-101-23.aol.com
# $ibl(#killer,*,3).setat        would return 865591959
# $ibl(#killer,1)                would return *!*@*.industrynet.net     
# $ibl(#killer,0)                would return 7
#
# ---:Shout Outz:---
# #killer crew and #floods crew.. B|zzybone (my wuver)
# dem0nlord (my gawd) BiOToXiN (my her0)
# _TopGun_ (my baby), JoDmAn (my pimp) yer mom (my bitch)
# and all those other scripting fools (#mircscripts :P~)
# ----------------------------------------------------------------------
# If this looks like something you couldn't have scripted yourself
# stop releaseing public scripts.  This is a relatively easy thing
# to write.  Use this for your personal\public scripts at will.  
# Just if you can't script DON'T! and if your on dal net DON'T USE THIS!
# and if you have a web page don't zip this or I crash your server.
# thanks :)
#######################################################################

on 1:START: { write -c tempibl.$$$ | unset %ibl.* }
on 1:BAN:#: { 
  %ibl.a = 0 
  :ibl.a
  inc %ibl.a 1
  %ibl.var = $readini tempibl.$$$ $chan %ibl.a
  if %ibl.var == $null || %ibl.var == non { 
    writeini tempibl.$$$ $chan %ibl.a $banmask
    writeini tempibl.$$$ $chan $+ .setby %ibl.a $address($nick,5)
    writeini tempibl.$$$ $chan $+ .setat %ibl.a $ctime
    halt 
  } 
  goto ibl.a 
}
on 1:UNBAN:#: {
  %ibl.b = 0
  :ibl.b
  inc %ibl.b 1
  %ibl.var = $readini tempibl.$$$ $chan %ibl.b
  if %ibl.var == $banmask { writeini tempibl.$$$ $chan %ibl.b non | halt }
  if %ibl.var == $null { halt }
  goto ibl.b
}
alias ibl {
  if * isin $2 {
    %ibl.match = 0
    %ibl.k = 0
    :ibl.k
    inc %ibl.k 1
    %ibl.var = $readini tempibl.$$$ $1 %ibl.k
    if %ibl.var == $null && $3 == 0 { return %ibl.match }
    if %ibl.var == $Null { return $null }
    if $2 iswm %ibl.var { 
      inc %ibl.match 1
      if %ibl.match != $3 { goto ibl.k } 
      if $4 != $null && $left($4,4) == .set { return $readini tempibl.$$$ $1 $+ $4 %ibl.k } 
      if $4 == $null { return $readini tempibl.$$$ $1 %ibl.k }
    }
    goto ibl.k
  }
  if $2 == 0 {
    %ibl.x = 0
    %ibl.match = 0
    :ibl.x
    inc %ibl.x 1
    %ibl.var = $readini tempibl.$$$ $1 %ibl.x
    if %ibl.var == non { goto ibl.x }
    if %ibl.var == $null { return %ibl.match }
    inc %ibl.match 1
    goto ibl.x
  }
  if $3 != $null { return $readini tempibl.$$$ $1 $+ $3 $2 }
  return $readini tempibl.$$$ $1 $2
}
on 1:JOIN:#: { if $nick == $me { set [ % $+ ibl.up. $+ [ $chan ] ] 0 | remini tempibl.$$$ $chan | remini tempibl.$$$ $chan $+ setat | remini tempibl.$$$ $chan $+ setby | mode $chan +b | .enable #iblupdate } }
#iblupdate on
raw 367:*:{ inc [ % $+ ibl.up. [ $+ [ $2 ] ] ]  1 |  writeini tempibl.$$$ $2 [ % $+ ibl.up. [ $+ [ $2 ] ] ] $3  | writeini tempibl.$$$ $2 $+ .setby [ % $+ ibl.up. [ $+ [ $2 ] ] ]  $4 | writeini tempibl.$$$ $2 $+ .setat [ % $+ ibl.up. [ $+ [ $2 ] ] ]  $5 | halt }
raw 368:*: { .disable #ibleupdate | halt }
#iblupdate end
on 1:LOAD: {
  echo 1 -a Internal Ban List for mIRC loaded
; I could care less about updateing %ver for a lousy identifier :P~
}
 
