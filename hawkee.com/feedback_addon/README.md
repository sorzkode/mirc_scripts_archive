# Feedback addon v1 by [SB]Tikiman

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

**Script Name:** Feedback addon  
**Version:** 1  
**Category:** bot  
**Author(s):** [SB]Tikiman  
**Email(s):** <bkennedy@haverford.edu>, <your.e-mail@your.domain.com>  
**Website(s):** [http://www.students.haverford.edu/bkennedy/linkbot.zip](http://www.students.haverford.edu/bkennedy/linkbot.zip)  
**Release Year:** 1997  
**Tags:** timer, alias, popup, dcc, bot  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/feedback_addon/feedback_addon.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "feedback_addon.zip",
  "file_count": 1,
  "file_types": [
    ".txt"
  ],
  "max_file_date": "1997-03-16",
  "min_file_date": "1997-03-16",
  "total_size": 3.09,
  "largest_file": "comments.txt",
  "text": [
    "comments.txt"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## comments.txt

```text
Feedback/Comments Add-On -- by [SB]Tikiman

Here is a basic, straightforward example of a simple feedback feature.  What it will do is prompt for a E-
Mail address and a comment, then connect to a SMTP server and send the comment to you, the author of 
the script.  Now keep in mind that this will allow people to mail bomb you very easy -- if you don�t trust 
your script users, then maybe you shouldn�t use this.  

Directions --

1. Change the "your.e-mail@your.domain.com" to your e-mail address.
2. I have chosen a SMTP server at Creighton University, but there is no guarantee this will always work.  I 
suggest you use one that is closer to you, preferably within your own domain.  Usually you kind find one by 
telnetting to port 25 on a Unix machine, then use /dns to get the ip address.  If you have no idea what I am 
talking about, then try to make do and/or learn Unix basics.
3. Run the alias "/comments".  Put it in a popup or something.  Or have it run the second time the script is 
used.  Be creative.  This alias will prompt for an E-Mail address and for a comment, and then connect to the 
mail server and send you the mail.  It will also time-out after 30 seconds, you can adjust this vaule in the 
"timer222" command.
4. Test it a few times -- I usually have DCC chat "Auto-accept and minimize" on so as not to burden the 
script user with more choices.  When it works properly, the user wont even see an open window -- very 
nice.  But how you protect yourself from unwanted DCC chats is up to you.
5. Questions, comments?  E-Mail to bkennedy@haverford.edu

That�s it -- check out my script "LinkBot" at http://www.students.haverford.edu/bkennedy/linkbot.zip

--[SB]Tikiman


--------------------------------------------------Paste into "aliases"
/comments {
  .enable #comments
  set %replyadd $??="E-Mail address if you would like a reply:"
  if (%replyadd == $null) set %replyadd None Given.
  set %thestring $??="Please enter your comments here:"
  if (%thestring == $null) set %thestring None Specified.
   raw -q privmsg $me : $+ $chr(1) $+ DCC CHAT CHAT $longip(147.134.2.20) 25
  .timer222 1 30 mailerr
}
/mailerr {
  unset %thestring | unset %replyadd
  .disable #comments
  close -c $me
  echo Error in sending mail -- please try again later, your comments are valued.
}
--------------------------------------------------end cut

--------------------------------------------------paste into "Remotes/Events"
#comments disabled
1:ON CHATOPEN: {
  msg = $+ $me HELO $ip
  msg = $+ $me MAIL FROM: <script.user@ $+ $ip $+ >
  msg = $+ $me RCPT TO: <your.e-mail@your.domain.com>
  msg = $+ $me DATA
}
1:ON CHAT:354*:{
  msg = $+ $me Subject: Script Comments
  msg = $+ $me Mail sent on $date while on $server from $me
  msg = $+ $me Reply to: %replyadd
  msg = $+ $me Comments: %thestring
  msg = $+ $me .
  msg = $+ $me QUIT
  unset %thestring | unset %replyadd
  .disable #comments
  close -c $me
  .timer222 off
  echo Mail accepted for delivery -- thank you, your comments are valued.
}
#comments end
--------------------------------------------------end cut

```
