# mirc ssl v0.9.8 by the OpenSSL

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

**Script Name:** mirc ssl  
**Version:** 0.9.8  
**Category:** bot  
**Authors:** the OpenSSL  
**Email(s):** <tjh@cryptsoft.com>, <openssl-core@openssl.org>, <eay@cryptsoft.com>  
**Website(s):** [http://www.thame.nl/mirc/ssl](http://www.thame.nl/mirc/ssl), [http://www.slproweb.com/products/Win32OpenSSL.html).](http://www.slproweb.com/products/Win32OpenSSL.html).), [http://www.openssl.org/)](http://www.openssl.org/)), [http://www.mirc.co.uk/ssl.html](http://www.mirc.co.uk/ssl.html)  
**Release Year:** 2006  
**Tags:** bot  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/mirc-ssl_3109/mirc-ssl_3109.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "mirc-ssl_3109.zip",
  "file_count": 3,
  "file_types": [
    ".dll",
    ".txt"
  ],
  "max_file_date": "2006-04-04",
  "min_file_date": "2005-11-03",
  "total_size": 1246.5,
  "largest_file": "libeay32.dll",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
  -----------------------------------

 | mIRC SSL DLL pack

 | version 0.9.8a

 |

 | http://www.thame.nl/mirc/ssl

  ------------------------------------





 =======

  LEGAL

 =======



  +++ The product licenses of the supplied files are included at the bottom of

      this file.  Please take notice to them as they still apply to this pack.





  # This product includes software developed by the OpenSSL

    Project for use in the OpenSSL Toolkit. (http://www.openssl.org/)



  # This product includes cryptographic software written by Eric Young

    (eay@cryptsoft.com)



  # This product includes software written by Tim Hudson (tjh@cryptsoft.com)





  By downloading, installing, and using any portion of the software contained

  within this mIRC SSL DLL pack, you agree to the following terms and conditions

  except in states where any specific term or condition does not apply.  If you

  do not agree with the terms and conditions of this license agreement, then do

  not download, install, or use this mIRC SSL DLL pack.  In order to install and

  use this mIRC SSL DLL pack, you must also agree to the OpenSSL License

  Agreement ("OLA").  If you do not agree with the terms and conditions of the

  OLA, then you also do not agree with the terms and conditions of this license

  agreement.



  LICENSE



  - You agree that the default OpenSSL compile-time options meet your local

    and state cryptography laws, rules, and regulations.



  - You agree that the default OpenSSL compile-time options meet your local

    and state cryptography patent laws, rules, and regulations.



  NO WARRANTY



  This mIRC SSL DLL pack is provided "as is" without warranty of any kind,

  either expressed or implied, including, but not limited to, the imlied

  warranties of merchantability and fitness for a particular purpose.



  In no event are any of its authors to be held liable for damages as the result

  of downloading, modifying, installing, using, copying, or distributing this

  mIRC SSL DLL pack.







 ==============

  INTRODUCTION

 ==============



  First of all: sorry about all that, but apparently there are a lot of rules

  and legislations involved with this kind of thing, so I am legally required

  to include all the legal stuff.



  Let me also be quick to add that I did not write any part of the software

  included in this package; I am merely (re)destributing it in a manner that

  I think is more convenient if you only intend to use the software in

  combination with mIRC.



  To see who DID write the software, scroll up.  The DLLs included in this pack

  were extracted from a Win32 OpenSSL Installation, provided by the Win32 OpenSSL

  Installation Group (http://www.slproweb.com/products/Win32OpenSSL.html).



  mIRC (as of version 6.14) supports secure connections over SSL capable IRC

  servers, but it requires the libeay32.dll and ssleay32.dll OpenSSL DLLs, which

  according to Khaled, cannot be bundled with mIRC.  And that is all this pack

  is: a zip archive containing those two files.



  In short, if you want to make use of mIRC's SSL capabilties, you will need

  the DLLs included in this pack.







 ================

  HOW TO INSTALL

 ================



  It doesn't get much easier than this.  Just extract the two DLLs, libeay32.dll

  and ssleay32.dll, to your main mIRC directory.  Or, if you want to make the

  DLLs available system-wide (for example, if you have multiple copies of mIRC

  and you do not want to place the files in each directory), extract the DLLs

  to your 'system' directory (usually C:\WINDOWS\system32\ under Windows XP).



  In either case you will need to restart mIRC for the changes to take effect.







 ============

  HOW TO USE

 ============



  You can see if SSL is available by typing



     //echo -a $sslready



  from within mIRC.  '$true' indicates SSL is readily available.



  Any other kind of support is not offered in this file.  Please refer to the

  mIRC help file for instructions on where to go from here.  You may also find

  the following URL helpful: http://www.mirc.co.uk/ssl.html







 ============

  MORE LEGAL

 ============



  What follows are the 'OpenSSL License' and the 'Original SSLeay License' as I

  am obliged to include.  Please study them carefully.







  LICENSE ISSUES

  ==============



  The OpenSSL toolkit stays under a dual license, i.e. both the conditions of

  the OpenSSL License and the original SSLeay license apply to the toolkit.

  See below for the actual license texts. Actually both licenses are BSD-style

  Open Source licenses. In case of any license issues related to OpenSSL

  please contact openssl-core@openssl.org.



  OpenSSL License

  ---------------



/* ====================================================================

 * Copyright (c) 1998-2005 The OpenSSL Project.  All rights reserved.

 *

 * Redistribution and use in source and binary forms, with or wit
```
