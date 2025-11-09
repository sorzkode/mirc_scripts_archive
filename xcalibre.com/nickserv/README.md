# Alpha ## v0.1 by WaReZ-GoD 

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

**Script Name:** Alpha ##  
**Version:** 0.1  
**Category:** bot  
**Authors:** WaReZ-GoD   
**Email(s):** <Bp404@Yfn2.Ysu.Edu>  
**Website(s):**   
**Release Year:** 1997  
**Tags:** bot  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/xcalibre.com/nickserv/nickserv.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "nickserv.zip",
  "file_count": 2,
  "file_types": [
    ".tcl",
    ".txt"
  ],
  "max_file_date": "1997-05-31",
  "min_file_date": "1997-05-31",
  "total_size": 9.29,
  "largest_file": "NICKSERV.TCL",
  "text": [
    "README.TXT"
  ]
}
```

## 📋 Text Content (from README.TXT)

```text
    	   ____________________________________

	  | Nickserv v0.1 AlPhA - By WaReZ_GoD |

	  | Bp404@Yfn2.Ysu.Edu		       |

	   ------------------------------------



Contents:



 I. Nickserv - Getting Started

     1. How do I install Nickserv?

     2. Getting Nickserv updates

II. Using Nickserv

     1. Registering a Nickname

     2. Unregistering A Nickname

     3. Changing Your Password

     4. Claiming a Nickname

     5. Protecting a Nickname

     6. Removing a Protected Nickname







I Nickserv - Getting Started

----------------------------

1. How do I install Nickserv?

 

 Nickserv is very easy to install. First and foremost

 you must have an eggdrop bot installed on a shell

 account. If you do not, then I suggest downloading it

 from ftp.sodre.net and reading the documentation or

 paying a visit to #Eggdrop on Undernet.

 If you already have an "Eggie" installed, then all you

 have to do is copy the nickserv.tcl to your scripts

 directory (Thats in the Eggdrop Directory).

 Then edit the NICKSERV.TCL file and find where it says

 

	putserv "OPER WaReZ-GoD mypword"



 and change WaReZ-GoD to your Oper account name and

 change mypword to your password on the IRC network.

 Next, add the line



		source scripts/nickserv.tcl



 to the end of your eggdrop configuration file.



2. Getting Nickserv updates



 All nickserv updates can be found on ftp.sodre.net or

 you can prob. get it from #Eggdrop on Undernet IRC. If

 you have any questions that aren't covered in this

 document then you can mail me at Bp404@Yfn2.Ysu.Edu







II. Using Nickserv

------------------



1. Registering A Nickname



 To do this, all you or your networks users have to do

 is type /MSG <your nickserv nick> REGISTER <nickname>

 <password>. <nickname> is the nickname that you want

 to register and <password> is the password to register

 <nickname> with. If the nickname is already registered

 or you already have a nickname registered to you an

 error message will show up



2. Unregistering A Nickname

 

 To do this simply type /MSG <your nickserv nick>

 UNREGISTER <nickname> <pword>



3. Changing Your Password



 To do this type /MSG <your nickserv nick> CHANGEPASS

 <nickname> <old password> <new password>



4. Claiming A Nickname



 If you log onto the network and your nickname is in

 use, type /MSG <your nickserv nick> CLAIM <nickname>

 <password> and the user using your nick will be kicked

 off of the network allowing you to re-claim the

 nickname.



5. Protecting A Nickname



 In order to protect a nickname you must have a bot

 masters status on the Nickserv bot. If you do, then

 type /MSG <your nickserv nick> PROTECT <nickname>

 This command will protect a nickname so nobody can

 register it.



6. Removing A Protected Nickname



 In order to remove a protected nickname you must have

 a bot masters status on the Nickserv bot. If you do,

 then type /MSG <your nickserv nick> REMOVE <nickname>



 =====================[ END HELP ]=====================
```
