# By iRP v0.1 by Microsoft Visual C

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

**Script Name:** By iRP  
**Version:** 0.1  
**Category:** bot  
**Authors:** Microsoft Visual C  
**Email(s):**   
**Website(s):** [http://www.DNSstuff.com](http://www.DNSstuff.com), [http://www.dnsstuff.com](http://www.dnsstuff.com), [http://ing](http://ing)  
**Release Year:** 2005  
**Tags:** toolbar, gui, sockets, c:program filesmicrosoft visual studio .netvc7platformsdkincludeprerelease, c:program filesmicrosoft visual studio .netframeworksdkinclude, c:program filesmicrosoft visual studio .netvc7atlmfcinclude, c:program filesmicrosoft visual studio .netvc7include, highlight, notify, bot, c:program filesmicrosoft visual studio .netvc7platformsdkinclude  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/resolveaddr%5b07-13%5d/resolveaddr%5b07-13%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "resolveaddr%5b07-13%5d.zip",
  "file_count": 15,
  "file_types": [
    ".aps",
    ".cpp",
    ".def",
    ".dll",
    ".h",
    ".htm",
    ".ncb",
    ".rc",
    ".rc2",
    ".sln",
    ".suo",
    ".txt",
    ".vcproj"
  ],
  "max_file_date": "2005-07-13",
  "min_file_date": "2005-07-10",
  "total_size": 113.25,
  "largest_file": "resolveaddr.ncb",
  "text": [
    "ReadMe.txt"
  ]
}
```

## 📋 Text Content (from ReadMe.txt)

```text
ResolveAddr v0.1 By iRP

-----------------------

I was programming in mIRC and came across the functionality problems involved with the /DNS command... It is intented to 

give the output of other computer addresses only onto the screen and not in with the mIRC coding language. 



Bug:

When you query a hostname that contains more then one ip address, it will only return the first address in the list.

Example:

irc.efnet.info contains:

	195.111.64.195

	198.3.160.3

	198.163.214.60

	198.175.186.5

	198.252.144.2

	204.92.73.10

	205.210.145.2

	216.32.207.207

	216.193.223.223

	217.17.33.10

	64.156.25.83

	65.77.140.140

	66.225.225.225

	69.16.172.2

	80.240.238.17

	141.213.238.252

	192.116.231.44

	193.109.122.77

	193.163.220.3

	194.109.129.220



But this .DLL will only return the first address:

//echo -a $dll(resolveaddr.dll,resolvename,irc.efnet.net)

	Output: 195.111.64.195 

-------

Functions:

//echo -a $dll(resolveaddr.dll,resolvename,www.dnsstuff.com)

	Output: 66.36.247.82 

		(IP address of www.dnsstuff.com)



//echo -a $dll(resolveaddr.dll,resolveaddr,66.36.247.82)

	Output: www.DNSstuff.com

		(Hostname of 66.36.247.82)
```
