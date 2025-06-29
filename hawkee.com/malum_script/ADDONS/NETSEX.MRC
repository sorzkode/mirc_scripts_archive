; NetSex.IRC by CtChocula
; ported to mIRC 5.02 by f0k
; if you script, you are encouraged to add your own lines
; to $femalesex and $malesex
; IF YOU ARE A GIRL, YOU MUST SET YOUR OWN $MALESEX
; I am not Gay girls... I d0nut do that shit to men.
; If you jiZZ all over yer keyboard while using this
; script, you cant hole f0k responsible.  And uhmm... like
; fuck the CDA.  hehe  byebye kiddies.  Until next time...
;                                           -f0k
alias sexhelp { sexcho Commands for NetSex.mrc are: | sexcho /sex - sends sex msg to active window | sexcho /ohbaby <#chan> <nick> - This sets up netsexing | sexcho 1--------For you and <nick> | sexcho /autosex Toggles auto sex'er on/off | sexcho /female Sets default gender of parnter to FEMALE | sexcho /male Sets default gender of partner to MALE }
alias sexcho { echo -a [sEx] $1- }
alias femalesex { set %wh0re $rand(1,20) | goto %wh0re
  :1 | me return kisses you gently. | halt
  :2 | me kisses you deeply. | halt
  :3 | me gently nibbles on your ear. | halt
  :4 | me rams his tongue down your throat. | halt
  :5 | me licks your wet cunt. | halt
  :6 | me carresses your clit with his tongue. | halt
  :7 | me slurps up your wetness. | halt
  :8 | me gently slides himself into you. | halt
  :9 | me fucks you until you moan in XXXstasy. | halt
  :10 | me enjoys hearing you moan. | halt
  :11 | me rides the hershey highway. | halt
  :12 | me licks your voluptous breasts. | halt
  :13 | me kisses your nipples. | halt
  :14 | me buries the tubesteak in your love mound. | halt
  :15 | me calls his dog into the room | halt
  :16 | me calls his sister into the room, to show you how *he likes it* | halt
  :17 | me jiZZes all over your nipples | halt
  :18 | me eats you out | halt
  :19 | me calls you on the teley for some f0ne sex | halt
  :20 | me asks you if he can put it in your sassy little ass...? | halt
}
alias malesex { set %p1mp $rand(1,3) | goto %p1mp
  :1 | me was too lazy to add her own Auto-NetSexing commands *sigh* | halt
  :2 | me knows f0k isnt gay, so that means she was too lazy to add her own Auto-NetSexing commands | halt
  :3 | me wants to show you his penis, SURPRISE! | halt
}
on 1:action:*:#:{ if (%auto_sex == on) { sex } | }
alias ohbaby { if ($2 == $null) { sexcho Dont you need a partner? | halt } | else { join $1 | .timer 1 2 /invite $2 $1  | mode $1 +ntis | .timer 1 2 /topic $1 %def_topc } | }
alias sex { if (%sex_gndr == FEMALE) { .timer 1 3 // $+ $femalesex } | else { .timer 1 3 // $+ $malesex } | }
alias autosex { if (%auto_sex == on) { .set %auto_sex off | sexcho Auto Sexing is now: off | halt } | if (%auto_sex == off) { .set %auto_sex on | sexcho Auto Sexing is now: on | halt } | }
alias male { .set %sex_gndr MALE }
alias female { .set %sex_gndr FEMALE }
on 1:LOAD:{
  if (NetSex.irc isin %ver) { quit I must really need help netsex0ring, loading it twice... jeez }
  else { .set %sex_gndr FEMALE | .set %auto_sex off | .set %def_topc f0k will make you jiZZem... | %ver = %ver + NetSex.IRC v6.9 ported by f0k | sexcho NetSex.IRC now loaded. | /sexcho Default Gender: %sex_gndr | /sexcho Auto Sex: %auto_sex | /sexcho Have fun and play nice -f0k }
}
