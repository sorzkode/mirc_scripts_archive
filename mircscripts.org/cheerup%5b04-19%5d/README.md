# cheerup%5b04-19%5d v0 by DJ_Toyz

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

**Script Name:** cheerup%5b04-19%5d  
**Version:** 0  
**Category:** game  
**Authors:** DJ_Toyz  
**Email(s):** <to1ne@hotmail.com>, <dragonzap1@aol.com>, <E@C.LP>  
**Website(s):** [http://www.mircscripts.org](http://www.mircscripts.org), [http://users.telenet.be/DJ_Toyz/mIRC/Cheer-Up%20Readme.pdf](http://users.telenet.be/DJ_Toyz/mIRC/Cheer-Up%20Readme.pdf), [http://users.telenet.be/DJ_Toyz/mIRC/CheerUp.zip](http://users.telenet.be/DJ_Toyz/mIRC/CheerUp.zip), [http://www.mircscripts.org](http://www.mircscripts.org), [http://www.mircscripts.org](http://www.mircscripts.org), [http://to1ne@hotmail.com](http://to1ne@hotmail.com), [http://www.mircscripts.org/comments.php?cid=2699](http://www.mircscripts.org/comments.php?cid=2699)  
**Release Year:** 2005  
**Tags:** toolbar, dialog, timer, statusbar, rpg, highlight, alias, bot, dcc  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/cheerup%5b04-19%5d/cheerup%5b04-19%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "cheerup%5b04-19%5d.zip",
  "file_count": 14,
  "file_types": [
    ".cnt",
    ".dll",
    ".ftg",
    ".gid",
    ".ini",
    ".mdx",
    ".mrc",
    ".png",
    ".txt"
  ],
  "max_file_date": "2005-04-19",
  "min_file_date": "2002-05-20",
  "total_size": 371.96,
  "largest_file": "CheerUp/MDX/mdx.FTG",
  "text": [
    "CheerUp/Cheer-Up Readme.txt"
  ]
}
```

## 📋 Text Content (from CheerUp/Cheer-Up Readme.txt)

```text
***********************************************************************************************

*                                                                                             *

*                                     Cheer-Up Text v2.41                                     *

*                                 made by To1ne (aka DJ_Toyz)                                 *

*                                                                                             *

***********************************************************************************************





1)	Introduction

        ------------

Cheer-Up Text is an easy-to-use add-on to make color-aliases.

So everyone (with or without any knowledge about mIRC-scripts can make text like lol

appear like Laughing Out Loud with a nice colors, underline and bold text.





2)	Installation

        ------------

Just unzip the file Cheer-Up.zip to your mIRC folder 

(default = C:\Program Files\mIRC).

Then type /load -rs CheerUp/Cheer-Up.mrc in mIRC.

Normally the setup dialog appears, if not type /cheerupsetup or click right in a channel

window and choose Cheer-Up Text.



To remove the script type /unload -rs CheerUp/Cheer-Up.mrc. The files you have to delete

manually from the folder C:\Program Files\mIRC\CheerUp (default).





4)	Usage

        -----

The words and colors are editable in the Setup dialog. Open this dialog by typing

/cheerupsetup or clicking right in a channel and choose Cheer-Up Text.





  1.	Setup tab

 

On the first tab of the setup are the general settings. You can select the layout for 2 styles

<s1> and <s2>. You also can select a prefix for the words which should be colored. 

And with the 2 space options you can select if the word (with prefix) should be separated

with space (in front of & behind) with other words.



With the last 3 options you can choose when the script should replace the words:

 - All words in text: It speaks for itself, all words in the text will be replaced by colored

 - Only the 1st word of text: Only the 1st will be replaced, other will stay as they are

 - If text in one single word: If the text is just 1 word (with a replace word) will be colored



If you have selected the correct setting, press Save. Dont forget!





  2.	Words tab

 

On the second tab there is a listbox with all the words which will be colored.



To Add, just type the word in the upper left box, the colored text in the big box on the right

and press Add. Use the tags <s1> and <s2> to color the text. I recommend to close every

tag with <s1> or <s2>, unless you want some strange looking results.

You also can use Add when you have edited a word and want to save it.

Use Del to delete words from the list.



With the option Case sensitive you can select if the script must react or not on words with

same case as selected in the setup.



Press OK to close the dialog.





3.	Usage tab

 

On the third tab there are several options for using Cheer-Up Text.



At the top there are 2 options:

With the option Cheer-Up Text enabled, you can disable the script without unloading the whole scripts.

With the option Use in query chat too, you can disable using the script in query chat (Private Messages).



Below is a list where you can make special options for channels and networks. You have to fill in the edit-box with a channel or network, you also can enter the active channel/network with clicking the buttons below the box, choose an option and click Add.

The 3 options are:

	1. Dont replace anything: The script wont change a thing at inputted text

	2. Only replace text: The text will be replaced without colors, underline and bold

	3. Replace without colors: The text will be replaced with underline and bold, but without colors



Of course when rule 1 (Dont replace anything) is selected for current network and rule 2 (Only replace text) for current channel, rule 1 will be used in current channel.



 

5)	History

        -------

v2.00: 	- Beta to try out what the script actually should do

v2.10: 	- Remake of the first version

	- <s1> and <s2> introduced

v2.20:	- First public release

	- Some re-scripting

v2.21:	- Little bug-fix	

v2.30:	- Option All words in text, Only first word of text & If text is single word added

	- Some dialog-improvements

	- Bug-fix for numbers in text

v2.31:	- Little re-scripting

	- PDF help file added

v2.32:	- Option Case sensitive added

	- Bug-fix in saving words in INI-file

	- Improvement in combo-box with words

v2.33:	- Added About tab with help and link for download most recent version

	- Bug-fix in query chat

v2.34:	- Bug-fix for mIRC installed in folder containing spaces

	- Logo added

v2.35:	- Bug-fix with / prefix

	- PDF-file only available online, not in the ZIP-file

v2.36:	- Vertical scrollbar added in textbox on Words tab

v2.37:	- Bug-fix textbox on Words tab, maximum 10 lines allowed

v2.41:	- Usage in for channels and networks added

	- Bug-fix for
```
