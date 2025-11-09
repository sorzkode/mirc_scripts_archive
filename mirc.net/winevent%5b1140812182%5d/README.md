# Winevent v1.0 by hixxy

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

**Script Name:** Winevent  
**Version:** 1.0  
**Category:** channel  
**Authors:** hixxy  
**Email(s):** <hixxy@mircscripting.info>  
**Website(s):**   
**Release Year:** 2006  
**Tags:** fserve, notify  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mirc.net/winevent%5b1140812182%5d/winevent%5b1140812182%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "winevent%5b1140812182%5d.zip",
  "file_count": 3,
  "file_types": [
    ".cpp",
    ".dll",
    ".txt"
  ],
  "max_file_date": "2006-02-24",
  "min_file_date": "2006-02-24",
  "total_size": 23.4,
  "largest_file": "Winevent.dll",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
Winevent.dll by hixxy



What does this dll do?

  This dll will tell you when a status, channel, query, send, get, chat, fserve, custom, channel list, notify list, url list or finger window is created or 

  destroyed.

  It was written because of inconsistencies in the way mIRC treats different types of windows.



How do I use this dll?

  Just type "/dll Winevent.dll Load ." without the quotes and then you'll start receiving signals from the dll.



What do the signals look like?

  Signal name: Winevent 

  Parameters: <event> - either Create or Destroy. 

              <class> - either mIRC_Status, mIRC_Channel, mIRC_Query, mIRC_Send, mIRC_Get, mIRC_Chat, mIRC_Fserve, mIRC_Custom, 

                        mIRC_List (for the channel list window) mIRC_Url (for the URL list window) mIRC_Notify (for the notify list window) or

                        mIRC_Finger (for the window that opens when you /finger an ip).

              <hwnd>  - the hwnd of the window.

              <title> - the text in the titlebar of the window. 



How can I catch the signals?

  Just use the on signal event in mIRC.



Can I have an example?

  on *:signal:Winevent:{

    if ($1 == Create) echo -a Window created: $2-

    elseif ($1 == Destroy) echo -a Window destroyed: $2-

  }



How can I contact you if I have a problem, suggestion, etc?

  You can either find me in #mIRC on Undernet or you can email me at hixxy@mircscripting.info
```
