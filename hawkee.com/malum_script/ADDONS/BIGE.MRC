on 1:LOAD: {
  ;The damn E stands for BIGGIE
  .ame juss l0aded E and is now armed wit da phat p0rk ch0pz ... 
  echo 2 -a 4[E] *** Welcome to da world of big ... *** 4[E]
  echo 2 -a 4[E] *** /Ehelp - E help *** 4[E]
  echo 2 -a 4[E] *** /Esay - A E saying *** 4[E]
  echo 2 -a 4[E] *** /Eunbig - Git skinny *** 4[E]
  set %ver %ver + [E] buh PyroMan und Turbo
}
alias /Ehelp {
  echo 2 -a 4[E] *** He-lup *** 4[E]
  echo 2 -a 4[E] *** /Ehelp - Dis help file *** 4[E]
  echo 2 -a 4[E] *** /Esay [numbah 1 - 26] - A E saying 4[E]
  echo 2 -a 4[E] *** /Eunbig - Git skinny *** 4[E]
}
alias /Esay {
  if ($1 == $null) { set %temp $r(1,26) | goto %temp | unset %temp }
  if ($1 isnum 1-26) { goto $1 }
  if ($1 !isnum) { echo 2 -a 4[E] *** j00 foo' ... if ya wanna be like mees ya gotta putz a numbah biatch *** [E] | halt }
  :1 | say "Emmmm p0rk in da h0use" - [E] | halt 
  :2 | say "I make everyting real ... big" - [E] | halt 
  :3 | say "C'mon boys we got a big one here ..." - [E] | halt 
  :4 | say "Girlfriend, here's a ... porkchop" - [E] | halt 
  :5 | say "Fee Fi Fo Fum I got de p0rk ch0ps fo' you hun" - [E] | halt
  :6 | say "When deres a part-e ya better bring extra f00d because biggie's c'mon tew t0wn!" - [E] | halt
  :7 | say "Who's in da house? Ewps hold on ... I AM THE HOUSE!" - [E] | halt
  :8 | say "What you be sayin' foo'? Oh you got some free porkchops?" - [E] | halt
  :9 | say "Why do people call me biggie smalls? I'm no where near small and I'm not big. Just leave me alone ... MOMMMYYYY!!!!" - [E] | halt 
  :10 | say "Mofo I didn't order that chicken ... erm hold on yeah I did..." - [E] | halt
  :11 | say "Why must people reject me and make fun of me? Just because I'm bigger then a whale doesn't give them the right!" - [E] | halt 
  :12 | say "Uh bro help me with the jaws o' life ... gotta get muhself outta de kar" - [E] | halt
  :13 | say "Where's muh Bitch?  Damn sweet thang, you gots ta get off muh ass" - [E] | halt
  :14 | say "When somethings lost and found people come to me. It'll be somewhere in my ocean of flab!" - [E] | halt
  :15 | say "I'll be witcha in a sec, just as soon as I can get muh fat ass out dis chair" - [E] | halt 
  :16 | say "Splish Splash, I be takin' muh bath ... oh sheit where all da water go?" - [E] | halt
  :17 | say "I love it when ya call me big Poppa, hell, I love it when ya call me anything" - [E] | halt
  :18 | say "Biggie, Biggie, Biggie I can't see, yer fuckin' lard suffocates me" - [E] | halt
  :19 | say "W00 boy last night I fell asleep on muh r0ad and the niggahs tried to drive away in me ... thought I was some kinda cadilac or sumfin'" - [E] | halt
  :20 | say "Ya crew run run run, I roll roll roll" - [E] | halt
  :21 | say "Ha, thicka than yo average ... Truck full of cabbage" - [E] | halt
  :22 | say "You gon' eat that?" - [E] | halt 
  :23 | say "We'll always love big p0rk ch0pz" - [E] | halt
  :24 | say "I'm on da east coast ... west coast ... hold on eye yam de w3rld" - [E] | halt
  :25 | say "Kinda makes ya think how ironic it was ... that I died from a bullet, and not a heart attack" - [E] | halt
  :26 | say "Shoot 'em up, shoot 'em down.. can't miss, biggie's all around" - [E] | halt 
}
alias /Eunbig /.unload -rs $mircdiraddons $+ \ $+ bige.mrc | set %ver $remove(%ver,+ [E] buh PyroMan und Turbo) | echo 2 -a *** Wow finally got some lipo-suction ... | halt
