# FunctioNX v1 by Nabiki^sKnight

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

**Script Name:** FunctioNX  
**Version:** 1  
**Category:** addon  
**Author(s):** Nabiki^sKnight  
**Email(s):** <adriana@atcon.com>  
**Website(s):** [http://www.geocities.com/Tokyo/Flats/3498](http://www.geocities.com/Tokyo/Flats/3498), [http://www.geocities.com/Tokyo/8434](http://www.geocities.com/Tokyo/8434)  
**Release Year:** 1997  
**Tags:** timer, alias, popup, dcc, nicklist, fkey  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990909053231_fx10/19990909053231_fx10.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990909053231_fx10.zip",
  "file_count": 5,
  "file_types": [
    ".doc",
    ".ini",
    ".set"
  ],
  "max_file_date": "1997-11-02",
  "min_file_date": "1997-10-25",
  "total_size": 74.22,
  "largest_file": "function.doc",
  "text": [
    "fxevents.ini",
    "fxalias.ini",
    "function.doc"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## function.doc

```text
��ࡱ�                >  ��	                               ����        ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������               	   
                                                                      !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   ;   <   =   >   ?   @   A   B   ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������R o o t   E n t r y                                               ��������    	     �      F             �q�G�C   �       W o r d D o c u m e n t                                             ��������                                              C o m p O b j                                                   ������������                                        ^                                                                           ������������                                                   ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������s used to save your current set of function keys. Load is used to load a previously saved set of function keys. Delete is used to erase saved function key sets. Each set of function keys is saved as a file with the extension set.* FX Aliases	* Show	* Save	* Remove	* Remove AllYou can save a single function key as an alias (an FX Alias). In this way, you can give a descriptive name to the actions and set the function key to that descriptive alias instead.For example:	You have F1 set to:		part # | join #mIRC.NIn this example, you part your active channel and then join #mIRC.N. Note that the key will fail if the active window is not a channel.You can then save this function key as an alias with, for example, the name Jump_to_#mIRC.NThe F1 key will automatically be set to this new alias with the descriptive name (as shown in the Show Keys command).Take note however that if your alias uses identifiers that refer to the NickList ($1, $2, etc.), you must have the new function key setting to as: <new name> $1- (or whatever identifier you wanted in place of $1-). FunctioNX does not check for this, and will just set the function key to call <new name> by itself without the identifier.For example:	You have F2 set to:		whois $$1 | echo -a Performing whois on $1In this example, you perform a whois on the selected nick in the NickList (if your active box is currently the nickname listbox and not the channel editbox).You can save this as an alias with the name WhoIsThis?. FunctioNX would then assign F2 with this new name (WhoIsThis?). However, in order for the alias to be processed correctly, you must pass the parameter $1; that is, you must instead re-assign F2 to:				WhoIsThis? $1The Remove command removes a single alias created in this way, whereas Remove All removes all such aliases. Note that FunctioNX does not check for keys currently set to aliases that you are removing.* Options	* Pop-Ups		* FRX		* Menubar		* Channel		* QueryThese toggle the specified pop-up on and off.	* UnloadThis unloads FunctioNX. If you want to keep your current settings, choose not to unset the variables.* Win Options	* MasterThis sets whether to use a custom window for display of text (@FunctioNX or @FRX) or to display  to the active window. Note that if the active window is a listbox, the text is displayed in the Status Window.	* ListboxThis switches the custom window back and forth between normal and listbox. Normal allows copy and paste but the words scroll off to the right of the screen. Listbox lets you scroll to the right to view all the text but does not allow copy and paste. This command refers to the @FRX window when Use FRX toggle is on.	* Use FRXThis toggles whether to use the @FRX window for display of text. Note that if the @FunctioNX window is opened, text is still displayed in the @FunctioNX window rather than the @FRX window.	* Start-Up		* Main		* SetsThis toggles whether to open the @FunctioNX (Main) and @FX-Sets (Sets) windows on mIRC start-up.* Keys On/Off	* All On	* All Off	* Normal	* Control	* ShiftThese toggles turn on and off specific or all set function keys. Once a key is turned off, the function key can then perform the original setting or the setting specified by another script (loaded below fxalias.ini).* Windows	* Restore		* All		* Main		* Sets	* Close		* All		* Main		* SetsThese open/restore and close specified windows: @FunctioNX (Main) and/or @FX-Sets (Sets). Restore also restores the set size and position of the window(s).	* Pos/Size		* Default		* SaveThese define the position and size of both @FunctioNX and @FX-Sets windows. Values for each window are only saved if the window is opened.* Help	* DocumentThis loads the document for FuntioNX using your Windows default viewer.	* HomepageThis loads the FunctioNX homepage using your Windows default browser.* Clear	This clears the buffer of the current window. This command is accessible from all FRX windows and pop-up menus.=====INCLUDED KEY SETS AND ALIASES:There are two sets of functiܥe #�	                �  Q/                    U,                                  ,~  l   ,~  l                                   ~                                              ~  
   
~  
           �  R   (~                                                             �~                                                     �~  T   �~                                                .                                                                                                                                                                                                                                                                                           R      MS Sans Serif     Symbol      System      Times New Roman      Arial Nabiki^sKnight's FunctioNX v1.0 for mIRCThe latest version can be found at NK's Corner:	http://www.geocities.com/Tokyo/Flats/3498CONTENTS:INTRODUCTIONFILESHOW TO STARTCOMMANDSINCLUDED KEY SETS AND ALIASESHOW TO UNINSTALLNOTESTECHNICAL NOTESHISTORYKNOWN ISSUES=====INTRODUCTION:FunctioNX sets alias(es) to a function key (normal, Ctrl, or Shift) and allows you to save/load sets of function key settings. The original purpose for FunctioNX was to serve as an add-on to another script I wrote: FRX (Filerunner X). However, FunctioNX can be used by itself to set your own aliases. In fact, a default set of aliases have been set for some basic IRC operations to serve as examples.=====FILES:The following 5 files should be present:Scripts:fxalias.ini	The ini file containing the aliasesfxevents.ini	The ini file containing the remote events.Help:function.doc	The document file you are reading now.Function Key Sets:fxdfault.set	The default set of function key settings.fxfrx.set		The default set of function key settings for FRX.Two files may be created during your use of FunctioNX:function.tmp	Temporary file that is erased when command processing is completed.function.txt	List of aliases created by FunctioNX.=====HOW TO START:1)	It is recommended that you create a new directory for FunctioNX. Place all files into that directory.	Do not use a path that has spaces in it.2)	Load fxevents.ini to the remote events by typing (replace c:\function with your path):		/load -rs c:\function\fxevents.ini3)	Allow the initialization commands to run, which will:		Set the FunctioNX path.		Load fxalias.ini into the alias.		Set the default function key settings.	For best results, fxalias.ini should be the first file in the alias section. If it is not, you can unload your other aliases, load fxalias into the alias, and then reload your other aliases after it.4)	If you do not have any pop-ups in your menubar, load fxevents.ini into your menubar pop-up (replace c:\function with your path):		Menubar:	/load -pm c:\function\fxevents.ini	This is because mIRC cannot add the FunctioNX pop-ups to your existing menubar pop-ups if you don't have any existing menubar pop-ups.=====COMMANDS:You can access all the commands in the @FunctioNX window (with the right mouse button) or in the menubar. The commands can also be accessed from the @FRX window if you have FRX installed.The @FunctioNX window can be opened by typing:	/FNXYou can see what version of FunctioNX another user is using by sending them the CTCP .FNX. For example, to find out what version of FunctioNX Nabiki^sKnight is using, type:	/CTCP Nabiki^sKnight .FNXThe Pop-Up Commands:* Function Keys	* Show Keys		* All		* Normal		* Control		* ShiftShows the currently set function keys. Inactive function keys are in silver.	* DefaultRestores the default settings for the function keys.	* Set/UnsetSets what a function key does. Enter the function key you want to set using the syntax of F<number from 1 to 12> plus the shift or control flag if applicable (eg. F12, sF3, cF1). The prompt for a function key is repeated so you can keep setting function keys until you enter nothing.For example:	F12	F12	sF3	Shift-F3	cF1	Control-F1You can then enter aliase(s) to specify what the function key does. Multiple aliases must be separated by |.You can also use identifiers and variables.For example:1)		say I just pressed a function key. | say But what was it?2)		echo -a My name is $?="Enter name:" | run $dir="Pick the file to run:" *.exe | echo -a The variable is: %variable3)		say My current IRC server is: $server	* SwapThis is used to swap the aliases of two function keys.	* Key Sets		* Save		* Load		* DeleteThese are used to manage sets of function keys. Save ion keys included: Default and FRX. The Default set includes certain commands that are performed on selected nick(s) in the channel nicklist. However, the commands will still work if you do not select a nick or if your active area is not the nicklist box; you will be asked to enter the nick(s). The FRX set are certain commands for another script I wrote: FRX (Filerunner X).Default Set:F2		WhoIs? $1F3		Ping! $1F4		DCC_Send $1Ctrl-F5		Ignore_Nick $1Ctrl-F6		UnIgnore_Nick $1Ctrl-F7		Op_Nick $1-Ctrl-F8		DeOp_Nick $1-Ctrl-F9		UnBan_Nick $1Ctrl-F10		Ban_Nick $1Ctrl-F11		Kick_Nick $1Ctrl-F12		Kick/Ban_Nick $1FRX Set:F2		Run_FileF3		Refresh_Active_WindowF4		Toggle_NickList_SendF5		Show_AssociationF6		Show_DescriptionF7		Show_MessageF8		Open_FRX_WindowsF9		Open_MainF10		Open_ExtensionsF11		Open_FavouritesF12		Open_OptionsCtrl-F1		Document_HelpCtrl-F2		Run_File_(No_CTCP)Ctrl-F3		Toggle_DesktopCtrl-F4		Toggle_Receive_AllCtrl-F5		Unset_AssocationCtrl-F6		Unset_DescriptionCtrl-F7		Delete_MessageCtrl-F8		Close_FRX_WindowsShift-F1		Editbox_HelpShift-F2		Run_File_(Silent)Shift-F3		Toggle_Track_RecentShift-F4		Toggle_Send_AllShift-F5		Set/Edit_AssociationShift-F6		Set/Edit_DescriptionShift-F7		Add_MessageShift-F8		Minimize_FRX_WindowsAll Included Aliases:The aliases are all in fxalias.ini. No point to list them here when you can just open the alias window and look at them.=====HOW TO UNINSTALL:Just use the Unload command in the pop-ups.=====NOTES:Please do not alter the script without permission from the author.Distribute freely. Do not charge for it please.And of course, I'm not responsible for any damage this script may cause to your softwares, hardwares or health.Send comments/suggestions/bug reports to Nabiki^sKnight at adriana@atcon.comScript by: Nabiki^sKnightDate: November 2, 1997=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=Nabiki's Castle (http://www.geocities.com/Tokyo/8434)NK's Corner (http://www.geocities.com/Tokyo/Flats/3498)=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-======TECHNICAL NOTES:* Specifications:For use with mIRC v5.1 or later.Note that all text are displayed in the @FunctioNX (or @FRX) window.All aliases start with fx- (except for /FNX) and all temporary variables begin with %~fxThe following are permanent (or semi-permanent) variables:%fxpath			%fxoptThe script also makes a temporary file called function.tmp (automatically erased) if you switch from Listbox to Normal window mode or vice versa.The toggles in %fxopt:	c	Master window switch	x	Listbox	a	Use FRX	m	Main window on start-up	s	@FX-Sets window on start-up=====HISTORY:v1.0	November 2, 1997First release of FunctioNX.=====KNOWN ISSUES:1)	For best results, fxalias.ini should be the first file in the alias section. If it is not, you can unload your other aliases, load fxalias into the alias, and then reload your other aliases after it.2)	You cannot store files in paths that have spaces in them. This is due to the mIRC command writeini not being able to process properly.3)	There is a 30kb limit to alias files. Therefore, the amount of aliases you can save is limited. However, this shouldn't be a problem since there is about 25kb to save to in fxalias.ini and 25kb is quite a bit of space to fill up.                                                                                                                                                                               �  $  %  &  U  V  W  X  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                  &  '  (  �  �  �  �  �����������������¿�������������������|yvsp] b] b] b] b] b] bUV] bc  ] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] bUV] bc  ] b] b] b] b] b] b] b] b] b
] ^b
c    ,�  �  �  �  �  �  �  �  �  �  �  �    	  ,  -  9  :  d  e  f  k  l  m  y  z  �  �  �  �  �  �  �  �  �  �  �  �  �  )  *  +  ,  b  c  ����������������������������������������}zwt        ] b] b] b] b] b] b] b] b] b] b] b] b] b] b] bU] b] b] b] b] b] b] b] bU] b] b] b] b] b] b] b] b] b] b] b] bU] b] b] b] b] b] bUV] bc  ] b] b ,c  d  p  q  �  �  �  �  �  �  �  �  �  �  �  �  �      g  h  i  �  �  �  �  �  �  �  �  �  �  	  	  	  	  	  L	  M	  N	  O	  P	  g	  h	  i	  j	  ������������������¿��������������������|yvs ] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] bV] b] b] b] b] b] b] b] bUV] bc  ] b] b] b] b] b] b] b] b] b] b] b] b] b -j	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  }
  ~
  
  �
  �
                1  2  3  4  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �������������������¿�������������������|yvs ] b] b] b] b] b] b] b] b] b] b] b] bUV] bc  ] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] ^b] b] b] b] b] b] b] b] b] b -�  n  o  p  q  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  6  ��������������������������~xrlf`ZW] b
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  ] b] b] b
] ^bc  ] b] b] b] b] b] b] b] b "6  7  8  9  B  C  w  x  y  z  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  D  E  p  q  r  ~    �  �  ���������������������������������~{xuroli ] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b
U] bc  
U] bc  
U] bc  
U] bc  ] b] b
U] bc  
U] bc  
U] bc  
U] bc  
U] bc   )�  �  �  �  �  �  �  �  3  4  5  7  8  9  ^  _  `  a  g  h  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �����������������������������{uoic]       
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  ] b
U] bc  
U] bc  
U] bc  
U] bc  ] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b #�  �  �  �  �  �  �  �  �  �  �  �  �  �  �                  �  �  �  �  �  �  �  �  �        �  �  �������������������������~{xurolifc`        ] b] b] b] b] b] b] b] b] b] b] b] b] b] b
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  ] b] b] b] b] b
U] bc  
U] bc   $�  �  �  f  g  h  �  �  �  �  �  �  �  �  �  �  �    	  
  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �������������������¿����������������ztn                
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  ] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] ^b] b] b] b] b] b] b (�  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  `  a  b  o  p  q  y  z  I  J  K  ���������ý������������~xrlf`]ZT    
U] bc  ] b] b
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  ] b] b
U] bc  
U] bc  
U] bc  
U] bc  ] b] b] b
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc    K  L  U  V  �  �  �  �  �  �  Z  [  \  ]  g  h  i  j  p  q  r  s  y  z  �  �  �  �  �  �  �  �  �����������ý����������~{uoic]W               
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  ] b] b
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  ] b] b
U] bc  
U] bc  
U] bc  
U] bc  ] b] b
U] bc  
U] bc  
U] bc   �  �  �  �       	  
            �  �  �                                 ���������ý�����������{uoic]WQ        
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  ] b] b
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc     %  &  '  .  /  0  1  6  7  8  9  ?  @  A  B  H  I  �  �  �  �  �  �  �  �  �  �  �         ���������ý�����������{uoic]WQ        
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  ] b] b
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc         �   �   �   �   �   �   �   �   �   �   �   �   �   �   @!  A!  B!  I!  J!  K!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  w#  x#  y#  �#  �#  �#  �����������ý���������������zwtqnkeb_ ] b] b
U] bc  ] b] b] b] b] bUV] bc  ] b] b] b] b] b] b] b] b] b
U] bc  
U] bc  
U] bc  ] b
U] bc  
U] bc  
U] bc  
U] bc  ] b] b
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  
U] bc  ] b] b
U] bc   %�#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#   $  $  $  $  $  $  $  $  &$  '$  /$  0$  1$  <$  =$  E$  ������������������������������������������~{xu] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b .E$  F$  G$  S$  T$  \$  ]$  ^$  n$  o$  p$  x$  y$  z$  |$  }$  ~$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �����������������������������������������~{xu     ] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b
U] bc  ] b] b] b] b] b] b] b] b] b] b -�$  �$  	%  
%  %  %  %  %  %  %  %  %  ,%  -%  0%  1%  2%  A%  B%  E%  F%  G%  S%  T%  [%  \%  ]%  j%  k%  r%  s%  t%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  ������������������������������������������~{xu] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b .�%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  &  &  &  &  &  "&  #&  +&  ,&  -&  9&  :&  B&  C&  D&  U&  V&  ^&  _&  `&  s&  t&  |&  }&  ~&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  ������������������������������������������~{xu] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b .�&  �&  �&  �&  �&  �&  �&  �&  �&  �&   '  '  '  '  '  '  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  +(  ,(  [(  \(  �(  �(  �(  )  )  )  4)  ��������������������������������������|yvsp] b] b] b] b] b] b] b] b] b] b] b] b] bUV] bc  ] b] b] b] b] b] b] b] bUV] bc  ] b] b] b] b] b] b] b] b
U] bc  ] b] b] b] b] b] b] b] b] b] b] b] b ,4)  5)  K)  L)  M)  �)  �)  �)  �)  *  *  d*  e*  f*  k*  l*  m*  }*  ~*  *  �*  �*  �*  �*  �*  �*  �*  �*  �*  R+  S+  T+  �+  �+  �+  �+  �+  �+  �+  �+  �+  2,  3,  4,  J,  K,  ������������������¿���������������������}zwt   ] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] bUV] bc  ] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b -K,  L,  M,  N,  O,  c,  d,  e,  f,  g,  n,  o,  p,  q,  r,  y,  z,  {,  |,  },  �,  �,  �,  �,  �,  �,  �,  �,  �,  �,  �,  �,  �,  �,  �,  �,  �,  �,  �,  �,  �,  �,  �,   -  -  ���������������������������������������|yvs      ] b] b] b] b] b] b] b] b] b] bUV] bc  UV] bc  ] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b] b ,-  -  -  -  -  -  ?-  D-  �-  �-  �-  �-  �-  e.  f.  g.  i.  j.  O/  P/  Q/  ��������������������                                                                                                                                                                                                                                                                                    ] b] b] b] b] b] b] b] b] b] b] b] b] b] ^b] b] b] b] b] bUV] bc   �  %  &  V  W  �  �  �  �  �  �  �  �  �  �  �  �            '  (  �  �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �          �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �     �  �  �  �  �  �  �  �  �  �  -  e  f  l  m  �  �  �  �  �  *  +  ,  c  d  �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �          �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �     d  �  �  �  �  �  �  �  h  �  �  �  �  	  	  M	  N	  h	  �	  �	  �	  �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      |      t                ���      ���      ���      ���      ���      ���      ���      ���      ���      ���      ���      ���      ���      �      �      �      �      �      �      �     �	  ~
  
      2  3  �  �  �  �  �  �  �  �  �  �  �  �  o  p  �  �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      ~                         �      �      �      �      �      �      �      �      �      �      �      �      �      ���      ���      ���      ���      ���      ���      ���      ���     �  �  �  �  �  �  �  �  �  �  �  �  7  8  C  x  y  �  �  �  �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      ~      v                               L��      L��      � L��      L��      L��      � L��      � L��      L��      � L��      � L��      � L��      � L��      � L��      � L��      �      �      �      �      �     �  �  �  �  �  �  E  q  r    �  �  4  5  _  `  h  �  �  �      �      �      �      �      �      �      �      �      �      �      �      �      �      �            w      o                            � L��      L��      � L��      L��      L��      L��      L��      L��      L��      L��      L��      L��      L��      L��      L��      L��      L��      L��     �  �  �  �  �  �  �  �  �  �        �  �  �      �  �      �      �      �      �      �      �      �      �      �      �      �      �      �      �            w      o                            �L��      L��      L��      L��      L��      L��      � L��      � L��      � L��      � L��      � L��      L��      L��      L��      � L��      � L��      � L��      � L��     �  �  g  h  �  �  �  	  
  �  �  �  �  �  �  �  �  �  �  �      �      �      �      �      �      �      �      �      �      �      �      �      �      �            w      o                            � L��      � L��      � L��      � L��      � L��      L��      L��      �L��      �L��      �L��      L��      L��      L��      L��      L��      �L��      �L��      �L��     �  �  �  �  �  �  �  a  b  p  z  J  K  V  �  �  �  [  \  �      �      �      �      �      �      �      �      �      �      �      �      �      �      �            w      o                            hL��      hL��      � L��      hL��      hL��      � L��      hL��      hL��      � L��      � L��      hL��      hL��      � L��      hL��      hL��      hL��      � L��      � L��     \  h  q  z  �  �  �  �  �  	      �  �          &  �      �      �      �      �      �      �      �      �      �      �      �      �      �      �            w      o                            � L��      � L��      � L��      � L��      � L��      hL��      hL��      � L��      � L��      � L��      � L��      � L��      � L��      hL��      hL��      � L��      � L��      � L��     &  /  7  @  I  �  �  �  �     �   �   �   �   �   �   �   A!  B!  �      �      �      �      �      �      �      �      �      �      �      �      �      �      �            w      o                            � L��      hL��      � L��      hL��      hL��      � L��      � L��      hL��      hL��      � L��      � L��      � L��      hL��      hL��      � L��      � L��      � L��      � L��     B!  J!  �!  �!  �!  �!  �!  �!  �!  x#  y#  �#  �#  �#  �#  �#  �#  �#  �#  $  '$  =$  T$  o$  �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                   �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      � L��      � L��     o$  p$  y$  z$  �$  �$  �$  �$  �$  �$  
%  %  -%  B%  T%  k%  �%  �%  �%  �%  �%  &  #&  :&  V&  �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �          �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �     V&  t&  �&  �&  �&  �&  '  '  '  '  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  ,(  \(  �(  �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �          �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �     �(  �(  )  )  5)  L)  M)  �)  �)  *  e*  f*  l*  m*  ~*  *  �*  �*  �*  �*  �*  �*  S+  T+  �+  �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �          �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �     �+  �+  �+  3,  4,  K,  L,  d,  o,  z,  �,  �,  �,  �,  �,  �,  �,  �,  �,  �,  �,   -  -  -  �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                         �      �      �      �      �L��      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �     -  -  �-  �-  f.  g.  P/  Q/  �      �      �      �      �      �      �                                                                                                                                                                                                                                                                                                                                                 ���      ���      ���      ���      �      ���      �     �  Q/   �  Q/  .     U,    ����  ����,{      K        @��  Normal     a	                   " A@��� " Default Paragraph Font                      �                                                                        �@                                                                                                                                                                                                                                                                                  ��
  ���� 	     �      F   Microsoft Word 6.0 Document 
   MSWordDoc     �9�q                                                                                                                                                                                                                                                                                                                                                                                                                                              
```
