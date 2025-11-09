# DO NOT EDIT IN ANY v1.0 by ZMODEM

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

**Script Name:** DO NOT EDIT IN ANY  
**Version:** 1.0  
**Category:** addon  
**Authors:** ZMODEM  
**Email(s):** <justinterri@netzero.net>  
**Website(s):** [http://www.irc-scripts.com](http://www.irc-scripts.com)  
**Release Year:** 2000  
**Tags:** dialog, auto join, auto-join, timer, addon, alias  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/zm_aj/zm_aj.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "zm_aj.zip",
  "file_count": 3,
  "file_types": [
    ".mrc",
    ".srv",
    ".txt"
  ],
  "max_file_date": "2000-07-24",
  "min_file_date": "2000-07-24",
  "total_size": 14.38,
  "largest_file": "zm_aj.mrc",
  "text": [
    "ajreadme.txt"
  ]
}
```

## 📋 Text Content (from ajreadme.txt)

```text
;To view this file properly, I would suggest opening it in NOTEPAD, then clicking Edit & Word Wrap.

-------------------------------------------------------------------------------------------------







             ;===================================;

             |					 |

             |      ZMODEM'S AUTO-JOIN	 	 |

	     |					 |

             |             V1.0			 |

	     |					 |

             |           BY: ZMODEM		 |

	     |					 |

	     ;___________________________________;









 --------------

| Installation |

 --------------

1.) Extract ALL FILES in this ZIP file into ANY directory on your hard-drive (ALL FILES MUST BE EXTRACTED INTO THE SAME DIRECTORY!).

2.) Start mIRC (v5.71+ RECOMMENDED!)

3.) Go into mIRC and type /load -rs C:\pathtofile\zm_aj.mrc

4.) Answer 'Yes' at the prompt.

5.) Click your menubar, status menu, or channel menu.

6.) Go to Zmodem's Auto-Join, then go to Setup.















-------------------------------------------------------------------------------------------------





 --------------

| What It Does |

 --------------



This is Zmodem's Auto-Join. It is not too complex to use. A basic layout is present along with a few options and menus. This addon will allow you to Manage your list of servers with a sub-list of channels to *Automatically* join when it is enabled. The dialog is pretty simple to understand; the layout is presented as follows:





1.) Server Combo Box:



	This combo box will hold all of the servers that you have added into your auto join manager. Selecting a server will bring up the list of channels (in the channel's list box) that you have created for that server.





2.) Add & Del Buttons:



	These buttons, which are the ones located next to the *SERVER* combo box, will add or delete servers. Server names should be the basic token for a server. For example, DALnet has multiple servers; so, instead of adding: irc.dal.net as the server string to hold the channels for, you would add: dal.net This would search for all servers you connect to that end with dal.net. If you wanted to go deeper into the string, such that you are on spider.ca.us.dal.net and you want ALL ca.us.dal.net servers to host your join, you could add: ca.us.dal.net as your server. Once you experiment, it should be pretty easy to get the hang of this :) The add button also supports multiple adds at a time. Simultaneously opening up a numerous amount of add windows is great for adding lots of servers at once. *NOTE: Numerical servers are *NOT* supported in this version. Please refrain from the use of servers that begin with numerical values.





3.) Channel List Box:



	The channel list box presents all channels that are currently set to auto-join in the server you have selected in the *SERVERS COMBO BOX*. The list is pretty self-explanatory ;).





4.) Join Selected Channels:



	This button will automatically join *ALL* of the channels which you have selected in the *CHANNELS LIST BOX*. Multiple selections are welcome. :)





5.) Refresh Servers List:



	Self-Explanatory. Refreshes the Servers in the *SERVERS COMBO BOX*.





6.) Refresh Channels List:



	Self-Explanatory. Refreshes the Channels in the *CHANNELS LIST BOX*.





7.) Add & Del:



	These 2 Add & Del buttons are the ones that reside underneath the *CHANNELS LIST BOX*. They can add and delete channels from the server you currently have selected in the *SERVERS COMBO BOX*. Channels that begin with any character besides + and # are not welcome. Any channels containing character 44, $chr(44), or comma as they are known as, are also not welcome. Adding and Deleting multiple channels is a function that resides here.





8.) Close:



	Too Self-Explanatory to explain :)





9.) File Menu:



	a.) Enable Auto-Join:

		1.) Will present a Check Mark if script is enabled, and none when it's disabled.

	b.) Exit:

		1.) :) Exit Setup Dialog





10.) View Menu:



	a.) Readme File...:

		1.) View the script's Readme File (*HINT*: You're reading it now ;) )





-------------------------------------------------------------------------------------------------







 --------------

| !IMPORTANT!  |

 --------------



Large channel lists may take a while to load, same goes for large servers. Be patient ;-) At this time, servers beginning with numerical values are *NOT* supported.









-------------------------------------------------------------------------------------------------





 --------------

| WHAT'S NEW?  |

 --------------





1.0

---------



1.) Initial Release!







-------------------------------------------------------------------------------------------------









-------------------------------------------------------------------------------------------------





 --------------------------

| NEXT VERSION EXPECTATIONS|

 --------------------------



1.) Custom lists. You can Save and Load your own Custom Auto-Join lists. Great for people who have more than 1 person us
```
