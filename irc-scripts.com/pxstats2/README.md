# pxstats2 v2.00 by using the

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

**Script Name:** pxstats2  
**Version:** 2.00  
**Category:** protection  
**Authors:** using the  
**Email(s):** <zmodem@projectx.mx.dk>, <info@projectx.mx.dk>  
**Website(s):** [http://www.projectx.mx.dk](http://www.projectx.mx.dk), [http://www.projectx.mx.dk/px.html](http://www.projectx.mx.dk/px.html), [http://www.projectx.mx.dk/](http://www.projectx.mx.dk/), [http://www.mirc.com/](http://www.mirc.com/), [http://www.mirc.co.uk/](http://www.mirc.co.uk/), [http://www.projectx.mx.dk)](http://www.projectx.mx.dk)), [http://www!projectx!mx!dk/.........](http://www!projectx!mx!dk/.........), [http://px.about](http://px.about)  
**Release Year:** 2000  
**Tags:** dialog, full script, rejoin, popup, timer, addon, protection, alias, bot, dcc  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/pxstats2/pxstats2.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "pxstats2.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2000-09-09",
  "min_file_date": "2000-09-04",
  "total_size": 36.04,
  "largest_file": "pxstats2.mrc",
  "text": [
    "pxstats2readme.txt"
  ]
}
```

## 📋 Text Content (from pxstats2readme.txt)

```text
                                     __  __  _

            ___  ____ __  _ ___  ___ / /_ \ \/ /

           / _ \ __/ _ `/ / -_)/ __/  _/  )  (

          / .__/_/  \___/ /\___/\__/\__/  /_/\_\

         /_/ -------- /__/ ---------------------

                            

                  

================================================================





-----[ Install ]------------------------------------------------



1. Unzip the pxstats2.zip into your mIRC directory.

2. Type /load -rs pxstats2.mrc at the mIRC command line.

3. Click 'Yes', when a dialog box popup asks if you want 

   to run the initialization. If you do NOT click yes, the

   script will not be loaded. We guarantee that NO original 

   ProjectX scripts will load any code that may be harmful to your

   mIRC or computer.

   

 Note: This script requires the latest version of mIRC 5.71+.

       Download it at: http://www.mirc.co.uk/



-----[ Description ]--------------------------------------------



ProjectX Channel Statistics is a channel scanner that outputs

basic information about a channel (Total ops, voices, etc.).

Plenty of options for saving the statistics. Optional to save to

a text file or HTML file.



-----[ Manual ]-------------------------------------------------



First install the addon using the installation instructions at

the beginning of this file. Proceed below for information:



1.) First and foremost, you must connect to an IRC server.



2.) Next you must join a channel (any channel).



3.) Right click in your channel and find the popup that reads:

		ProjectX Channel Statistics



4.) Proceed to the sub-menu for that, and click on:

		#<The Channel You're On Appears Here> Statistics



5.) If all is well, you will see the statistics dialog pop up

    and then it will load all of the channel stats.





[[ New Scans ]]



To perform a new scan:



1.) You must have already scanned a channel (read above

    instructions). You have to still be in the stats dialog.



2.) Click the 'File' menu atop the Statistics dialog.



3.) Click the 'New Scan' menu item.



4.) In the 'Select Channel' dialog, you can select a new channel

    to scan.



5.) Double-click the channel you want to scan, or click 'Scan Now'

    to begin a scan.





[[ Saving Statistics ]]



To save all channel statistics:



1.) You should still have scanned a channel already (read the

    first section in this manual). Must still be in the stats

    dialog.



2.) Click the 'Output' menu, then click the 'Saving Statistics...'

    item.



3.) You have 3 options at this point:

					a.) Save As A Text File

					b.) Save As An HTML File

					c.) Don't Save At All



4.) Select one of the options that fits your needs! :-)





[[ Refresh Stats ]]



1.) You should still have scanned a channel already (read the

    first section in this manual). Must still be in the stats

    dialog.



2.) Click the 'Refresh' button at the bottom of the dialog  next

    to the 'Ok' button.





[[ Outputting Stats To Users or The Channel ]]



To output the stats



1.) You should still have scanned a channel already (read the

    first section in this manual). You must also be inside of the

    'Saving Statistics' dialog (read above on: 'Saving Statistics'

    for information on getting to this dialog).



2.) Once in this dialog, you have 2 input types:

						a.) Channel Combo

						b.) Nickname Textbox



3.) In the channel combo, you are given the list of channels that

    you were currently residing on at the time the dialog was opened.

    The Nickname Textbox is where you can enter the nickname of the

    user that you want to send the stats to.



	-] Send To Channel:

		To send the stats to a channel, select the channel

		that you want to send it to in the 'Combo Box' then

		click the 'Send' button. The addon will do all of the

		rest :-)



	-] Send To User:

		You have 2 options for sending the stats to a user:

						a.) Send The File

						b.) Send The Msg

		-]] Send User The File:

			To send the user the file, you just click

			the 'Send File' radio button under the

			'Send Stats To Another User' label above it.

			Type in the nickname of the user you want to

			send it to, and then click the 'Send' button.

			You're all set! The addon will do the rest!



		-]] Send User The Msg:

			To send the user the msg, click the 'Display

			Msg'd' radio button under the 'Send Stats To

			Another User' label above it. Type in the

			nickname of the user you want to send it to,

			and then click the 'Send' button. The addon

			will /.msg the user all of the statistical

			reports on that channel! :-)





[[ Remove All Saved Stat Files ]]



1.) You should still have scanned a channel already (read the

    first section in this manual). You must also be inside of the

    'Saving Statistics' dialog (read the section on: 'Saving 

    Statistics' for information on getting to this dialog).



3.) Click t
```
