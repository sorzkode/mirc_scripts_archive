;$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
;$ This is a bX emu... by f0k
;$ Its rather simple, but whatever
;$ have fun, play nice and dont get too dirty...
;$ Turn off the normal channel things (auto echo'ing of modes/join/part/quit... ect)
;$ Font needs to be Terminal
;$ BackGround color needs to be black.
;$ since !so! 2.5 will *NOT* be released... Im working on my
;$ own full script.  patience...             -f0k
;$ webba, your no longer with "the scene"  You will be missed
;$ as will yer ability.  Much luck in whatever you do.
;$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
alias becho { echo -a $1- }
; pheer the $wrap thingy.  Idea from webba's $align, altho, 100% original code.
alias wrap { if ($left($1,1) == @) { set %len $len($1) | %len = 11 - %len | return $replace($1,@,11@15) $+ $str(%len,ÿ) } | if ($left($1,1) == +) { set %len $len($1) | %len = 11 - %len | return $replace($1,+,11+15) $+ $str(%len,ÿ) } | set %len $len($1) | %len = 10 - %len | return ÿ $+ $1 $+ $str(%len,ÿ) }
alias _wrap { set %len $len($2) | %len = $1 - %len | return $2 $+ $str(%len,ÿ) }
;aliases
alias atime { set %atime $gettok($time,1,58) | if (%atime >= 13) { %atime = %atime - 12 | return %atime $+ : $+ $gettok($time,2,58) $+ pm } | else if (%atime == 12) { return %atime $+ : $+ $gettok($time,2,58) $+ pm } | else if (%atime == 0) { %atime = %atime + 12 | return %atime $+ : $+ $gettok($time,2,58) $+ am } | else { return %atime $+ : $+ $gettok($time,2,58) $+ am } | }
alias stamp { .raw time }
alias op { .raw mode # +oooo $1 $2 $3 $4 | .raw mode # +oooo $5 $6 $7 $8 | .raw mode # +oooo $9 $10 $11 $12 }
alias deop { .raw mode # -oooo $1 $2 $3 $4 | .raw mode # -oooo $5 $6 $7 $8 | .raw mode # -oooo $9 $10 $11 $12 }
alias k { kick # $1 $2- [BX-Kick] }
alias kb { .raw mode # -ob $1 $address($1,2) | kick # $1 $2 [BX-Kick/Ban] }
alias cycle { if ($1 == $null) && (# isin $active) { /set %cycle $active | /part %cycle | /join %cycle | halt } | else { part $1 | join $1 } | }
alias msg { .msg $1 $2- | becho 14[4msg14(5 $+ $1 $+ 14)]15 $2- }
alias ctcp { .ctcp $1 $2- | becho 14[4ctcp14(5 $+ $1 $+ 14)]15 $2- }
alias notice { .notice $1 $2- | becho 14[4notice14(5 $+ $1 $+ 14)]15 $2- }
alias abort { .exit }
alias away { if ($1 != $null) && ($away == $false) { ame ( $+ $1- $+ ) [BX-MsgLog Off] | .away ( $+ $1- $+ ) [BX-MsgLog Off] | unset %away.time | set %away.time 1 | .timer7771 0 1 /inc %away.time } | elseif ($away == $false) { ame ( $+ $me has no reason $+ ) [BX-MsgLog Off] | .away ( $+ $me has no reason $+ ) [BX-MsgLog Off] | unset %away.time | set %away.time 1 | .timer7771 0 1 /inc %away.time 1 } | }
alias back { if ($away == $true) { .raw away | .timer7771 off | ame is back from the dead, Gone $duration(%away.time) } | }
alias wall { if ($me isop #) { .onotice # [BX-Wall/ $+ # $+ ] $1- | becho 15[16BX-Wall15/16 $+ # $+ 15] $1- } | else { set %notice.var 1 | :next | if ($opnick(%notice.var,#) == $null) { goto done } | .raw notice $opnick(%notice.var,#) :[BX-Wall/ $+ # $+ ] $1- | inc %notice.var 1 | goto next | :done } | }
alias stats { becho 9 $+ $_wrap(6,Type) $_wrap(30,Host) Nick | /stats $1- }
;raw crap
raw 391:* { becho On $5-8 at $10 | halt }
raw 501:* { becho 16ù4í16ù15 $2- | halt }
raw 305:* { becho 16ù4í16ù16 BitchX15: You were /away for $duration(%away.time) $+ . [16BX15-MsgLog Off] | halt }
raw 306:* { becho 16ù4í16ù15 $2- | halt }
raw 482:* { becho 16ù4í16ù15 Your not opped on that channel | halt }
raw 481:* { becho 16ù4í16ù15 $2- | halt }
raw 404:* { becho 16ù4í16ù15 $2 is desynched from $server at $atime | halt }
raw 243:* { becho 15 $+ $2 $+ :line $_wrap(30,$3) $5 }
raw 421:* { becho 16ù4í16ù16 BitchX15: invalid command name " $+ $2 $+ " | halt }
raw 473:* { becho 16ù4í16ù15 $chr(91) $+ $2 $+ $chr(93) invite only channel | halt }
raw 475:* { becho 16ù4í16ù15 $chr(91) $+ $2 $+ $chr(93) bad channel key | halt }
raw 471:* { becho 16ù4í16ù15 $chr(91) $+ $2 $+ $chr(93) Channel is full | halt }
raw 352:* { becho 8 $+ $_wrap(10,$2) $+ 16 $+ $wrap($6) $+ 10 $+ $_wrap(3,$7) 15 $+ $3 $+ 4@15 $+ $4 | halt }
raw 332:* { becho 16ù4í16ù15 Topic for 10 $+ $2 $+ 15 $3- | halt }
raw 333:* { becho 16ù4í16ù15 Topic set by 10 $+ $3 14[ $+ 10 $+ $duration($4) $+ 14] | halt }
raw 353:* { unset %do | set %ppl $4- | set %inc 0 | :inc | inc %inc 1 | set %person $gettok(%ppl,%inc,32) | if (%person == $null) { becho %do | halt } | if (%do == $null) { %do = 12 $+ $chr(91) $+ 15 $+ $wrap(%person) $+ 12 $+ $chr(93) $+  } | else { %do = %do 12 $+ $chr(91) $+ 15 $+ $wrap(%person) $+ 12 $+ $chr(93) $+  } | goto inc }
raw 401:* { becho 16 $+ $2 $+ 14: 15No such nick/channel | halt }
raw 311:* { becho 9ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ3Ä9ÄÄÄÄ3ÄÄ9ÄÄ3ÄÄÄÄÄ14Ä3ÄÄÄÄ14ÄÄÄ3Ä14ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ | becho 9| 16 $+ $2 14(15 $+ $3 $+ @ $+ $4 $+ 14)  | becho 9³ 16i15rcnameÿÿ: $6- | halt }
raw 314:* { becho 9ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ3Ä9ÄÄÄÄ3ÄÄ9ÄÄ3ÄÄÄÄÄ14Ä3ÄÄÄÄ14ÄÄÄ3Ä14ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ | becho 9| 16 $+ $2 14(15 $+ $3 $+ @ $+ $4 $+ 14)  | becho 9³ 16i15rcnameÿÿ: $6- | halt }
raw 312:*:becho 14³ 16s15erverÿÿÿ: $3- | halt
raw 319:*:becho 9| 16c15hannels : $3- | halt
raw 317:*:becho 14³ 16i15dleÿÿÿÿÿ: $duration($3) | halt
raw 313:*:becho 14³ 16o15perator : $2 (is 16NOT15 an IRC warrior) | halt
raw 301:*:becho 14³ 16a15wayÿÿÿÿÿ: $3- | halt
;hidden messages, pheer
raw 318:*:halt
raw 369:*:halt
;on EVENT crap
on 1:usermode:{ becho 16ù4í16ù15 Mode changed 14[16 $+ $1- $+ 14]15 for user10 $nick }
on 1:NOTICE:*BX-Wall*:*:{ becho 15[9BX-Wall15: $+ $nick $+ ] $1- }
on 1:NOTICE:*:*:{ becho 14-13 $+ $nick $+ 14(6 $+ $address $+ 14)-15 $1- }
on 1:TEXT:*:?:{ becho 14[13 $+ $nick $+ 14(6 $+ $address $+ 14)]15 $1- | halt }
on 1:text:*:#:{ if ($chan != $active) { becho 2<15 $+ $nick $+ 14:15 $+ $chan $+ 2>15 $1- } | }
on 1:join:#:{ if ($nick == $me) { halt } | else { echo $chan 16ù4í16ù 11 $+ $nick 14[10 $+ $address $+ 14]15 has joined $chan } | }
on 1:part:#:{ if ($nick == $me) { halt } | else { echo $chan 16ù4í16ù 11 $+ $nick 14[10 $+ $address $+ 14]15 has left $chan } | }
on 1:quit:{ becho 16ù4í16ù15 SignOff16 $nick 14(15 $+ $1- $+ 14) }
on 1:INVITE:#:{ becho 14>15>16> $nick invites you to $chan  }
on 1:MODE:#:{ echo $chan 16ù4í16ù15 mode 10  $+ $chan 14[16 $+ $1- $+ 14]15 by16 $nick }
on 1:op:#:{ echo $chan 16ù4í16ù15 mode 10  $+ $chan 14[16+o $opnick $+ 14]15 by16 $nick }
on 1:deop:#:{ echo $chan 16ù4í16ù15 mode 10  $+ $chan 14[16-o $opnick $+ 14]15 by16 $nick }
on 1:voice:#:{ echo $chan 16ù4í16ù15 mode 10  $+ $chan 14[16+v $vnick $+ 14]15 by16 $nick }
on 1:devoice:#:{ echo $chan 16ù4í16ù15 mode 10  $+ $chan 14[16-v $vnick $+ 14]15 by16 $nick }
on 1:ban:#:{ echo $chan 16ù4í16ù15 mode 10  $+ $chan 14[16+b $banmask $+ 14]15 by16 $nick }
on 1:unban:#:{ echo $chan 16ù4í16ù15 mode 10  $+ $chan 14[16-b $banmask $+ 14]15 by16 $nick }
on 1:wallops:*:{ becho 9! $+ $nick $+ ! $1- }
; Idea from static orange by webba... tried to make it as original as possible tho.
on 1:INPUT:{ if ($right($1,1) == $chr(58)) { | if ($1 != $null) { set %ii 1 | set %1 $remove($1,$chr(58)) | :start | if ($left($len(%1),$nick(%ii,$active)) == %1) { /say  $+ $nick(%ii,$active) $+ . $2- | goto end } | elseif ($nick(%ii,$active) != $null) { inc %ii | goto start } | echo -a 15[11!14nc11!15] pattern not found11[ $+ %1 $+ 14*11] | :end | unset %ii | halt | } | } | if ($left($1,1) == /) { goto end } | if ($left($active,1) == $chr(61)) { goto end } | else { .privmsg $active $1- | becho 6<15 $+ $ME $+ 6>15 $1- | halt } | :end }
on 1:LOAD:{ if (bX-eMU isin %ver) { halt } | else { %ver = %Ver + bX-eMU v1.9.9 by f0k | becho 16ù4í16ù15 bX-eMU by f0k now loaded | becho 16ù4í16ù15 This is version 1.9.9 (last version before 2.0) | becho 16ù4í16ù15 In the next version i plan to go to a /window | becho 16ù4í16ù15 format.  Stay tuned. | becho 16ù4í16ù15 if you havent, READ THE README!@#@! | becho 16ù4í16ù15 change font to terminal. ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ-f0k } | }
on 1:CTCPreply:*:{ becho 16ù4í16ù15 CTCP16 $1 15reply from $nick $+ : $2- | halt }
;ctcp crap
ctcp 1:*: { if ($1 != dcc) { becho 14>15>16>9 $nick 14[3 $+ $address $+ 14]3 has requested a $1- from $me | halt } | }
;eof
