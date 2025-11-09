# ^ASM^ v2.1 by ASM

## ⁉️ This is part of an mIRC script archiving project. Please read the [README](https://github.com/sorzkode/mirc_scripts_archive/blob/main/README.md) file located in the [main project repository](https://github.com/sorzkode/mirc_scripts_archive) for more information / disclaimers

## ⚠️ Important Disclaimers

- **I am not the original author** of this script and do not claim any ownership or authorship
- **Historical Preservation Only**: This script is archived for historical and educational purposes
- **No Support**: I cannot provide support, updates, or fixes for this script
- **Not Thoroughly Tested**: The script has not been thoroughly tested in modern environments
- **Use at Your Own Risk**: Any use of this script is entirely at your own risk
- **Potentially Outdated/Incompatible**: This script was designed for much older versions of mIRC and Windows
- **Educational Value**: This archive serves to document the evolution of IRC scripting and early internet culture

## 🔍 Script Information (metadata parsed from files)

**Script Name:** ^ASM^  
**Version:** 2.1  
**Category:** bot  
**Authors:** ASM  
**Email(s):** <adrians1@hotmail.com>  
**Website(s):** [http://www.mirc.co.uk](http://www.mirc.co.uk), [http://www.netors.cjb.net)](http://www.netors.cjb.net)), [http://(http:www.netors.cjb.net](http://(http:www.netors.cjb.net)  
**Release Year:** 2000  
**Tags:** dialog, popup, color text, fserve, timer, highlight, alias, bot, popups, mp3  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/dfont2.1/dfont2.1.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "dfont2.1.zip",
  "file_count": 5,
  "file_types": [
    ".als",
    ".hdf",
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2000-03-21",
  "min_file_date": "2000-03-20",
  "total_size": 48.25,
  "largest_file": "dfontload.mrc",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text




 

             DiNaStYFoNtChOoSeRv2.1by^ASM^



		     adrians1@hotmail.com





Aren't you bored of having the same text color always, or to 

have to type ctrl + k to have your text written in colors??... 

Well... DiNaStY FoNt ChOoSeR is an add-on that allows you to 

change your text color and type however you want it, and as 

easy as few clicks.



To load this add-on type: 

/load -rs dfontload.mrc 

if you have it in your mirc directory



If you don't know where is it type:

//load -rs $dir="Find dfontload.mrc" *.mrc

and find DiNaStY FoNt ChOoSeR load file (dfontload.mrc)



 Requirments:

  - You need mIRC v5.7 for this script to work.

  - You need all this files in the same folder always, you can change

    the .mrc name if you want so, but not the others.

  - This script works better in a 800*600 resolution, it'll work

    in other too I think.



             Thanks for using:

        DiNaStYFoNtChOoSeRby^ASM^





 Credits:



Beta testers:

 - GangStar-

 - Imbecil

 - MUdO

 - lUzMa-2k



Fonts:

 - IRcap





Note: I could have done the Fonts by my self, but I was to lazy

  to to them by my self so I rip some code from IRcap =)



Note: The text will not perform your font settings if the first 

  character of a text is not a letter or number, this is done 

  so you can perform @find or !nick in mp3 channels.





 Please send, comments or suggestions for any other scripts.



	Nickname: ^ASM^ 

	  Server: us.undernet.org 

	 Channel: (not defiened)

          E-mail: adrians1@hotmail.com



  DiNaStY ScRiPtInG - All rights reserved (c) 1999 - 2000





 Versions:



Version 2.1 - 21/03/2000 :

 - Fixed the box on about dialog, the top line of the box used to 

    disappear when you select anything else.

 - Changed most of variable names

 - You can no longer run DiNaStY FoNt ChOoSeR in mirc 5.61 or less,

    I think every one has 5.7 now, if not get it =)

 - I added an except channels dialog so you can put the channels 

    were you don't want DiNaStY FoNt ChOoSeR to apply font settings

    in, maybe because they ban you or something, I don't know, but

    I added this new feature.

 - Added a "?" button on the main dialog, so if you have it  

    selected, it will give you some help about some of the things 

    on the dialog. Just try it.

 - I gived a new look to the help topics and added few more.

 - I changed a menubar alias that was used in the info dialog, if you

    don't have menubar it tells you to go to the status window, not 

    big change but it is one.

 - Fixed the Input settings(when you send text) so won't work on 

    fserve commands(get,dir,cd,ls,help,etc..) and so it doesn't work

    on costum windows either.

 - Changed fonts variable names so DiNaStY FoNt ScRiPt can be more 

    compatible to any script.



Version 2.01 - 20/02/2000 :

 - Fixed a tiny bug with the test window 



Version 2.0 - 14/02/2000 :

 - First of all I forgot to add a readme file to last version, so

    I decided to put it here.

 - I have set the call up aliases so if the dialog is already open 

    it won't try to reopen, this will avoid the message:

     * /dialog: '****' name in use

 - I have added a little thing so the dialog show up will be cool,

    it will only work in mIRC v5.7 because I used the "while" command

    the script will still work on v5.61 though.

 - If the first character of a text is a number it will also apply

    the font settings you have. 

 - Can't unload if other dialogs are open

 - If mirc is not the active app, the test window won't show, since

    it's opened as desktop window and on top of all windows and in 

    the latest version it was on top of all windows, even if it wasn't

    mIRC =).

 - I added a button on the info/help/about dialog so you can access

    the readme file, and I also change the look of it a bit.

 - I added a lot more topics to the help dialog so you won't have

    any trouble.

 - DiNaStY FoNt ChOoSeR will check for the needed files, and if you

    don't have them, it will do an automatic unload.

 - I made DiNaStY FoNt ChOoSeR more compatible with mIRC 5.61 since 

    a lot of people don't have mIRC 5.7. Althought it's not as nice

    as in 5.7.

 - I added an option so you can hide the window, well it reduces the

    window only in a "show" button that if you click it, the dialog

    goes back to normal.

 - The "show" button only shows in 5.61 now, when you hide the dialog 

    on mIRC 5.7+ it hides the dialog in the task bar, and to show it 

    again just click in the taskbar.

 - In last version each time you moved the setup dialog, it makes the

    test window the active window, now it makes the setup dialog the 

    active window. (Only in mIRC 5.7)

 - The setup dialog now saves the positions in which it was closed 

    and it is opened in the same position.

 - Since the test window won't move any longer of the taskbar y set 

    the test window not to move any longer of the
```
