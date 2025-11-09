# ### http:// v5.1 by Paranor

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

**Script Name:** ### http://  
**Version:** 5.1  
**Category:** game  
**Authors:** Paranor  
**Email(s):** <paranor@paranor.dynip.com>  
**Website(s):** [http://scripts.paranor.dynip.com/](http://scripts.paranor.dynip.com/), [http://scripts.paranor.dynip.com](http://scripts.paranor.dynip.com)  
**Release Year:** 2000  
**Tags:** alias, uptime, bot  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/xtramath/xtramath.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "xtramath.zip",
  "file_count": 2,
  "file_types": [
    ".ini",
    ".txt"
  ],
  "max_file_date": "2000-06-13",
  "min_file_date": "2000-06-13",
  "total_size": 30.5,
  "largest_file": "XtraMath/xtramath.ini",
  "text": [
    "XtraMath/xtramath.txt"
  ]
}
```

## 📋 Text Content (from XtraMath/xtramath.txt)

```text


  Extra Math - Version 5.1

  Written by Paranor

  http://scripts.paranor.dynip.com/

  paranor@paranor.dynip.com



  -----------------------------------------------------------------------------



  * NOTE: For updates to this script, please read the bottom of the file.



          If you wish to use any of the functions in this script for your own

          script(s), I ask that you make mention of my name and place my web

          address somewhere either in the script or any accompanying document

          file.  You may copy portions of this script to do this.  Thank you.







  To use xtramath.ini, simply load the file into your remote section.



  Do this by typing: /load -rs xtramath.ini



  or, open your remotes (ALT-R), select the FILE menu, then LOAD, then SCRIPT,

  and locate and select the xtramath.ini file.



  -----------------------------------------------------------------------------



  Xtra Math is a math and variable enhancement to mIRC that gives you some

  enhanced mathematical functions and identifiers not built into mIRC 5.7 and

  later.



  Xtra Math will create a directory inside your main mIRC directory called

  xmath\ which will be used for the data storage of all arrays.



  * NOTE: all items inside [ ] are optional parameters





  Array Functions:

  ----------------



  1st, an explination...



  An array is a special form of variable which uses the same name, but has many

  'blocks' where it can store data into.  Think of an array as a large box.

  Then, depending on how many blocks you want, you divide the box into smaller

  sections, making X number of blocks wide, and perhaps Y blocks tall.





  /dim [-o] NAME(x[,y])



  This prepares an array for use by defining the rows (x) and/or columns (y).

  An array MUST be defined before you can use it at all, and the name of the

  array must be an alphanumeric (letters and/or numbers) name.

  You can create a single array by just providing a value for X, or you can

  create a dual array by also providing a value for Y.

  You cannot resize an array after the array has been defined.  You must UNSET

  the array before you can redefine it's size.

  To unset an array, use the UNSET command in place of X and Y.

  If you use the -o option, then it will UNSET an array of the same name before

  defining the new size without the need of the UNSET parameter.



  Examples:



           /dim scores(10)

           /dim games(5,21)

           /dim -o games(21)

           /dim scores unset



  * Arrays are limited to a to a range of 1-99 by 1-99 blocks.

  * In the 16-bit mIRC, array names can only be upto 7 characters in size. If

    you use a name longer than 7 characters, then you can run into problems if

    you define multiple arrays with similar names.  In the 32-bit mIRC, you can

    define an array name upto 63 characters in length.





  /aset name(x[,y])



  This works just like mIRC's /set command for storing data in a variable, but

  this is used only for arrays.  Depending on the size you set with /dim, you

  store with x and/or y parameters.



  Examples:



           /aset nicks(1,4) Paranor

           /aset score(2) 232





  $array(name[,x[,y]])



  Properties: .size .x .y



  This will return the value stored at location X,Y in the array.

  You can use the .size property to return the full size that the array was

  dimensioned to.

  Using the .x property will return the maximum number of rows.

  Using the .y property will return the maximum number of columns.





  $sarray(name,wildstring[,matchnum|@window,C,N,P])



  This is used to search an array for the matching wildstring entered.

  If you specify a matchnum, then it will return the array value of the Nth

  match found, otherwise it will return the 1st match.  If matchnum is 0, then

  it will return the total number of matches found in the array.

  If you enter in a custom window name instead of matchnum, then all matching

  array values will be shown in the custom window given.

  If you specify C, then only that column (y) will be searched, if the array is

  a dual sized array.  If it is not a dual sized array, then you can specify C

  as 0 to allow the other parameters.

  If you specify a custom window and N is 1, all matching lines will be put

  into the side listbox of the @window.

  If P is 1, then the X/Y position will be shown in front of the matching array

  value found (works the same as the -n option in mIRC's /filter command).





  /ainc NAME(x[,y]) N



  This is just like mIRC's /inc command for variables, but is used for arrays.

  If the array block is $null when an /ainc is performed, then the array block

  will be set to a value of 1.

  If N is not given, then a value of 1 is assumed.





  /adec NAME(x[,y]) N



  This is just like mIRC's /dec command for variables, but is used for arrays.

  If N is not given, then a value of 1 is assumed.







  Math Functions:

  -----
```
