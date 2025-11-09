# Bandwidth Monitor v1.0 by pendulum

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

**Script Name:** Bandwidth Monitor  
**Version:** 1.0  
**Category:** bot  
**Authors:** pendulum  
**Email(s):** <pendulum007@hotmail.com>  
**Website(s):**   
**Release Year:** 2000  
**Tags:** toolbar, dialog, dcc, popup, timer, addon, alias, bot, popups  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/bandwidth/bandwidth.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "bandwidth.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2000-05-16",
  "min_file_date": "2000-05-16",
  "total_size": 12.79,
  "largest_file": "bandwidth.mrc",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
  oOOO()

  /  _)

  |  (

  \__)  ()OOOo   Bandwidth Monitor v1.0

         (_  \

          )  |   Bandwidth Monitor will allow you to monitor how much of your bandwidth

  oOOO()  (__/   is in use for DCC Sends and Gets on mIRC.

  /  _)

  |  (           Bandwidth is basically the amount of data per second that is currently

  \__)  ()OOOo   being transferred in DCC Sends and Gets. For example, if I had one DCC

         (_  \   Send going at 2KB/Sec and another DCC Send going at 3KB/Sec, the total

          )  |   bandwidth would be 5KB/Sec.

  oOOO()  (__/

  /  _)          Bandwidth Monitor is ideal for those of us who spend a lot of time not

  |  (           looking at the mIRC screen but doing other things at the computer.  By

  \__)  ()OOOo   just clicking on the Bandwidth Monitor in the Toolbar (where the Start

         (_  \   button is) they can quickly and easily bring up a dialog window, where

          )  |   they can see exactly how much Bandwidth is in use in mIRC.

  oOOO()  (__/

  /  _)          It is also good for the normal IRC user who just wants to see how much

  |  (           they upload/download in a period of time by using the stopwatch.

  \__)  ()OOOo

         (_  \   

          )  |

          (__/   How to Install. 

  oOOO()

  /  _)          1) Move bandwidth.mrc and readme.txt to a directory of your choice.

  |  (              Just make sure that the two files are in the same directory.

  \__)  ()OOOo

         (_  \   2) Open mIRC.

          )  |

  oOOO()  (__/   3) In mIRC, type: /load -rs c:\<path to bandwidth.mrc>\bandwidth.mrc

  /  _)             For example, if I made a folder on the Windows Desktop and called

  |  (              it Addons and placed bandwidth.mrc in there, to load this addon I

  \__)  ()OOOo      would type: /load -rs c:\windows\desktop\addons\bandwidth.mrc

         (_  \

          )  |   Simple!

  oOOO()  (__/

  /  _)          

  |  (

  \__)  ()OOOo   How to Use.

         (_  \

          )  |   After loading the addon, mIRC will pop up a dialog box saying that the

  oOOO()  (__/   addon wants to perform initialization commands. Click Yes to allow the

  /  _)          addon to do this.

  |  (

  \__)  ()OOOo   Once the addon is loaded, a dialog will pop up. You will also be given

         (_  \   confirmation that the addon was installed correctly.

          )  |

          (__/   The dialog that pops up is the main Bandwidth Monitor dialog. You will

  oOOO()         notice all the tabs along the top of it.. Current, Stopwatch, Settings

  /  _)          and Help. I will explain in detail what all of these tabs are below...

  |  (

  \__)  ()OOOo   The Current tab is where the total amount of bandwidth in use for both

         (_  \   DCC Sends and Gets is displayed. Note.. This window does *not* refresh

          )  |   automatically! But it can easily be made to... I'll tell you how to in

  oOOO()  (__/   a little while.

  /  _)

  |  (           To the right of the Current tab is the Stopwatch tab. This enables you

  \__)  ()OOOo   to see how much data you upload or download (via DCC) between the time

         (_  \   you Start the Stopwatch and the time you Stop it. It's easy to use.

          )  |

  oOOO()  (__/   To the right of the Stopwatch tab is the Settings tab. You are able to

  /  _)          change the following:

  |  (

  \__)  ()OOOo    Start Bandwidth Monitor when mIRC Starts?

         (_  \     This gives you the ability to start Bandwidth Monitor when you start

          )  |     mIRC. By default, this is on. When the dialog opens when mIRC starts

  oOOO()  (__/     it can easily be minimised to the toolbar, so it won't be in the way

  /  _)

  |  (            Keep refreshing stats periodically?

  \__)  ()OOOo     Remember earlier when I said I would show you how to make this addon

         (_  \     auto-refresh the stats in the Current tab? Well you can by enableing

          )  |     this option and setting the "refresh rate" to a value of your choice

  oOOO()  (__/

  /  _)          After making any alterations to the settings which you'd like to keep,

  |  (           click the Save button. After clicking the Save button, any changes you

  \__)  ()OOOo   made to the settings should take effect emmediately.

         (_  \

          )  |   Finally, to the right of the Settings tab is the Help tab. Obviousely,

  oOOO()  (__/   I hope you never need to go to this tab because all the information on

  /  _)          how to use this script should have been made clear to you in this file

  |  (           that you have almost finished reading. ;)

  \__)  ()OOOo

         (_  \   The only other thing the Help tab houses is the Uninstall button.. use

          )  |   this to Uninstall the addon if you don't want it any more.. if you use

  oOOO()  (__/   this button, the addon will Uninstall without leaving any traces of it

  /  _)          ever being installed.

  |  (

  \__)
```
