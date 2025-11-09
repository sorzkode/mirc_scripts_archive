# passgen%5b1150617606%5d v2.0 by Lime

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

**Script Name:** passgen%5b1150617606%5d  
**Version:** 2.0  
**Category:** protection  
**Authors:** Lime  
**Email(s):**   
**Website(s):**   
**Release Year:** 2006  
**Tags:** dialog, nicklist, popup, 8 19 21 8, alias, right  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mirc.net/passgen%5b1150617606%5d/passgen%5b1150617606%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "passgen%5b1150617606%5d.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2006-06-18",
  "min_file_date": "2006-06-17",
  "total_size": 9.44,
  "largest_file": "readme.txt",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
##################

# Pass Generator #

#  Version 2.0   #

#   By  Lime     #

##################



If you find any bugs or problems, feel free to post them on the comment box

for this project on mirc.net.  If you need extra help, or need to report a

bug, feel free to contact me at



i.like.pie.more <at> gmail <dot> com





Section 1: Version History

Section 2: Loading / Unloading Script

Section 3: Using the Script

Section 4: Bugs







===========

=Section 1=

===========



Version 2.0 - 06/17/2006 -- Removed radio buttons in favor of a combo box

                              to reduce size.  This also makes the selection

                              process a little bit easier.



                            Further minimal movements and alignments in the

                              dialog (for the sake of making it look nice).



                            Slight change to the core alias to support the

                              new method in which text style is selected.



Version 1.3 - 06/15/2006 -- Removed global variables.



                            Added support for nonadjacent character

                              selection.  (This cannot be switched off.)



                            Cleaned up the script (removed unnecessary

                              brackets, etc.)



                            Made it so that you cannot click "Start!" w/o

                              first having at least one character type

                              selected an a number put into the character

                              limit.





Version 1.2 - 05/06/2006 -- Fixed bugs:

                            * Bracket error on the ON LOAD event.



                            Made some code changes to make the code slightly

                              more compact.



                            Made some dialog changes to shrink the size a

                              bit and get rid of some "white space".



                            Added ON UNLOAD event.



                            Fixed it so you can't click start without having

                              an amount of characters and at least one

                              character type selected.



                            



Version 1.1 - 05/02/2006 -- Fixed bugs:

                            * Radio buttons sometimes being double-selected

                              when deactivating and then reactivating letter

                              support.

                            * Fixed problem with editbox not holding all

                              characters of the generated password when

                              larger character limits are used.



                            Fixed a couple errors in the readme and added

                              Section 4.



                            



Version 1.0 - 05/02/2006 -- Made the initial script and tested for errors.  







===========

=Section 2=

===========



Loading the Script:



To load the script, please make sure the script is in your mIRC directory.

Then, in mIRC, type



  /load -rs passgen.mrc



It should give you a confirmation that the script has been loaded.





Unloading the Script:



To unload this script, use 



  /unload -rs passgen.mrc



mIRC should then give you a confirmation that the script has been unloaded.







===========

=Section 3=

===========



Using the script:



To start, either use one of the popup menus or type /passgen to open the

Password Generator.



You will see several options at the top, and where the results will display

below.  To start, type in a number in the Character Limit edit box.  This

number defines how many characters long your generated password will be.

Without this number, the Password Generator will not function.



Next, you will notice that "numbers" and Mixed Letters have been selected by

default.  Using a mixture of numbers and mixed-case letters is the safest

way to create a password, but you may choose what kinds of characters you

want the Password Generator to return.  "Up. Case" will make all letters

upper-cased, and "Lw. Case" will make all letters lower-cased.  Mixed makes

a mixture between upper- and lower-case letters, providing boosted security

on a case-sensitive password system.  "Numbers" will mix in numbers with the

password.



It is recommended to leave the character types alone if using the generated

password for your email, etc.



Next is the symbols selection.  This is disabled by default, but when

activated it will randomly add dashes (-) and underscores (_) to your

generated password.



After you have these settings defined, click Start!  A randomly-generated

set of the characters you selected will appear below.  Notice there are 

only as many characters present as you have defined in "Character Limit"

above.  Also notice that no two characters that are alike will be next to

each other, e.g. you will never see
```
