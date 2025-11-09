# Hercules v150 by Unknown

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

**Script Name:** Hercules  
**Version:** 150  
**Category:** game  
**Authors:** Unknown  
**Email(s):** <phonenumber@comcastpcs.textmsg.com>, <phonenumber@rpgmail.net>, <phonenumber@vmobl.com>, <phonenumber@sms.wcc.net>, <phonenumber@airtelkol.com>, <phonenumber@vxtras.com>, <phonenumber@sms.pscel.com>, <phonenumber@npiwireless.com>, <10digitphonenumber@timnet.com>, <10digitphonenumber@mobile.celloneusa.com>  
**Website(s):** [http://rnumber@paging.acswireless.com](http://rnumber@paging.acswireless.com), [http://rnumber@pmcl.net](http://rnumber@pmcl.net), [http://pinnumber@jsmtel.com](http://pinnumber@jsmtel.com), [http://rnumber@cvcpaging.com](http://rnumber@cvcpaging.com), [http://gate.pagenet.ca](http://gate.pagenet.ca), [http://rnumber@epage.arch.com](http://rnumber@epage.arch.com), [http://rnumber@e-page.net](http://rnumber@e-page.net), [http://7digitpagernumber@page.propage.net](http://7digitpagernumber@page.propage.net)  
**Release Year:** 2006  
**Tags:** gui, dialog, timer, rpg, alias  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mirc.net/send-a-text%5b1146873182%5d/send-a-text%5b1146873182%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "send-a-text%5b1146873182%5d.zip",
  "file_count": 3,
  "file_types": [
    ".txt"
  ],
  "max_file_date": "2006-05-05",
  "min_file_date": "2006-05-05",
  "total_size": 18.85,
  "largest_file": "Send-A-Text/smslist.txt",
  "text": [
    "Send-A-Text/readme.txt",
    "Send-A-Text/s-a-t.txt",
    "Send-A-Text/smslist.txt"
  ]
}
```

## 📋 Text Content (from Send-A-Text/readme.txt)

```text
==========================

Send-A-Text v.5

by

[Hercules]

==========================



----install----



1) first, extact the folder to your mirc directory (ex: c:\mirc\)



2) then open up mIRC, and type //load -rs $+(",$findfile($mircidr,s-a-t.txt,1),")





----usage----



1) once loaded, look in the pop-ups for "Send-A-Text" 



2) or type in /sms in any window



3) once you get the dialog opened, you must do the following:



 3a) enter the number to the phone you want to send a text to in the editbox where it says

     "Phone Number", if you haven't did this before, then '1234567890' should be in there as an

     example



 3b) next, choose the carrier of the phone you are sending to 

     (this is the long list on the right of the dialog)



   3ba) a carrier is the actual cell phone company you are sending to; if you were sending a text

          to a person who is with Verizon, you would most likely pick "Verizon PCS" in the list;

          if you don't know the person's carrier, i suggest you call him or her to find out what 

          it is; if the carrier is not in the list provided, then the script is no use for you, 

          until i can find an updated list, if you have carriers that can be added, or you find any

          carriers in the list that does not work, email me and i will update the list



   3bb) if you see more than one entry for a carrier, Cellular One for example, i suggest you choose

          the first choice, if that does not work for you, then go to through the list until it works



 3c) after you selected the phone carrier, then enter your smtp server, you will find to enter

       this in the editbox that says "Enter SMTP server"; if you haven't done this before, then 

       'smtp.server.com' should be in there as an example



   3ca) if you dont know your stmp server, look through your ISP guide, or try to search google for it;

          if you have COX cable, like me, you would enter: smtp.east.cox.net

         

   3cb) there has been some problems with Yahoo!, AOL, and Verizon SMTP servers, so I suggest you 

          go with Gmail or something else that is similar



   3cc) if you are still looking for a SMTP server, or could not find your own, google for a free SMTP server

          (i suggest you use www.hotpop.com, if you do use it, use mail.hotpop.com for the SMTP server)



 3d) next enter in your port number for your SMTP server, most of the time this will be 25, but since things 

     have changed, different servers use different port numbers



 3e) after that then enter in the message you are trying to send (cannot exceed over 150 chars)



 3f) once you are finished, click "Send!"



4) the "Save Info" is when you are changing stmp (most never, but you never know)



5) if you are an advanced user and you would like to send a text through a command-based feature, you must know

    following things:

    a) the number you are sending to

    b) the EXACT carrier pop3 server

    c) your STMP server, with the correct port

    d) and the message you are sending (duh, lol)



 5a) to use this feature, here is the command: 

      /smstext <number>@<carrier-pop3-server> <your-smtp-server> <smtp-port> <message>



      example:

     /smstext 2124567459@mycingular.textmsg.com mail.hotpop.com 25 hi, i just wanted to say hellow thru this cool script, lol





----updates-----



1) updated the readme.txt

2) added a command line feature

3) fix minor socket bugs

4) added two POP3 servers

5) re-did the dialog

6) change the limit to 150 characters





----contact info----



1) hit me on irc.webchat.org, in either #mIRC or #help.mIRC with the nick [Hercules]

2) if im not there, just send me a memo

3) if you are a lazy bum, and like emails, email me at 0hercules0@gmail.com



----extra----



1) well thats all you need to know how to work the script

2) for any comments/suggesttions contact me as mentioned in the contact section

3) enjoy!
```
