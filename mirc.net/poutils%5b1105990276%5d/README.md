# poutils%5b1105990276%5d v1.0 by yourself I checked

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

**Script Name:** poutils%5b1105990276%5d  
**Version:** 1.0  
**Category:** game  
**Authors:** yourself I checked  
**Email(s):** <8ball@hackermail.com>  
**Website(s):** [http://rpc-crew.cjb.net](http://rpc-crew.cjb.net)  
**Release Year:** 2005  
**Tags:** dialog, 8ball  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mirc.net/poutils%5b1105990276%5d/poutils%5b1105990276%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "poutils%5b1105990276%5d.zip",
  "file_count": 3,
  "file_types": [
    ".dll",
    ".txt"
  ],
  "max_file_date": "2005-01-17",
  "min_file_date": "2005-01-09",
  "total_size": 44.96,
  "largest_file": "util.dll",
  "text": [
    "DLL-Usage.txt",
    "Pissed-oFF Utilities.txt"
  ]
}
```

## 📋 Text Content (from DLL-Usage.txt)

```text
          **                                  **                ****    **** 

 ******  //                                  /**               /**/    /**/  

/**///**  **   ******   ******   *****       /**     ******   ******  ****** 

/**  /** /**  **////   **////   **///**   ******    **////** ///**/  ///**/  

/******  /** //*****  //*****  /*******  **///** = /**   /**   /**     /**   

/**///   /**  /////**  /////** /**////  /**  /**   /**   /**   /**     /**   

/**      /**  ******   ******  //****** //******   //******    /**     /**   

//        // //////   //////     //////  //////     //////      //      //

                                                                    //

                    **    **   **  **    **    **                 //R//   

                   /**   //   /** //    /**   //                   //  

         **   **  ******  **  /**  **  ******  **   *****    ****** 

        /**  /** ///**/  /**  /** /** ///**/  /**  **///**  **////  

        /**  /**   /**   /**  /** /**   /**   /** /******* //*****  

        /**  /**   /**   /**  /** /**   /**   /** /**////   /////** 

        //******   //**  /**  *** /**   //**  /** //******  ******  

         //////     //    // ///   //    //    //   ////// //////



** WARNING!



   If this archive wasn't downloaded from the official

   R.P.C-Crew homepage [http://rpc-crew.cjb.net], I

   can't guarantee you that this arhive is virus-free.

   Only the owner of the web site, from which this archive

   was downloaded can guarantee your safety.

   For more information, read the "Terms of usage"

   section of this document. Actually, You don't have

   to read it. But if you are using the DLL, this means

   you accept it.



** DLL Usage



   Usage:

     $dll(util.dll, <function>, <parameter[s]>)



   Returns:

               "true", if the function succeeded;



              "false", if the function/action failed to complete;



              "error", if the passed parameters were erroneous,

                       if there was an error executing the function,

                       or if there is no need to execute it

                          [for example if you wanted to show a window which is already visible];



     <something else>. This is returned when you have requested

                       specific information from the DLL.



** Functions



  * function ExtractFullPath(<path>);

    Converts the passed parameter to a full path.



    Ex.:

          //echo -a $dll(util.dll, ExtractFullPath, C:\DOCUME~1\)

          Would return "C:\Documents and Settings\"



  * function GetDir(dir);

    Gets the Windows important directories.



    Parameters:

     "windows"  -> Returns the Windows directory for the current OS installation

     "system"   -> Returns the system directory for the cyrrent OS installation

     "temp"     -> Returns the temporary directory for the current user

     "fulltemp" -> Returns the full temporary directory for the current user



    Ex.:

          //echo -a $dll(util.dll, GetDir, FullTemp)

          Would return for example, "C:\Documents and Settings\<User>\Local Settings\Temp"



  * function ComputerName(<action>; [NewName]);

    Gets or sets the computername		** Hint -> The changes apply only when you reboot



    Parameters:

     "get"           -> Returns the name of the local machine

     "set <NewName>" -> Sets the name of the local machine to $NewName



    Ex.:

          //echo -a $dll(util.dll, ComputerName, set JohnSmith-PC)

          Would return "false", if it failed or "true", if the name was changed



  * function UserName;

    Gets the name of the current user		** Hint -> You can pass any parameter, it's ignored



    Ex.:

          //echo -a $dll(utils.dll, UserName,)

          Would return "false", if it failed or <UserName>, if it succeeded



  * function Memory(<type>);

    Gets information about the local machine's memory state



    Parameters:

     "total"            -> Returns the total size of the physical memory in KBs

     "used"             -> Returns the size of the used physical memory in %

     "available"        -> Returns the size of the available physical memory in KBs

     "pfilesize"        -> Returns the total size of the Windows paging file in KBs

     "pfileavailable"   -> Returns the size of the available Windows paging file in KBs

     "vmemorytotal"     -> Returns the total size of the virtual memory in KBs

     "vmemoryavailable" -> Returns the size of the available virtual memory in KBs



    Ex.:

          //echo -a $dll(util.dll, Memory, Total)

          Would return "<Memory>KB", if it succeded



  * function Screen(<param>);

    Returns the width, height & resolution of your current monitor settings



    Parameters:

          "width" -> Returns the width of your screen

         "height" -> Returns the height of your screen

     "resolution" -> Returns <screen width>x<screen height>
```
