# Downloader v1 by lasher

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

**Script Name:** Downloader  
**Version:** 1  
**Category:** addon  
**Author(s):** lasher  
**Email(s):** <taltos@netdoor.com>  
**Website(s):** [http://www2.netdoor.com/~taltos/](http://www2.netdoor.com/~taltos/)  
**Release Year:** 1998  
**Tags:** timer, alias, interface, sockets  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990909002438_downloader/19990909002438_downloader.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990909002438_downloader.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1998-08-09",
  "min_file_date": "1998-07-29",
  "total_size": 12.18,
  "largest_file": "MIRC/downloader/downloader.mrc",
  "text": [
    "MIRC/downloader/downloader.mrc",
    "MIRC/downloader/readme.txt"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## MIRC/downloader/readme.txt

```text
Downloader.mrc  (PLEASE read this before using!)
29/07/1998

-------------------------------------------------------

Agreement: 
	The author of this script, is in NO way responsible for any problems
		caused as a result of it's use or misuse. IOW - USE AT YOUR OWN RISK!
		I have tested this script on mIRC 5.41 (32) and recommend using only
		on this version.  Also.. if this text file looks strange (line breaks
		and margin) that's because I use 1024x768 res.  So if it is
		difficult to read, sowwy :-)

Contact:
	IRC Nick (EFnet):	lasher`
	Email:			taltos@netdoor.com
	WWW:			http://www2.netdoor.com/~taltos/

Installing:
	Unzip the contents of this .zip to any folder (if you are 
		reading this i assume you already have:)

	From any mIRC window, type this:

		/load -rs c:\locationof\downloader.mrc

Running:
	A new alias 'downloader' is added (with a shortcut of 'dwn')  

		/downloader <URL>   OR   /dwn <URL>
			(Where <URL> is a valid ftp or http site)
		
	Example Usage:
            	/downloader http://www.widgit.com/somefile.zip
		/dwn ftp://SampleUserName:SamplePass@ftp.widgit.com/user/somefile.arj:21
		/downloader ftp://SampleUserName:SamplePass@ftp.widgit.com/user/somefile.txt
		/dwn ftp://ftp.widgit.com/user/somefile.mpeg
                     
		additional notes:
			Default port is 21 for FTP, 80 for HTTP (duh:)
			Default User Name for FTP is 'anonymous', Password is
				'guest@downloader.mrc'
			Calling the Downloader alias with no parameters opens the 
				@downloader window only.

	Double clicking the @downloader window opens your download folder.  When
		this script is loaded, the default downloader directory is set
		to '$getdir' which is the same dir that mIRC uses.  To change the
		default settings, type:   

			/set %down.getdir C:\locationof\somefolder\

	The editbox of @downloader window can be used for entering URL's to 
		retreive, no alias is required so just type the url into that
		window.

Known Issues/Bugs:
	When using HTTP, if an error occurs, then the server response is saved to
 		the file you were downloading.  I could find NO way around this,
		(this IS my first attempt at programming with sockets) but the
		script will tell you that the file completed.  It should be 
		apparent that SOMETHING is wrong because the file size will be 
		so small.  At this point you could check your parameters and
		just try again, the file will however still exist, so u can just
		delete it or open with notepad and see what happened? :)  Sorry
		about this error, please make a note of it.  I will try to fix
		soon with update. 

	I had no time to work out all problems before the end of month deadline,
		so if you find anything working incorectly please bring them to
		my attention.  This is the first script I have posted 
		anywhere, so give me a break. heh  

	Since I do not dig prefabish stuph, you will find no version replys or
		lame faux logos. The interface is ugly but it works, kinda. :-0  

-------------------------------------------------------

'Life is like a box of chocolates: a cheap, thoughtless perfunctory gift, that 
nobody ever asks for.' -Smoking Man, X-Files.
```
