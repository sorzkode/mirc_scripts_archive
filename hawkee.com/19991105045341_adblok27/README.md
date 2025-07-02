# spam blocker v2.7 by LaZyLion

## ⁉️ This is part of an mIRC script archiving project. Please read the [README](https://github.com/sorzkode/mirc_scripts_archive/blob/main/README.md) file located in the [main project repository](https://github.com/sorzkode/mirc_scripts_archive) for more information / disclaimers  

## ⚠️ Important Disclaimers

- **I am not the original author** of this script and do not claim any ownership or authorship
- **Historical Preservation Only**: This script is archived for historical and educational purposes
- **No Support**: I cannot provide support, updates, or fixes for this script
- **Not Thoroughly Tested**: The script has not been thoroughly tested in modern environments
- **Use at Your Own Risk**: Any use of this script is entirely at your own risk
- **Potentially Outdated/Incompatible**: This script was designed for much older versions of mIRC and Windows
- **Educational Value**: This archive serves to document the evolution of IRC scripting and early internet culture

## 🔍 Script Information (metadta parsed from files)

**Script Name:** spam blocker  
**Version:** 2.7  
**Category:** addon  
**Author(s):** LaZyLion  
**Email(s):** <roymon@incentre.net>  
**Website(s):** [http://lazylion.home.ml.org](http://lazylion.home.ml.org)  
**Release Year:** 1998  
**Tags:** timer, alias, dcc, dialog, popup, ad blocker, trigger, protection, highlight, anti spam  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19991105045341_adblok27/19991105045341_adblok27.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19991105045341_adblok27.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1998-04-07",
  "min_file_date": "1998-03-31",
  "total_size": 23.22,
  "largest_file": "Ad_block.txt",
  "text": [
    "Ad_block.txt",
    "Ad_block.mrc"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## Ad_block.txt

```text
;<<-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=->>
; spam blocker by LazyLion (copyright  details on homepage)
; http://lazylion.home.ml.org
; hanging  in  #chatzone on EFnet and DALnet
; LaZyLion roars at 4am gmt (if i feel like it)
; Ad_Block version 2.7 for mIRC 5.31, April 1, 1998
;<<-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=->>

All versions of mIRC are copyright Khaled Mardam-Bey & mIRC Co. Ltd

-- Blocks incoming query advertisements!

Thanks for trying it!  Tell others.

------------------------------------------

Files:
AD_Block.txt		What you are reading!
AD_Block.mrc		The script file to load into mirc remote.

(the .mrc file must be loaded into the remote section of mirc)

------------------------------------------

*** To Install:

- Unzip the two files into your mirc directory. eg: C:\mirc

- Run mirc. 

- in any mirc window type:

	/remote on
	/events on
	/load -rs ad_block.mrc

(or)

- In mIRC, click on Tools, Remote

This is called the Remote Editor

- In the remote editor, click File, Load, Script

- File Name: AD_BLOCK.mrc

While still in the Remote editor...

- Click Listen, and ensure that all three are turned on.

- Exit the Remote editor.

Now Connect to an irc server, this will activate Ad_Block

- type /server irc.videotron.ab.ca

( mirc has this part pretty much automated,
  click the lightning button in the upper left hand corner )

: if you are already connected, disconnect and reconnect
: or exit and restart mirc

------------------------------------------

*** Command List (not that you should ever need them )

Each of these is available by right clicking on the status window.

/AD_Catcher_Toggle On/Off	Toggle AD_Block on/off.

/AD_Keyword_2List		Add a new word to the list of key words to watch for.
				( also copy to clipboard and right click on query window)

/AD_Change_Reply reply		Changes response sent to spammer / - for no reply.

/AD_Set_Delay 12		Sets how often query processor routine is run by timer.
				(5 seconds min, 30 secs max, 12 to 15 is normal )

/AD_Silent_Mode			Toggle silent mode.

A brief help section is also available by right clicking on the
status window.


*****************  After this I get technical *******************
                      so quit reading now

------------------------------------------
Ad Blocker is a fairly small and quick script and is not resource
heavy. It maintains only about 5 variables at any given time and 
these are reset everytime you connect to a server.

I choose to leave them as variables because they are accessed every
5 to 30 seconds which would prevent Hard Disk spin down were they
stored in a file.

Ad_Block will create a data file called ad_block.ini in the mirc
directory, just so you know!!! Like most .ini files, don't mess
with what you don't understand.

------------------------------------------

*** How to use: Join a channel! Let Ad_Block do the work!

First things first; in mIRC, click File, Options
Select the IRC Switches tab

On the left side, uncheck "Iconify query window"
and uncheck "Dedicated query window"

On the right hand side under Show
uncheck "Queries in active window"


If you have the "dedicated query window" or the
"show queries in active" checked on, then Ad_Block won't work!

If you like them on, then you don't need Ad_Block, because they won't 
open sepeate windows which steal your attention.

------------------------------------------

It works like this....

You join a channel, and since it is the most popular channel around,
(like say chatzone on EFnet) some college student is being paid by
some pornography web site to run a script that sends you a message
(/msg or /query) telling you to go see this web page!! (or whatever)

If you see the ad once, don't worry about it. 
If you see it twice, add the guy to your /ignore list.
If you see it again, then the guy has probably changed his nick
after being kicked by an op who saw his ad!!

Eventually the guy is going to learn about relay bots (don't ask)
and the same ad is going to come at you from many different places.

This is ALL called "spamming" (Some one told my why once, 
damn if I remember). It doesn't have to be an "on join:" ad 
either. Anybody can /msg you anytime. 

(Call display where are you when we need you?)

If you use seperate windows for /msgs then a new window opens
interrupting what you are doing.  If this isn't bad enuff, try having
12 open almost simultanously. (I'm not kidding!)

What I hate is when I'm typing (I look at the keyboard when i type) 
and a new query window opens out of the blue and splits my typing 
across two windows. 

If the new query is someone I actually want to talk to, fine!  

But when some GUY interrupts me to say he has 38d tits and a nude
picture at http://you.sucker.com/payfirst.html  then I get annoyed!!!
( I made this one up, if it does exist, don't sue me )

Certain ads will always have certain words, so if a new incoming 
message contains any of those words, Ad_Block just doesn't 
display the messsage.

Ad_Block creates it's own data file from scratch the first time you 
run it and puts a few basic words in that cover 70% of the ads 
out there. 

This data file also contains a reply to send to the spammer.
You can customize this line or choose not to send one at all by
leaving it blank.

------------------------------------------

*** An AD got thru!!!  ( How do I add my own key words? )

The current Key words that Ad_Block looks for are:

porn
xxx
sex
www
free

If an ad gets through, one of a few things happened. I won't list them
here because then every advertiser will start using them.

If an ad got through in a msg window then chances are someone took a
creative writing course and didn't use a word from the list.

  AMAZING! Mark it on the calendar. Make fun of it in the channel.

   But first, do one of the following:

- type:
      /AD_Keyword_2List tits	
          ("tits" being the new keyword from the offensive msg to add)
(or)

- a. highlight the key-word in the msg window with yer mouse
	(this copies it to the clipboard, trust me)	
  b. right click on the msg window with your mouse
  c. select Add "tits" with your mouse ... button!
  d. yes, the word should show up there, click it already
  e. close the msg

------------------------------------------

*** How do I change the reply

Let's customize shall we?

The original idea of replying to an ad is to scare them away from 
continuing to advertise by threatening legal action. Not that I ever
plan to do any such thing, but to a scared newbie college freshmen who
found internet last month and thinks he is in easy money... heh heh heh

The other idea is to let the advertisers themselves know that thier
ads are not getting through!!!!!!!!!

My personal reason is just to be pissy.

- type /AD_Change_Reply Talk to the Hand...

Your new reply is now "Talk to the Hand..."

If you just type "/AD_Change_Reply"  a little window will pop up 
and ask for a new reply message.  

You can also right-click on the status window.

------------------------------------------

If you are certain that something is extremely messed up, delete
the file AD_Block.ini from the mirc directory and restart mirc.
If that doesn't fix it then re-install from the ZIP file.

Remember that this is for mIRC version 5.31

ad_block 1 and 2/2.5 are for mirc v5.02 to v5.11
ad_block 2.6x and 2.7 are for mirc 5.31

*** Ad_Block 2.7 changes from previous versions

- all alias commands renamed
- all varibles renamed
- has the function keys removed to prevent conflicts with other scripts
- all commands can be handled from the status window popup 
- help list added to status window popup
- reduced to one script file instead of two
- bugs in change reply and add new keyword fixed (hopefully)

Watch for a version for channel ops!!  hail to the +o

------------------------------------------

The bugs that aren't really bugs but annoying quirks:

-Because Ad_Block catches the msg first, No other mirc functions
 or scripts can act on it, even if it passes.

-Some bots msg you with a false nick, when ad-block msgs them back,
 it gets "no such nick" error. This sux.
 If you are using silent mode and get this error out of the blue,
 don't worry about it.
 version 2.62+ has a raw command to counter this

-Ad_block 2 - 2.62, when printing a passed msg, simply does a /query
 on $nick and then /echos the msg to the active window. This worked
 fine until Mirc came out with a desktop feature for windows 95
 that allows you to keep specific windows on top while mirc itself
 is buried or minimized. In this case when mirc does a /query, it 
 doesn't become the active window. The desktop maintains. 
 So Ad_block will print to that window. 

 At least you'll get the message.

------------------------------------------

Another thing that will happen eventually is called a "chad-bot"
Short for CHat ADvert bot; it will msg you with something like:

<whoever> Hi!         then wait 10 secs and send
<whoever> How r u?    then wait 10 more secs, or wait for you to respond

then it will send the ad-msg. 

The first two msgs will get past Ad_Block because they don't contain
any words from the list. The third gets thru because because it is 
not considered a new query and therefore not caught by mirc.

I'll work on this one, but for now, suffer... and /ignore.


------------------------------------------

If you have any problems or suggestions, Please email me at

roymon@incentre.net

-----------------------------------------------------
*** The script.ini thing (if you looked, which you should)


If someone out of the blue suddenly tries to send you a file
called script.ini, don't take it!!!!!!!

If you do, or did, don't load it into mirc!!!!!!!

It usually contains script instructions which, when remotely 
activated by a hacker, sends said hacker potentially valuable
info about your computer. Most of you don't have information anyone
would want but:

The script also will send itself out to others whenever you are
mircing around. This could flood you off the server and at the least
won't make you any friends.

A self replicationg script? How to protect yourself?

Don't use AutoAccept DCC in mirc. When the dialogue comes up,
Cancel it.

Ad_bloc2.x has a feature built in to block someone trying to send you 
script.ini files. It then sends a nasty reply to the sender to 
make him/her aware of the trojan virus and that they are sending it.

(And what to do with it on the off chance they are doing it on purpose)

If it is a file you want to recieve, right click on the status window
to shut Ad-Block off.

*** Never Run a Script that you don't understand!!!!!!

There are different script.ini's going around.

If you get your hands on a copy of one, you might read it and find out
it has a quit command built in! 
One of the ones I saw would /quit if it saw the text "simpsalapim" in
a channel. I don't want to repeat some word in a channel every time
someone tries to send me. But if you know the key for it, it is 
funny.

It'll also make them realize that something might be wrong when thier
mirc keeps quiting!!

---------------------------------------------------------

Programmers notes.
version 1 vs version 2.x

Ad block is simple in its concept.

Intercept all msgs, check for keywords, and dis-allow any msg
containing one of the words.

This is great in theory, if you only have to process one msg at a time.

The fact is that while mirc is capable of running multiple scripts
simultaneously, each responding to the same event, it is not capable of
running the same module twice at the same time!

This sux big moose appendage.

OnJoin msgs may not hit you simultaneously, but they are damn close
enuff that you can't read them. And what happens is that every time
a New Query pops up, mirc restarts the AD_block(ver1) module even if 
it isn't finished with the last one.

If it doesn't finish, it doesn't /halt, and the msg gets thru.
So only the absolute last msg gets blocked. (and the ones that
wait two seconds for you to close the last batch.)

Even if mirc were capable of running the same routine, it does not 
maintain seperate variable lists. So every time a new call begins, 
the last one forgets where it was in the keyword file, and who it 
was dealing with.

I'm proud to say that version 2 deals nicely with this problem.

What it does is intercept all msgs and halts them after storing them 
to a data file.

Then every 15 secs, ( I made use of the timer command ) another
routine is run to analyse each msg for key words. If the msg is
clean, it then open a query window to that user and echos the nick
and msg into the window.

Drawbacks: If you have other scripts that respond to QueryOpen, they 
may conflict with Ad_Block.  It's up to you!


*** mirc 5.31 changed it's scripting functions a little

"queryopen" is now just "open" but catches both new action
and straight text.


As always Please msg me with any problems or questions.

------------------------------------------
eof


```
