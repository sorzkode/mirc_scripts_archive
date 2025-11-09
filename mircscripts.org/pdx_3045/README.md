# pdx v1.0 by Unknown

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

**Script Name:** pdx  
**Version:** 1.0  
**Category:** Unknown  
**Authors:** Unknown  
**Email(s):**   
**Website(s):**   
**Release Year:** 2006  
**Tags:** dialog, alias  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/pdx_3045/pdx_3045.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "pdx_3045.zip",
  "file_count": 3,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2006-03-01",
  "min_file_date": "2006-03-01",
  "total_size": 10.62,
  "largest_file": "pdx.mrc",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text


	PDX for mIRC



	  Picwin-dialog-extension for mIRC





Currently able to...



	let you use mIRC color/bold/etc in dialogs



	display  progressbars in dialogs



	add faded or solid backgrounds to your dialogs





_______________________________________________________________



Install:



	Unzip whereever you want and load PDX:  /load -rs "path/pdx.mrc"



	If you want to use the example-script:  /load -rs "path/test.mrc"





_______________________________________________________________



How to use:



	PDX uses picwins which it replaces with icons in a dialog.

	For each control you want to add, you will need to ad an icon to the dialog.

	Each control has to be formated like this:



		icon <ID>, <x> <y> <w> <h> , $pdx ,noborder, [text] <-----------------------------------------__

														|

														|

	To use it on a dialog, you will first have to call pdx.init:

														|

		//pdx.init <DName> $script 

														|

	<DName> is the dialog name, and $script is the file with the dialog in it.

														|

														|

	To change an icon into a control you can use any of the above commands.

														|

	/pdid <ID> <TYPE> [TEXT] changes icons on the fly.

														|

	/pdx.<TYPE> <ID> [TEXT] creates the control, and loads it when you open the dialog.

														|

	(Take a look in test.mrc!)



														|

														|

	Controls can change type with /pdid <id> ..



														|

	If you enter a [text] when calling /pdid or /pdx..., it will use it instead of the text from the icon --

_______________________________________________________________



/pdx.init <DName> <scriptfile>

	

	Set <DName> as the dialog you want to use, and <scriptfile> is the file contaning the dialog.



	

		/pdx.init testdialog mydialog.mrc



/pdx.font <font>



	Sets the font. Default is Arial.





/pdx.fontsize <size>



	Sets the fontsize. Default is 10.



/pdx.back <r,g,b>



	Sets the backgroundcolor. Default is FACE, as it's the same background as the dialog.

	Formating of color: 255,255,255, N or FACE etc



		/pdx.back 200,5,5

		/pdx.back SHADOW

		/pdx.back 123456





/pdx.text <id> [text]

/pdid <id> text [text]



	Creates a textfield.



		/pdx.text 5 Hello world!





/pdx.box <id> [text]

/pdid <id> box [text]



	Creates a box



		/pdx.box 5 Hello world!



/pdx.tips <id> [text]

/pdid <id> tips [text]



	Creates a "tips-box"



		/pdid 5 tips This is a tips!



/pdx.progressbar <id> [0-100]

/pdid <id> progressbar [0-100]



	Creates a progressbar at 0-100 %



		/pdid 3 progressbar 20

		/pdid 3 progressbar 50

		/pdid 3 progressbar 80

		/pdid 3 progressbar 100

		/pdid 3 text Done!



/pdx.bg <id> [fade] <R,G,B> [R,G,B]

/pdid <id> bg [fade] <R,G,B> [R,G,B]



	Creates a background.

	If you only enter only one color it will be used as the background.

	If you enter "fade", and add a secound color, it will fade from the first to the secound color.



	Formating of color: 255,255,255, N, or FACE etc



	

		/pdx.bg 5 fade 255,255,255 0
```
