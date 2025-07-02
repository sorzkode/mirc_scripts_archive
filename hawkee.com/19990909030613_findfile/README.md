# FindFile v1 by `RoyG

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

**Script Name:** FindFile  
**Version:** 1  
**Category:** addon  
**Author(s):** `RoyG  
**Email(s):** <royg@geocities.com>, <12royg@geocities.com>  
**Website(s):** [http://www.ze.net/~smorkle--](http://www.ze.net/~smorkle--), [http://home.netscape.com](http://home.netscape.com)  
**Release Year:** 1998  
**Tags:** alias, popups, popup, dcc, highlight, files  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990909030613_findfile/19990909030613_findfile.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990909030613_findfile.zip",
  "file_count": 3,
  "file_types": [
    ".ini",
    ".lst",
    ".txt"
  ],
  "max_file_date": "1998-03-09",
  "min_file_date": "1998-03-08",
  "total_size": 18.55,
  "largest_file": "alias1.ini",
  "text": [
    "alias1.ini",
    "readme!.txt"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## readme!.txt

```text
                  FindFile 1.01 by `RoyG �1998

	I was sitting there one night looking for a file and I looked and 
looked all through Windows Explorer and finally was using the Windows 95 
start menu find program. I finally found what I was looking for then had to 
go back to my mIRC client and try and remember the path so I could dcc send
the file to a friend. I figured there had to be a better way, and if not, 
I'd have to invent one. That was the night I had the idea for this script.
I wanted a script that would allow me to search for files, bring up a list
of what it found, then have a popup menu to allow me to do stuff with what 
I have found. FindFile 1.01 does all of this for me. I hope that you find it
to be an invaluable resource when chatting on IRC.

����������������������������������������������������������������������������
Special Thanks to all these for beta testing this script.

	JetCity
	pba
	monalisa
	keiths 
	karie
	wire
	BigDee 

����������������������������������������������������������������������������
Files included in findfile.zip:

Filename:	Description		
����������������������������������������������������������������������������
readme!.txt 	This file
alias1.ini	This is the main alias file for the script 
popup.lst	This file is the popups for the search results window
		DO NOT LOAD THIS FILE AS A POPUP! 
		It will be auto loaded when needed.		
����������������������������������������������������������������������������

How to Load:

	Loading this script is a cinch, even for folks who don't know a whole
lot about mIRC scripting. This script requires mIRC 5.31 or better. I went
through some extensive trying and came up with a version that sort of worked
with mIRC 5.11 but it had quirks, so I opted not to release it. 

	The first step is to unzip the file (and if you're reading this, 
chances are you already have done this part) and place all the files into 
the directory where mirc32.exe resides. (mIRC default is c:\mirc)

	Secondly, from the mIRC command line (for newbys thats the place 
where you can type) type '/load -a alias1.ini' and press enter. You should
get this notice: *** Loaded aliases 'c:\mirc\alias1.ini'

	Thirdly, from the mIRC command line type '/startup' and the script
will start examining your system. There is a welcome window that pops up
and tells you what is happening. mIRC may slow down or even stop during
this period. Other applications on your system will not be affected.

	Lastly, you need to copy and paste the line from the welcome window
into your nickname popups. 'FindFile: /lookup $$1' is the popup. If you are 
unfimiliar with editing popups, its pretty simple. Click the 'tools' menu
and choose 'popups.' Another window will appear. From there, click the 'view'
menu and choose nickname list. Paste 'FindFile: /lookup $$1' in there 
somewhere, if you're not sure about where to put it, its safest to put it
at the very top of the list. I have mine setup under dcc. It looks like this:

	DCC
	.Send:/dcc send $$1
	.Chat:/dcc chat $$1
	.FindFile: /lookup $$1
	-
You only need the period in front of it if its a sub option. If you are 
unsure, leave the period out and put it at the top or bottom of the list.

At this point you're all set up to start finding files!

����������������������������������������������������������������������������
How to use FindFile 1.01:

	Most everyone is familiar with popup menus and such, but I'll touch
on it very briefly here. A popup menu is ordinarily a litle menu with options
or frequent tasks you perform. Windows95 has a lot of built in popup menus
and mIRC has popups for both the Windows95 and Windows3.xx versions. To use
these menus, simply right click and they pop up, thus the name popups.

	To use FindFile go to a chatroom with mIRC (/join #mirc, for example)
and click your left mouse button on one of the nicknames in the channel list.
then, when that nick is highlighted, click the right mouse button and then
left click on the FindFile option. If you followed my example and put it 
under dcc, you move your mouse down to the DCC option and a sub menu apears
with FindFile in it. Left click your mouse on FindFile and a new window 
will appear.

	When you first open the FindFile Choose_A_File window, a smaller box
appears asking for Search Parameters. Enter in this box what you want to 
search for. If you are looking for the file mirc32.exe, type that in and 
press enter or click 'OK' After a short interval, the list box will show 
the results of your search and how many files were found. Left click on one
of the results then right click to see a popup menu that allows you to 
manipulate the file from mIRC. You can dcc send the file to someone, or run
it, or open jpeg images, or play wav files, you can even rename or delete
files.

	You can use diffrent methods to search. if you ar looking for .wav
files, for instance, you can enter '*.wav' and it will find all .wav files on 
your default drive. If you only want to look in your mirc directory for .wav
files, type 'mirc\*.wav' or '\mirc\*.wav' and it will show all wave files 
in all sub-directories of mirc and the mirc directory itself. Maybe you want
to look on another hard drive or CD-Rom for a file. You can search by
'd:\*.wav' The only kind of search that's not supported are stacked searches
like '*.jpg;*.gif;*.bmp' If I release another version of this script, I will 
make it support that.

   You can use all standard wildcards to search. Here's a brief list:
	* Replaces any number of characters
		*.jpg will find all jpg files 
		s*.txt will find all txt files that start with s
		*d.wav will find all wav files that end in d

	? Replaces any ONE character.
		jo??.txt will find any txt file that starts with jo and only
			has 4 letters. it would find joke.txt or john.txt
		?.wav would find any wav file that only has one letter name.

����������������������������������������������������������������������������

	I'd be happy to answer any questions you have and welcome any 
comments or suguestions or bug reports. E-Mail me at royg@geocities.com 
and visit my web site --http://www.ze.net/~smorkle-- where I plan to have a 
page devoted to this script in the near future.

Thanks 
`RoyG


#	Leagal Stuff:
# THIS SCRIPT IS OFFERED "AS IS" AND "WITH ALL FAULTS."
# WE MAKE NO REPRESENTATIONS OR WARRANTIES OF ANY KIND 
# CONCERNING THE QUALITY, SAFETY OR SUITABILITY OF THE SOFTWARE, 
# EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION 
# ANY IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR 
# A PARTICULAR PURPOSE, OR NON-INFRINGEMENT. 
# IN NO EVENT WILL WE BE LIABLE FOR 
# INDIRECT, PUNITIVE, SPECIAL, INCIDENTAL OR CONSEQUENTIAL 
# ANY DAMAGES HOWEVER THEY MAY ARISE AND EVEN IF WE HAVE BEEN 
# PREVIOUSLY ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.



```
