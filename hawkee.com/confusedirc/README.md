# Confused IRC Search v1 by EvilJason

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

**Script Name:** Confused IRC Search  
**Version:** 1  
**Category:** addon  
**Author(s):** EvilJason  
**Email(s):** <CoNfUsEd@CyberClan.com>  
**Website(s):** [www.CyberClan.com](www.CyberClan.com)  
**Release Year:** 1998  
**Tags:** alias, sockets, irc network search, search  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/confusedirc/confusedirc.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "20020110055148_script_20020110055148.zip",
  "file_count": 4,
  "file_types": [
    ".bmp",
    ".ini",
    ".txt"
  ],
  "max_file_date": "1998-05-31",
  "min_file_date": "1998-05-22",
  "total_size": 171.07,
  "largest_file": "cyberclan.bmp",
  "text": [
    "ReadMe.txt",
    "confusedsearch.ini"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## ReadMe.txt

```text
Confused IRC Search was created EvilJason!

Graphics made by gL0baL...



I can  be found on Newnet: irc.assassination.org 

Nick: Eviljason

E-mail address: CoNfUsEd@CyberClan.com

please visit the Cyberclan homepage at 

Http://www.CyberClan.com 



This script was created to search popular IRC

networks for a particular user or a number of users.

I have worked on this for about a month and I think

i have gone over every error I could encounter.

There are a few errors that you may encounter and you 

can look up the problems below.  If you cant find a sollution

e-mail me at: CoNfUsEd@CyberClan.com



!!FIRST!!

load the ini file:confusedsearch.ini in remotes.

Type: /search to begin



keep all these files in the same directory!





This script searches the following networks:

Efnet 

Dalnet

Undernet

Newnet

more servers to be added later.



Possible errors:



Q: Why am i getting a bunch of errors like DRAWTEXT Unknown command?

A: You are not using mIRC 5.31 or higher!



Q: Why is it that I cant find anybody and the search takes forever?

A: Maybe you're not connected to the internet? or using a firewall? or 

have a slow modem, or no person matches the search string you supplied to

the script. 



Q: I can't find my friend dammit, what is wrong?

A: Are you typing the persons name right and/or

using wildcards like "*" or "?"



Q: Yes I am using wildcards and I still cant find them,

what is wrong with this damn thing?

A: Is your friend +I (invisible)?

or on one of the IRC networks that i have listed above?

maybe he/she is on a split server or not connected 

at all.



Q: My computer slows down and mirc freezes,

whats it doing that for?

A: maybe you did a search for an address that matched 

thousands of users, just wait until its done.



Q:Why isnt the little blue bar moving?

A: Because it is either collecting information or

its waiting for information.



How this works:

Well i created the picture window making it look 

like the Win95 search program.  It took a basic 

knowledge of picture windows, socket commands, mirc,

and basic geometry to create this.



Here is the procedure:

I connect to a bunch of IRC networks using hidden

sockets.  I do a /who "Person/Address".

I collect all the information.

when i recieve the "end of /who" raw numeric I

disconnect from the network.

Then you click the results button and see your 

search results.
```
