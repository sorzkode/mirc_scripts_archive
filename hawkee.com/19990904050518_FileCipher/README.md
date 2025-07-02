# mIRC File Encryper v1 by danielson

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

**Script Name:** mIRC File Encryper  
**Version:** 1  
**Category:** addon  
**Author(s):** danielson  
**Email(s):** <danchat@techline.com>  
**Website(s):** [unknown](unknown)  
**Release Year:** 1998  
**Tags:** alias, file management, encryption  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990904050518_FileCipher/19990904050518_FileCipher.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990904050518_FileCipher.zip",
  "file_count": 3,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1998-03-30",
  "min_file_date": "1998-03-30",
  "total_size": 14.83,
  "largest_file": "crypt.mrc",
  "text": [
    "About.txt",
    "Some Tips.txt",
    "crypt.mrc"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## About.txt

```text
mIRC File Encryper by danielson of Dalnet
Copyright �1998 All Rights Reserved
Please ask me before using this in your script, if you ask
I will unless some weird circumstances I will let you.
Program uses a password based Algorithm
For files over around 12kb please use UltraFast, but you don't have too.
Thankyou, Copyright � Brad Basler 1998 (All Rights Reserved)
Use /cryptwindow to start it

-------------------------------------------------------

@File Cipher@ is an Arbitrary/non Arbitrary file encrypter.
it uses binary and picture windows. Also I made it use a powerful 8-bit
encryption method. The methods it uses causes it to be impossible to determine
the password by looking at the script, it stores it no where, not even in Varaibles.
It can encrypt in 3 modes.
Normal - Every Character.
Fast - Every 10th Character.
Ultrafast - Every 100th character.

It is relatively fast for mIRC, it sends out pongs every
now and then to prevent you from getting disconnected from IRC.
It can progress a percentage by 1% every second at around 16k, which is slow
but fast for mIRC.


The password comparing system works by scanning the encrypted and normal file
it attempts to establish patterns in differences..
```

## Some Tips.txt

```text
The only tips I have for you are this:

#1: To open, type /cryptwindow
#2: On large files use Ultrafast.

TroubleShooting:

#1: If buttons fail to return to their normal color after
the mouse has been moved off of them, another script using 
the alias - "hilite" is conflicting.

#2: If any other window/other problems occur chances are it's a conflicting script.

If problems persist unload all remotes/aliases, if the problem
still occurs email me at: danchat@techline.com

Also if you'd like to use this in your own script, email me at: danchat@techline.com
```
