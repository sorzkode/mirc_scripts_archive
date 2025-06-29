;
;    wu-tang.mrc [5.22.97(meth0d)] for mirc5.0+
;[Greetz:Hazno,InSaNe (beta testers), webba(for the whole addon idea)] 
;To load this addon put it in your mirc directory and in a channel type /load -rs wutang.mrc
;To unload just type /unwu
;

alias wu {
ame is keepin' it reel with wu-tang.mrc [5.22.97(meth0d)] - watch ya step kid
}
alias wuk {
if $1 == $null { echo $active %wlogo 14ERROR: enter a nick after /wuk | halt }  
set %wuk $rand(1,3)
if %wuk == 1 { kick # $1 wu-tang ain't nuttin to fuc wit. }
if %wuk == 2 { kick # $1 wu-tang choppin' headz }
if %wuk == 3 { kick # $1 wu-tang watch ya step kid }
}
alias wukb {
if $1 == $null { echo $active %wlogo 14ERROR: enter a nick after /wukb | halt }  
set %wuk $rand(1,3)
if %wuk == 1 { kick # $1 wu-tang ain't nuttin to fuc wit. (banned) }
if %wuk == 2 { kick # $1 wu-tang choppin' headz. (banned) }
if %wuk == 3 { kick # $1 wu-tang watch ya step kid. (banned) }
mode # +bb $address($1,4) $1 
}
alias wut {
set %wut $rand(1,3)
if %wut == 1 { topic # The saga continues, wutang.....wutang....wutang for eva@#! }
if %wut == 2 { topic # wu-tang.mrc [5.22.97(meth0d)] - watch ya step kid }
if %wut == 3 { topic # Wutang clan aint nuttin to fuck wit!@# }
}
alias decap {
if $1 == $null { echo $active %wlogo 14ERROR: enter a nick after /decap | halt }  
me decapitates $1 wif hiz wu-tang sword!#&@ PHEER THE WU!%#!
}
alias hanger {
if $1 == $null { echo $active %wlogo 14ERROR: enter a nick after /hanger | halt } 
me pulls $1 $+ 's brain otta hiz ass wif a coat hanger!#!@ METH TICAL$%!%
}
alias stove { 
if $1 == $null { echo $active %wlogo 14ERROR: enter a nick after /stove | halt } 
me ties $1 to a bedpost.
me lets a hanger sit on a stove fo' about a half hour.
me then sticks it in $1 $+ 's ass slow like%&!* TSSSSSSSssss..... 
}
alias sew {
if $1 == $null { echo $active %wlogo 14ERROR: enter a nick after /sew | halt } 
me sews $1 $+ 's asshole closed, and keeps feedin him, and feedin him, and feedin him$#!&!
}
alias wulyric {
if ($1 == 1) { msg # %wu lyrics number $1 $+ .... | msg # Shame on a a nigga who tried to run game on a nigga#$@%! }
if ($1 == 2) { msg # %wu lyrics number $1 $+ .... | msg # Up on the 36 chambers! Its the g00ks!@##$ }
if ($1 == 3) { msg # %wu lyrics number $1 $+ .... | msg # Wutang killa beez we on a swarm@$!%*! }
if ($1 == 4) { msg # %wu lyrics number $1 $+ .... | msg # 36 chambers of death, 360 degrees of perfected stylez%#!%@ }
if ($1 == 5) { msg # %wu lyrics number $1 $+ .... | msg # Clan in tha front let yo feet stomp, niggas on the left rag shoot tha def, hoods on the right, wild for tha night,  punks in the back$&*! }
if ($1 == 6) { msg # %wu lyrics number $1 $+ .... | msg # Wutang clan ain't nuttin to fuc wit#$!@% }
if ($1 == 7) { msg # %wu lyrics number $1 $+ .... | msg # Raw ima give it to ya, with no trivia , raw like cocaine straight from Bolivia. My hihop will rock and shock the nation, like the emancipation proclamation%@!%& }
if ($1 == 8) { msg # %wu lyrics number $1 $+ .... | msg # Im the messiah, i set the microphone on fire. Rap styles vary, and carry like mariah%*!&@! }
if ($1 == 9) { msg # %wu lyrics number $1 $+ .... | msg # My peoples are you with me where you at, in the front, in the back, killa beez on attack#@%*! }
if ($1 == 10) { msg # %wu lyrics number $1 $+ .... | msg # The law, in order to enter the wutang. You must bring the ole dirty bastard type slang%&@! }
if ($1 == 11) { msg # %wu lyrics number $1 $+ .... | msg # Cash rules every thing around me. C.R.E.A.M. get the money, dolla dolla bill y'all%@#!! }
if ($1 > 12) { echo $active %wlogo 14ERROR: enter a number after /wulyric from 1-11 }
}
alias wugone {
if $away { echo $active %wlogo 14ERROR: you are already away. | halt }  
if ($1 == $null) { set %wuaway Bbl | ame is away: [ $+ %wuaway $+ ] ( $+ %wupg $+ ) | away %wuaway - %wu | set %wutime $atime | .timer51 0 1200 ame is away: [ $+ %wuaway $+ ] ( $+ %wupg $+ ) away since %wutime $+ . }
  else { set %wuaway $1- | ame is away: [ $+ %wuaway $+ ] ( $+ %wupg $+ ) | away %wuaway - %wu | set %wutime $atime | .timer51 0 1200 ame is away: [ $+ %wuaway $+ ] ( $+ %wupg $+ ) away since %wutime $+ . }
}
alias wuback {
if $away == $false { echo $active %wlogo 14ERROR: you aren't away. | halt }  
.timer51 off | away
if ($1 == $null) { ame is back. away since %wutime $+ . }
else { ame is back: [ $+ $1- $+ ] away since %wutime $+ . }
}
alias unwu {
echo $active %wlogo Unloading wu-tang.mrc
%ver = %unldver
unset %unldver
.timer 1 1 unload -rs wutang.mrc
}
alias wuhelp {
echo $active %wlogo 10,1 -------------------------------- 
echo $active %wlogo 10,1! %wu help               !
echo $active %wlogo 10,1 -------------------------------- 
echo $active %wlogo 10,1! /wu - advertise                !
echo $active %wlogo 10,1! /wuk (nick) - wu kick          !
echo $active %wlogo 10,1! /wukb (nick) - wu kick ban     !
echo $active %wlogo 10,1! /wut - wu topic                !
echo $active %wlogo 10,1! /decap (nick) - decapitate     !
echo $active %wlogo 10,1! /hanger (nick) - brain removal !
echo $active %wlogo 10,1! /stove (nick) - ass insertion  !
echo $active %wlogo 10,1! /sew (nick) - constipation     !
echo $active %wlogo 10,1! /wulyric (1-11) - wu lyrics    !
echo $active %wlogo 10,1! /pager (on,off) - toggle pager !
echo $active %wlogo 10,1! /wugone (reason) - set away    !
echo $active %wlogo 10,1! /wuback - set back             !
echo $active %wlogo 10,1! /unwu - unload wu              !
echo $active %wlogo 10,1 -------------------------------- 
}
alias pager {
if ($1 == on) { set %wupg p.on | echo $active %wlogo pager is now [on] }
if ($1 == off) { set %wupg p.off | echo $active %wlogo pager is now [off] }  
if ($1 == $null) { echo $active %wlogo 14ERROR: use /pager [on,off]  }
}
alias atime { 
set %atime $gettok($time,1,58)
if (%atime >= 13) { %atime = %atime - 12 | return %atime $+ : $+ $gettok($time,2,58) $+ pm }
else if (%atime == 12) { return %atime $+ : $+ $gettok($time,2,58) $+ pm }
else if (%atime == 0) { %atime = %atime + 12 | return %atime $+ : $+ $gettok($time,2,58) $+ am }
else { return %atime $+ : $+ $gettok($time,2,58) $+ am }
}
ctcp 1:page: {
if (%wupg == p.on) { notice $nick I have been paged. %wu | echo $active %wlogo You have been paged by $1 | timer 10 5 beep }
else { notice $nick My pager is disabled. %wu }
}
on 1:LOAD {
if (wu-tang.mrc isin %ver) { quit wu-tang.mrc overdose (loaded twice) | halt }
%unldver = %ver
%ver = %ver + wu-tang.mrc [5.22.97(meth0d)]
%wu = wu-tang.mrc
%wupg = p.off
%wlogo = 4,1[0wu4]1,0
ame is keepin' it reel with wu-tang.mrc [5.22.97(meth0d)] - watch ya step kid
echo $active %wlogo %wu now loaded.
echo $active %wlogo type /wuhelp for menu
}