# Converted the 'MALUM.HLP' file to a .md for readability since .hlp files don't work on modern machines

# MaLum 7.0 Help

**Welcome to MaLum 7.0 Help by PyroMan and KRAkeR!**

*Please pick a topic to define your search.*

For more help with anything you can contact PyroMan and KRAkeR weekdays on the Undernet in #MaLum from 3:00pm-10:00pm.

*(This is not all the commands because this is the first time we used this help file with MaLum and they will be added in the future.)*

## Contents

- [ABC Text](#abc-text)
- [Alarm](#alarm)
- [Away](#away)
- [Ccircops](#ccircops)
- [Channel Stats](#channel-stats)
- [Channel Stuff](#channel-stuff)
- [ChatBot](#chatbot)
- [Clone Checkers](#clone-checkers)
- [DNS](#dns)
- [E-mail Checker](#e-mail-checker)
- [E-mailer/E-mail Bomber](#e-mailere-mail-bomber)
- [Encoder](#encoder)
- [External Programs](#external-programs)
- [Filter](#filter)
- [Flood Protection](#flood-protection)
- [Fserve](#fserve)
- [Gcircops](#gcircops)
- [Hangman](#hangman)
- [Math](#math)
- [OperNut](#opernut)
- [PortScanner](#portscanner)
- [ScrewBan](#screwban)
- [Search](#search)
- [Settings](#settings)
- [Shitlist](#shitlist)
- [SpyBot](#spybot)
- [Talkers](#talkers)
- [View](#view)
- [Voter](#voter)
- [Walla](#walla)
- [WWW.IRC](#wwwirc)

---

## ABC Text

**Usage:** `//say $abc(<text>)` or `//echo $abc(<text>)`

This is a talker that puts words in ABC order. For example if you typed `//say $abc(this is a test)` it would come out on the screen like: "a is test this". This is something used mostly just to mess with peoples minds.

---

## Alarm

**Usage:** `/alarm`

The alarm is, well, an alarm. You just set the time you want it to go off in military time and you are all set. The sound is the page.wav and it goes off a few times.

---

## Away

MaLum has two ways of being away. There is an auto-away that sets yourself away automatically if you don't type anything for 10 minutes. The other away you set. Its in the channel, menubar, and status popups. In the popup, go to away, then click ON. Then you can enter an away message. The away message will come up every 15 minutes. Here are some examples:

**Examples:**

- **auto-away:** `* KRAkeR is away: Auto Away after 10 minutes MaLum`
- **away:** `* KRAkeR is AWAY: WwW (Away since Sunday June 01 1:48:06AM)`

Type `/ctcp KRAkeR page <msg>` to page me!

---

## Ccircops

This is a ircop checker that checks for ircops in the current channel window. Here is an example:

**Example:**

```
*** Listing IRCopz on #wasteland!
    IRCop #1 DeadRange  (*!*cy@vectra19.SCL.CWRU.Edu)
    IRCop #2 Da5id  (*!*wjr@ume.ziggurat.org)
    IRCop #3 pIay  (*!*jason@204.127.145.16)
    Total IRCops on #wasteland: 3
```

**See Also:** [Gcircops](#gcircops)

---

## Channel Stats

**Usage:** `/chanstats -c` or `/chanstats -e` or in the channel stuff popup

The Channel stats tells you how many ops, non-ops, voiced, non-voiced, and away people there are in the channel. You can do this two ways, in the current channel window or echo it to yourself. If you do `/chanstats -e`, you are the only one that can see it. If you do `/chanstats -c`, everyone in the channel can see it.

**Example:**

```
*** Gathering channel information for #botz! (Wait 6 secs)
Channel information for: #botz!
Users: 12 (Gone: 3/12 - Here: 9/12)
Ops: 11 (91.8%) - Non-Ops: 1 (8.4%)
Voiced: 0 (0.0%) - Non-Voiced: 1 (8.1%)
IRCops: None! - Clones: 1 (8.4%)
Total process time: 5822 ticks or 5secs
```

---

## Channel Stuff

Channel stuff is a popup with commands including channel modes, takeover, scanners, clone checkers, channel stats, wall, and banlist. The takeover stuff explains itself. The channel modes are private(p), moderated(m), invite(i), secret(s), only ops change topic(t), Limited(l), and key(k). Those are the normal channel settings but there are also two extra settings in the MaLum channel stuff modes. They are clearchan and give mode back. Clearchan makes the channel so there are no settings set in that channel. For example if the channels mode is +tn and you do clearchan then it will not be +tn anymore.

The banlist shows you who is banned in the current channel. You can show the banlist in the channel where everyone can see it or you can echo it to yourself so only you can see it.

**See Also:** [Filter](#filter), [Search](#search), [Clone Checker](#clone-checkers), [Channel Stats](#channel-stats), [Walla](#walla)

---

## ChatBot

MaLum's ChatBot is not just a ChatBot but a party line too. When you turn the ChatBot on it will ask you what mirc you want to run it from. If you have Windows 3.1 or older you can not open more then one mIRC.exe so you have to make a copy of your mIRC.exe and rename it something else like mirc1.exe or chatbot.exe. Once the ChatBot is connected you can make it join and part channels through the popup. To join the party line just dcc chat it. The ChatBot is not hard to figure out once you have it started up, so just try it out and have fun.

---

## Clone Checkers

Well, first, before I explain how to use the clone checker lemme explain what a clone checker is to all you newbies out there. A clone checker is a device that checks to see if someone is running more then one mIRC. There could be ten different nicks in a channel but they could all be the same person. So that would be 10 clones.

Ok there are two clone checkers in MaLum. A global clone checker and a channel clone checker. The global clone checker checks for clones on a certain user, the channel clone checker checks for clones on everyone in the channel.

To use the global clone checker, click on the nick you wish to check for clones on. Then go to user stuff, then to check for clones on user. Choose if you want to echo it to yourself or if you want to say it in the current channel.

To use the channel clone checker either type `/ccheck3 -c`, or `/ccheck3 -e`, or go to the channel stuff popup and click on clone checkers then click ccheck3. Then choose if you want to echo it to yourself or if you want to say it in the current channel.

**Examples:**

- **global:** `Scanning for clones on "*!*@151.196.76.44" Clone #1: Ne0N-TaNK,{-G|W|S-} Global Clone Detector for *!*@151.196.76.44 is done! Total clones: 2`
- **channel:** `<cLoNe DeTeCtOr> Searching for clones on #botz Clone #1: @|Scream| & @|DeM0n|(*!*@as002.globalknowledge.be) Clone #2: loCkDoWN & @|{egParty (*!*@TNuG.Net) <cLoNe DeTeCtOr> TOTAL CLONED ISPS: 2 (4 Clients Open)`

---

## DNS

**Usage:** `/dns <nick or pop host>`

DNS is used when you want to find out someones pop host ip.

**Example:**

```
(if you typed /dns mindspring.com)
*** Looking up mindspring.com
Finding Address for: ????
Named Address for ????: mindspring.com
IP for mindspring.com is: 207.69.200.12
```

---

## E-Mail Checker

Having a e-mail checker in your mIRC is great because you don't even have to leave your mIRC to check your e-mail. This is how you use it: first you must dns your pop host. Then copy the pop host number. Then type `/checkmail` and paste the pop host number in the first box. Then enter your username then your password. Then it will DCC Chat yourself. In the dcc chat, if you have any mail you need to type list to read your e-mails. When you are done just type quit. Then close the dcc windows.

**See also:** [DNS](#dns)

---

## E-Mailer\E-Mail Bomber

MaLum has a regular e-mailer and an e-mail bomber. The e-mailer is easy to use. To start type `/email`, then enter the e-mail address that you wish to send the e-mail to. Then enter your e-mail address, the topic, and finally the e-mail message. Then the e-mailer will dcc chat you. All you have to do then is wait until its done then close he dcc chat window.

To e-mail bomb type `/emailbomb`. Then enter the same stuff as you would for the normal e-mail except put a fake return e-mail address. Now you need to know that e-mail bombs can be traced. It is not that easy but it can be done, so you should never e-mail bomb a .edu or .gov because they will most likely trace it. **MaLum is not responsible for actions taken against the user for e-mail bombing.**

---

## Encoder

The encoder is exactly what it says. Only people using MaLum can decode the encoded messages. To use the encoder type `/menc` or go to the channel popup and you will find it under encoders and stuff. Then enter a message that you want to be encoded. The decoder automatically decodes the encoded messages from other MaLum users, so you do not have to do anything to read the encoded messages.

---

## External Programs

MaLum's external programs allow you to run other programs right from your mIRC. Some of the external programs are for Windows 95 only and will not work with Windows 3.1 or older. To load an external program just click on the program you wish to run.

---

## Filter

**Usage:** `/filter <word or words to filter>`

Filter is used when you want to kick all nicks with a certain word or letter in there nick or address. For example, if you typed `/filter aol.com` it would kick all the nicks in that channel that use AOL. The filter does not have to be a whole word. It could just be a letter or a number.

---

## Flood Protection

There are three settings on the flood protection, high, medium, and low. With the flood protection, if someone ctcps you more than the amount of times you have for your set limit, it will ignore the person for 20 seconds. To change the set limit go to settings, then max number of ctcps. When you have the Flood protection on low it will ignore them after they ctcp you more times then you have for the set limit. When flood protection is on medium it is after 3 ctcps and high is after 1 ctcp.

---

## Fserve

A FServe is a file server. It is kind of like an ftp except you are not getting files from a site (www), you are getting files from a mIRC user. You can set the command that sets off the fserve, but the fserve has to be on for the command to work. You can also set the dir on your computer that the people can get the files from. You can set how much access someone has on your fserve and you can also ban people from your fserve. More commands are available in fserve.txt.

---

## Gcircops

**Usage:** `/gcircops` or double click on the status window

Gcircops is a icrop checker. It lists all the ircops on the server that you are on and the servers that your server is linked to.

**Example:**

```
Listing all visible IRCops on NETWORK!
IRCop #1: ene - (Oslo-R.NO.EU.Undernet.org) <#Sol> (HERE)
IRCop #2: Ferrago - (London.UK.eu.Undernet.org) <*> (GONE)
IRCop #3: ltl-away -(des-moines.ia.us.undernet.org)<*> (HERE)
IRCop #4: Coccyx - (phoenix.az.us.undernet.org) <#test> (HERE)
IRCop #5: Tyfus - (Lulea.se.eu.undernet.org) <#sweden> (HERE)
IRCop #6: sorenso - (Oslo1.NO.EU.Undernet.org) <#sorenso> (GONE)
Total number of IRCops on NETWORK: 6
```

**See Also:** [Ccircops](#ccircops)

---

## Hangman

This is a hangman game. You can guess a letter and it will tell you if the letter you guessed is a letter in the word. Even if you guess all the correct letters you still have to type in the correct word. The only thing is when you guess a correct letter it will tell you it is correct but it will not be in order. So even after you guess all the letters the word is scrambled. It also tells you the letters that you guessed that were wrong. There are two tips. To see the tips click the right mouse button inside the hangman window.

---

## Math

**Usage:** `//say $math(<+,++,+++,*,**,***>,number1,number2,number3 if needed)` **-OR-** `//echo $math(<+,++,+++,*,**,***>,number1,number2,number3 if needed)`

This is just like using a calculator. You can echo it to your self or say it in a channel. Not much else to say, heh.

---

## OperNut

This bot is made ONLY for wIRCsrv client. It's an oper service to help maintain peace on a server running on your IP. Still in beta stages. To start opernut, just click ON in the popup for OperNut. OperNut can do most ircop commands and can be used kind of as a X or W.

---

## PortScanner

**Usage:** `/portscan <server to portscan>`

The portscanner is a way to find out what ports you can use on a server. It is also great because it tells you what port is fastest. On some servers you cannot do a portscan on that server unless you are on that server, but that is only for a few servers.

**Example:**

```
*** Portscan report for washington.dc.us.undernet.org
*** Took: 5secs
*** Availble ports are: 6660,6661,6662,6664,7777
*** Best port is: 6664
*** Best port traffic: 2096758 Kilobytes
*** Done scanning ports on washington.dc.us.undernet.org!
```

---

## ScrewBan

**Usage:** `/screwban <nick to screwban>`

This bans a nick from a channel using ?'s in the place of some of the letters of the nick's address. So it is harder for the person to unban himself and it is harder for the bots to recognize who it is so the bots protection will not work!!

---

## Search

**Usage:** `/search <words or letters to search for>`

This is something that lets you search for letters or words in people's nicks and addresses and stuff. This does not kick them though unlike the filter. This just shows what you are searching for and the matches to the search.

**Example:**

```
Searching For .net
MaTCh #1. comanche.wildstar.net (WildBot) <1>
MaTCh #2. Dynmc.net (ElfBot) <1>
MaTCh #3. comanche.wildstar.net (ZZ) <1>
DoNe! 3 matches were found with ".net" in it!
```

**See Also:** [Filter](#filter)

---

## Settings

The settings for MaLum are easy to change. Just go to popup | settings. Then just double click on the setting you wish to change.

---

## Shitlist

**Usage:** `/shitlist <channel or *> <nick> <reason>` **-OR-** In the nickname popup under control

The shitlist bans a person from any or all the channels you are in. If someone unbans the person and they come back it will automatically re-ban and kick them. To remove a shitlist type `/rshitlist <channel or *> <nick>`.

---

## SpyBot

To start the spybot in the popups go to bots | spybot | on. Then it starts a chat with you, opens up another copy of mIRC and joins a channel you specify. Then it reports what's happening in the channel into the chat with you. Reports quits, actions, text, kicks, mode changes, topic changes, op, deops, bans, unbans, etc...

---

## Talkers

**Usage:** `//echo $<talker name>(<text>)` or `//say $<talker name>(<text>)` **-OR-** In the popups under Langs, encoder, etc...

The MaLum talkers are reverse, random caps, abc, Ultimate, Ghosty, RUR, and the encoder. The reverse talker is just like it says, it talks in reverse. If you typed `//say $rev(this is a test)` it would come out like this "tset a si siht" The other talkers you can just test them and see what they do.

---

## View

**Usage:** `/view <file to view>`

This opens a file from notepad to be edited, viewed or whatever.

---

## Voter

The voter is exactly just that, a voter. You pick a topic to vote on, you set the amount of time to vote (in seconds). Thats all you have to do!!

---

## Walla

**Usage:** `/walla [+a|+o|-o|+v|-v]` **-OR-** in the popup under channel stuff

This sends a message to everyone in the channel that has a +a,+o,-o,+v,or -v, depending on what you pick. If the message was sent it will say "*** Message was successfully sent!"

---

## <WWW.IRC>

**Usage:** `/www (domain ip) (dir/file)`

**Example:** `/www 207.222.198.216 /main.htm` - Would return the MaLum main.htm page from PyroMan's domain.

---

*End of MaLum 7.0 Help Documentation*
