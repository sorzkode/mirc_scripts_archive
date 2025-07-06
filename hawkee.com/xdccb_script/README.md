# XDCC Browser v3.14 by Yochai Timmer

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

**Script Name:** XDCC Browser  
**Version:** 3.14  
**Category:** File Server  
**Author(s):** Yochai Timmer  
**Email(s):** <Yochai@Dorot.org.il>  
**Website(s):**  
**Release Year:** 2004  
**Tags:** highlight, trigger, xdcc, popup, rejoin, interface, popups, alias, rpg, dcc, fserver, mp3, protection, fserve, dialog, file server, bot, auto join, timer, nicklist, wav, web search  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/xdccb_script/xdccb_script.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
    {
      "name": "xdccb_script.zip",
      "file_count": 7,
      "file_types": [
        ".dll",
        ".doc",
        ".icl",
        ".mdx",
        ".mrc",
        ".txt"
      ],
      "max_file_date": "2004-04-11",
      "min_file_date": "2002-06-17",
      "total_size": 409.12,
      "largest_file": "XDCC Browser.doc",
      "text": [
        "XDCCb.mrc",
        "Xdccb Versions.txt",
        "XDCC Browser.doc"
      ]
    }
```

## 📋 Excerpts (parsed readme / text files)

## Xdccb Versions.txt

```text
XDCC Browser v3.14 By Yochai Timmer { Yochai@Dorot.org.il }



Updates from the older 5.91 version:



1. I've made this version competable to that damned multi server option in the newer versions, and It supports multi mIRC windows.

2. I've used DDE to check what servers the other mIRC windows are on, and the $SCIN to check in the multiservers...

      SO... It works fine, and it won't open clones because it checks if you are connected to the network before it connects you 

      to it when you want to join.

3. I've improved the way the script checks for the next file to download after you finish to download a file. But you still 

      have to remember to delete the request from the request list when you finish downloading something.

4. Added the "Join All" option in the Request tab.

5. I've put the entire script into one dialog, so it's much easier to use.

6. Added an option in the Browser tab to list the nick names by channel name.

7. Improved the Requests system.

8. Added the Queue Status tab.

9. The dialog works with the DBU option now, instead of pixles

10. Fixed the bug that prevented the script from adding a line to the hash table ( /hadd: no such table 'XDCCb-Rizon' (line 824, XDCCb.mrc) )

11. Fixed a bug with the Rmove Queue option, that sent in CTCP instead of a Private Message.. That's why it didn't work

12. The script now uses the /Dccallow option whenever it requests, and then removes the user from the allow list when you remove him 

      from the Request list. I've added this because of some Network protections that wouldn't let people send you some file types.

      Just note that this doesn't mean that your own mIRC's protection won't protect you, it only means that the network will allow the user to send you the file.

13. Fixed a bug that would try to request a #0 packet when you finished recieving a file.

14. The Script will no longer request from users that you are already getting from when you when you click on the "Request all" button.

15. I've found a way to check if the server uses DCCALLOW ... So you won't get these annoying "DCCALLOW Unknown command" messages in the Status Window

16. Fixed the way the script logs the servers... Now it will check if there's a random server for the network in the Servers.ini file, and if it has it will save that server 

      instead of the server that you are on that sometimes isn't even a secondary network. This way it will be much easier to reconnect to people you are downloading from.

17. Fixed a problam in the "Auto get on join" ... It used to request OK when you joined the channel, but didn't request when one of the users you are requesting from joins the channel. Requests OK now..

18. Added "Request Pack" option to the nick list popups... This will ask you what number pack you want to request, and then ask you to give it a description so it will be saved in the requests... This

      is very usefull if you use the online search engines that just throw in the server and channel, but you usually had to wait till the user lists the XDCC in the channel before you request it. Now you

      can click on the nick, right click > XDCCB > Request pack .. and just enter the pack number.

19. Fixed a problam with saving more then 1 pack in the requests for users with brackets [ ]  in their nicks...

20. Fixed a little display problam in the "Queue Status" Tab



Version 2.1 



1. Dialog size - I've finally changed the dialog a bit, so I hope it will work better with different screen sizes.. I've removed 50 from the hight and 120 off the width, and of caurse I had to reorginize the whole dialog as well :/ 

2. Search - Fixed a bug with search button in the request tab.

3. DCCALLOW - Fixed a bug that wouldn't add the user to the /dccallow list when requestion from the browser

4. Net search - Fixed the links in the "Search the net" popup, removed some dead links, and fixed the exisiting ones, and added an option to search for channels.

5. Auto request - If you get a "*** All Slots Full, Main queue of size 40 is Full, Try Again Later" message then the script will try to request again after 5 minutes (a 300 sec timer)

6. Added a "List all packets" button, This will list all the packets in the server, or any server (depends by how you are listing them), into the "Packets" list, and arange them by alphabet.

7. List all networks - Finally added the option a lot of you were requesting... The script can now list and search for packets from all the netowrks you are on. 

8. Started adding a File server system, so you can request from file servers as well... It only lists the advertisements for now, and I'll be happy if you send me any other ads that the script doesn't read... I hope to finish this within a month..

9. Added a 5 second pause before the script requests at a Get fail or file complete, so it will let the bot a few secs to figure that the send has stopped.

10. Fixed the /DccAllow ... The script will now check listen for a "Dccallow unknown command" error as well, when the error is recieved, the network will be removed from the list and the script won't try to use the command again.

11. Fixed a little bug in the save info alias that wouldn't save the network Name correctly. (This means it didn't put the pack in the request list correctly.)





Version 2.3 



1. Fixed a few bugs when using "View all packs"

2. Fixed a bug in the Packets list, when the a user listed when you had his nick selected, it didn't add the packet right...

3. Added an "Option" tab ... It has all the automated Packet options, and the Browser options.

4. Added an option NOT to remove the packs when you disconnect.

5. Added an option to automatically request a list of packs from all the bots in the channel, and an option in the Channels' popups to request it from the current channel.

6. The "Request all" button in the requests tab can now request not only from the current network.

7. You can choose in the options the default settings of the browser: On Top, Deskbar, or whether to load the browser as Fserver or XDCC 

8. Changed the way the script connects to new servers when you want to join someone on the request list. This will make sure the script that load new mIRC windows when you don't want it to...

9. Found 2 more XDCC scripts the script didn't recognize, and Added them: SysReset 2.53 , xSystemX

10. You can now select the Default request type whether /msg or /ctcp

11. When you request a pack, the script will now show who and what you are requesting in the  Status window. Example: [ Requesting Pack #2 (Packet description) from Nick ]

      You can also disable this in the Options tab.

12. The script can see if the user changed the request line from the normal usage, and will use that line. Example: Usage: /ctcp Nick XDCC GET Blah! #<pack number> 

      (supports SysReset 2.53 , invision and iroffer ) if you see any other scripts that can change the request line like that, send me the exact line as it shows in the channel) 

13. Fixed a problam in the Search tab that it wouldn't request the file when you dublle clicked... It would just put it in the request list.

14. The script can now check if users' the packets were changed, and if they were, it will update the users' packet list.

15. Added an Auto list request for SysReset 2.53's List request:  [XDCC Active] - Sends:[1/1] - Queues:[5/10] - Bytes Sent:[8.24GB] - Files Sent:[89] - List Trigger:[/ctcp Nick XDCC LIST Blah!] - SysReset 2.53

16. Fixed a bug that the script wouldn't send a remove command to the user when you removed him from the request list.

17. I've found that there are servers that reply to the /Dccallow request with a "Permission Denied" Error... So The script will not try to request /Dccallow again in those networks after getting such a reply. 

18. Fixed a listing bug when trying to list from all the networks



7/Dec Updates:



1. The script now recognizes a couple more scripts..

2. Fixed a problam that the script wouldn't recognize the bot's trigger if it postes it before the packets. (Like Iroffer)

3. If the dialog is on the taskbar, the script will now just make it the active dialog instead of reloading it when selecting the Browser in the popups.

4. Fixed a bug in the search tab. It will no longer search in the trigger lines when searching got something.

5. The script now recognizes Excursion's trigger line:   �� Syntax: /DCCALLOW +Nick And /CTCP Nick XDCC SEND #<pack number>

6. You can now change the timer to request again after getting a "All slots full" message

7. You can now change the timer to request again after a get session is disconnected.

8. Fixed a bug in the way the script saved the server and network to the Servers.ini file.

9. Fixed the "/.MSG Unknown command" bug when requestiong a list from someone on the nick list.



14/Dec Updats:



1. Fixed the DDE bug. It will now check first if there's DDE server on, and only if it isn't on it will make one.

2. Changed the name in the Nicklist popups to XDCC Browser.

3. Fixed a bug in the Queue status tab that it dind't show the time and date correctly.

4. The Queue status will be updated when getting the "*** All Slots Full, Added you to the main queue in position #." message.

5. Fixed a bug in the request tab, it will now check better if the user is on one of the networks you are on before asking you if you want to join him.

6. I've changed the dialog's title so the Network is shown first (so you can see it in the taskbar)



v2.4 Updates:



1. The script will no longer ask you if you are sure you want to join the users when clicking on hte "Join all" button.

2. Added an option to Options tab to select if you want to connect on a new network window, or to open a new mIRC window for the server.

3. When joining a channel, I've added a little timer for each request so if you have a lot of requests from a channel, you won't be kicked, disconnected or Klined for flooding.

4. Added a timer to the requests in the "Request all" button, so you won't get disconnected or klined for flooding.

5. Added an option to auto join channel on connect.

6. The script will now recognize these List requests, and add them to the browser:



 ; (XDCC) Packs:(8) Trigger:(/msg Nick xdcc list) Sends:(4/4) Queues:(1/25) Record:(1773.5KB/s) Note:(Xdcc bot of #gambler@irc.sony.com) =iroffer=

 ; [XDCC active] You have access to the following pools: Stellvia, Kyogoni. Use: /ctcp Nick XDCC LIST <poolname> to list XDCC Files for one XDCC pool. - SysReset 2.50

 ; [XDCC Active] - Sends:[1/1] - Queues:[5/10] - Bytes Sent:[8.24GB] - Files Sent:[89] - List Trigger:[/ctcp Nick XDCC LIST Trigger!] - SysReset 2.53



   To request the list, choose the nick in the browser, you'll see something like "List. /ctcp Nick List" and you'll just need to dubble click on it.

   The SysReset line with the pools will give you all the lines (like Stellvia, Kyogoni in this example).



7. Fixed a bug that wouldn't let you remove someone from the request list when you are not connected to the server.

8. Fixed a bug that prevented "Join User" button in the request tab from working.

9. Added myndzi's DCC Fix to the script ( if you have it then I advise you to unload it so the script will work). 

    That means that if someone with an invalid IP tries to send you a file, the script will try to dns him and get a correct IP number and connect to him that way.

    That is done by resending yourself his new IP and trying to connect to it, so it might look like you are sending yourself a file, but that's allright, and the script will remember the person who sent it

    and can resume the file if it disconnects (as usual).

10. Upgraded DCC Fix to accept file resume protocol. 

11. An exploit in the new mIRC v6.12 was found, it causes mIRC to crash when someone sends you a really long-named file. So I've added a protection against this as well.

12. The "Request list from all bots" option will now apear only in the channel popup.

13. Fixed a bug in the display of the total number of packs.

14. Fixed a problam in the "Join all" button that caused the script to conenct to a server twice.

15. Added an option to connect to all the networks on the request list when starting mirc.

16. I've re-writen the help file, so you better look at it. ( I'd be glad to get some comments on this)



4th/Jan Updates:



1. Added an option to remove all the packet messages from the channel window. When you turn this on you just won't see all the annoying packets in the channel, but the script will continue listing them.

2. Found a new "Slots full" line: "There are too many send in progress right now and all queue slots are used." 

    The script will now start the "Request again" timer when recieving that message.

3. Fixed a problam when listing triggers from someone with brackets [] in his nick name.



Well that's about it, enjoy yourself and good luck. If you want to download XDCCs more efficientally search for them on the web as

well using the "Search the net" option in the scripts popups (right click in the channel, or status window).



v2.5 Updates:



1. Fixed a little problam with the DCC Allow option getting the "Premission denied, not an IRC operator" error.

2. Fixed a little bug that caused the script not to save the user's information correctly. It was caused when trying to request from a user that isn't online (That could happen if you didn't check the "Auto

     delete packs on disconnect" button in the option, because if you get disconnected, the script can't see if someone leaves the channel when you're off).

3. Added a "Get Pack" Option to the Nick list popups. If the user you've selected has packs listed in the script, then a list of those packs will apear under "XDCC Browser > Get pack... >" . All you have to do is just 

     select the packet you want to request.

4. Fixed a bug in the DDE control, that didn't delete the DDE name form the DDE list when closing mIRC (It also caused an error message right before mIRC closed.)

5. Added a new Dialog for the #incomplete services. This will help you find corrupt files. Do you know the feeling when you download a 1.5Gb file, and there's one little .rar file in it that doesn't work (Corrupt) ?

     Well this service will allow you to find that one file instead of downlaoding the whole thing again. ( still trying this feature, send comments by Emial or at mircscripts.org)



v2.6 Updates:



1. Found another XDCC script advertisement, and added it: cypress/cdcc

     % #2  (733.88mb:   8 gets) Description here :: CD#

2. Fixed a problam in the "Request pack number" popup.

3. Removed the DDE support the script had (Because of the multi server connecitons, you don't need it anymore, and it causes problams with the Explorer's IRC:// links).

4. The "Remove offline packs" button will no longer disapear if you have the "Auto delete packs on disconnect" option on.

5. I've changed the way the script logs and saves the user's network and channel, so it can save even users that left the channel and network. So you can even request from users

 that aren't on any of your networks (if you don't have the "Auto delete packs on disconnect" option on) AND you won't get that annoying mesasge saying the user

   isn't online nad you have to click on the "Remove offline packs" button.

6. Fixed the way the script logs the server, so it searches for a Random server of the network. This way it will be easier for the script to reconnect the users

7. You can now select multiple lines in the browser and requests tabs, so you can remove more then one pack or nick at a time, and add more then one packet to the request list without requesting.

8. I've changed the way the script stores the packets and networks that allow the /dccallow command, so you won't get these errors anymore: 

    * /writeini: line too long (line 1583, XDCCb.mrc)

    * String too long: $instok (line 1583, XDCCb.mrc)

     Those errors would apear in older versions when you try to request to many files from a single user.

9. Removed the option to connect to a server in a new mirc window, found it useless if the script doesn't use DDE anymore.

10. Added an option to the options tab to choose if you want the script to remove a users' packets when he leaves or quits the channel. (this way you can keep all the packets if you want)

11. Added an option in the Dialog's menu to save and load the current network's list. You can also delete the file if you want.

12. Added an option to clear the entire network's list.

13. Fixed a problam in logging packs with the = Character (61) in them.

14. Fixed a problam in listing users who are on a network with a dot (. $chr(46)) in their name.

15. The anoying "You Don't Appear To Be In A Queue" messages won't apear anymore.



Jan 30th Updates:

 

1. Fixed the directory bugs in v2.6

2. Fixed a bug in the Search tab



Version 3.0 !



1. Finaly started using mdx. This means the script looks much better, with a nice Tree View list in the Browser tab, and all the other lists look better as well.  And this also means there are 4 aditional files that have to go with the script.

2. You can install the script file in directory you want, and it will work fine. The data .ini files are stored in the main mIRC directory, so you can 

      With more then 1 mIRC client at the same time without having any Data clahes.

3. Removed the List all / network option in the Browser tab. It's useless because you can see all the channels and networks as it is.

4. Removed the Join and part buttons from the Browser tab, You don't need them

5. Removed the List all Packs button from the Browser tab, You don't need that, just use the search tab. (Click on the serach button without a search string)

6. The packs are listed differently, nicer.

7. Removed the File server browser.

8. Improved the way the script finds the users on different servers.

9. A bit more information is given in the Search tab, so it's easier to look through.

10. Added an option "Avoid long network sessions" . This will start a timer, and will Reconnect to the server every 12 hours. There are servers

       that will ban you if you conenct to them non-stop for a certain amount of time (They can see that you are just hanging idle...).

11. The browser tab now lists all the networks at once. ( You can select  a network to see its packs).

12. The request list now lists by networks.

13. The dialog can be minimized even if it isn't on the desktop.



v3.0 bugfix:



1. Fixed the bug in the request list, that sometimes a nickname was shown with strange characters.

2. Fixed the bug with that caused the script request the same file over and over.

3. Fixed a little visual bug when changing from the search tab to tthe options tab.

4. Updated the Queue Status tab to the mdx style.

5. You can now choose how you want to list the packs in the Browser tab, and the search tab. (either by nick, pack number, network, etc..)



Version 3.1:

 

1. Fixed a problam in the Browser tab that wouldn't delete selected items correctly.

2. Fixed a bug in the scripts' packet listing

3. Added a Combo box in the search tab so you can choose where you want the script to search. (instead of using the popups)

4. Fixed the load bug that caused mIRC to crash.

5. Fixed a problam with the #incomplete section of the script. It won't send any !close commands anymore. 

6. Fixed a visulazation bug that kept a part of the line marked when sorting the lists again.

7. You can now click on a channel  in the Browser tab to get a list of packs from that channel.

8. Fixed the listing by header option, the list will now list correctly by numbers, and file sizes.

9. Fixed the bug that caused the "No such connection ID: #" error message, and caused the script not to request when a user on the 

       requests list joins the channel.

10. Added a combo box in the search tab so you can choose what type of search you want to do (Local, in results or search online)

11. You can now use the dialog's Search tab to search on the Packetnews and XDCCspy sites. The results will apear in the list, and you

       only have to double click on the pack you want and it will request it. (and ask you if you want to join the user). Just remember that 

       Searching online isn't as reliable as searching on the script's databse.

12. Fixed a visulazation bug that stoped the script from updating the requests list when a file was recieved.

13. Fixed a bug that caused the script to add the user more then once to the requests list if you keep dubble clicking on his paks.

14. Fixed a bug in the requests tab Remove item button that wouldn't remove all the nicks in the network if you choose a network.

15. When loading the script, it will ask you if you want to set your mIRC client to accept all files except for the types in the ignore list. This

        will set your mIRC to recieve files automatically so you don't have to actually be there to accept your reqeusts manually. 

16. Fixed a problam the script had with networks that sometimes added a .net to their name.

17. Fixed a few small bugs left over from the commands before teh script used mdx.

18. Fixed some bugs in the remove selected item buttons in the Browser  and Search tabs.



Version 3.12 :



1. Fixed the problam with requesting manually from a nick on the channel.

2. Fixed a little bug in the way the script saved the servers.

3. Fixed a little bug in the "Avoid long session networks" option.

4. Fixed an anonying bug that prevented the script from requesting the right file in certain events.

5. Fixed a little bug in the search tab, when trying to search the results of a web search

6. Fixed a probalm with the way the script searched for the requested network

7. Now when you remove a nick or network from the request list, its queues will be removed from the queue tab as well.

8. Fixed a few more problams with .net networks.

9. Fixed a problam when getting this message: "Sorry, there are too many send in progress right now and all the queue slots are in use." , 

     Now the script will request the file again after the amount of time you set in the options under "Request again timer".

10. Fixed a problam in the requests tab that wouldn't allow you to remove more then 1 selected pack. (it would remove only the last one).



Version 3.13



1.Added advertisment type to the database: Nightvision 2.2.3  ..... Pack Example:

       #62 (348.98mb) [Documentary] �� Stephen Hawkings.universe.1997.ep1.dvdrip.divx.avi - (1x)

2. Auto connect on startup is now set as on by default (when loading the script for the first time)

3. Fixed the list by Size a bit

4. Added a "Search all" option in the poups, under the Search XDCC sites.



Version 3.14



1. Fixed a little bug in the Corrupt Files dialog, that would remove all the requests when trying to remove the selected request.

2. Fixed another bug in the list by size alias.

3. The script will now list the channel's packs only if you dubble click on it. (or select it and then click on the + )

4. Fixed a problam in the with the pack listing when you've selected a nick in the browser while he's listing his packs in the channel.

5. Fixed a problam that the script wouldn't send an XDCC remove command when removing a nick from the request list.

6. Added advertisment type to the database: KVcd-script  ..... Pack Example:

     [#1] - [1x/766.9Mb] [Kvcd.The.Passion.of.the.Christ.TS.ctpy.mpg] - [TS]

7. Added advertisment type to the database: T7XDCCT ..... Pack Example:

    *#2 3x [0.5M] Woodland.2000.v4.1.rar

8. Fixed the "Remove slected item" button in the Browser tab. It didn't work properly when selecting a number of packs in a channel's pack list.

9. When adding a file in the corrupt file dialog, the script will put the last 2 directories from the file's location (if the seconed directory is a CD*, or the last

      directory if is isn't CD*) as the description by desault. It will just put it in the input's editbox, so you can still change the description if you want.

10. Fixed a problam with logging Iroffer packs that have :: in the description.

11. Fixed a problam in the requests list that when you've double clicked on a pack to request it, it would sometimes give you an error that the nick isn't on 

        the chan, when in fact you're not on that channel. Now it will ask you if you want to join the channel (and still tell you if the nick really isn't on the 

        channel.)

12. The corrupt file dialog will now recognize the !close command given in the channel. When someone closes your request the script will remove the

        number form the .ini file, and it won't send a !close command when you remove the file manually from the list.

13. Changed the Saltek network in the Corrupt files dialog to Ultra-Irc network because the #incomplete service changed networks.
```
