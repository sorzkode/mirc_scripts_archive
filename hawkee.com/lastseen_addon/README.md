# Lastseen v1 by pacifier

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

**Script Name:** Lastseen  
**Version:** 1  
**Category:** addon  
**Author(s):** pacifier  
**Email(s):** <unknown>  
**Website(s):** [http://www.hawkee.com/scripts/cbnx.zip](http://www.hawkee.com/scripts/cbnx.zip), [http://www.mircx.com/scripts.htm](http://www.mircx.com/scripts.htm)  
**Release Year:** 1997  
**Tags:** addon, timer, popup, popups, whois  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/lastseen_addon/lastseen_addon.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "lastseen_addon.zip",
  "file_count": 1,
  "file_types": [
    ".txt"
  ],
  "max_file_date": "1997-04-14",
  "min_file_date": "1997-04-14",
  "total_size": 3.35,
  "largest_file": "LAST.TXT",
  "text": [
    "LAST.TXT"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## LAST.TXT

```text


       Author:  pacifier
Finished Date:  April 18, 1997.
   Addon Name:  Lastseen


		(2nd update of lastseen)
			-updated for mircv5.0
			-added whois information
			-updated given information
			-added on part
			-added var setting address

		Lastseen for mIRCv5.0 written by pacifier,
		finished April 18th 1997. Lastseen will
		allow other users to find "when & where"
		you saw another user. As well if that user
		is logged on IRC. (Showing the channel)
		If logged on: Shows /WHOIS. If not logged on: 
		Tell's them that the user is currently not 
		logged on IRC.

		I very doubt any flaws "errors" are within
		this simple addon. But if any are found
		please report them to the given email adress
		that is found above, giving information on
		where the error was found within the addon.

			- DIRECTIONS

		To install simply copy & paste the given 
		sections into your script or ini. After 
		sections are copyed simply (enable) lastseen 
		and anounce it to a channel. Simple? yes!

			Get your copy of cbN.X at:
			- http://www.hawkee.com/scripts/cbnx.zip
			or:
			- http://www.mircx.com/scripts.htm

		      		    Enjoy!
				    
			            - pacifier
			--
			  \
			   ->


-------------------------------------- *POPUPS / CHANNEL* -------------


-
&lastseen
.-
.&on/off
..-
..&on { .enable #lastseen | .enable #lastseen.raw | echo 1 $active Lastseen enabled }
..-
..&off { .disable #lastseen | .disable #lastseen.raw | echo 1 $active Lastseen disabled }
..-
.&anounce 
..-
..&now! { msg $chan If you wish to find out when 2& where I saw a user. Type: 1!2lastseen 1<2user1> }
..-
..&timed 
...-
...&on { .timer222 9000 $$?="enter number of sec/min:" msg $chan If you wish to find out when 2& where I saw a user. Type: 1!2lastseen 1<2user1> }
...-
...&off { .timer222 off | echo 1 $active Timer disabled }
...-
..-
.-
-


-------------------------------------- *REMOTE / EVENTS* --------------


#lastseen off
on 1:JOIN:#: { 
  set % [ $+ [ $nick ] ] $nick
  set % [ $+ [ $nick ] [ $+ [ .seen ] ] ] 4(1 $+ $address $+ 4) 1on $chan at $date 4/1 $time $+ . 
}
on 1:PART:#: {
  set % [ $+ [ $nick ] ] $nick
  set % [ $+ [ $nick ] [ $+ [ .seen ] ] ] 4(1 $+ $address $+ 4) 1on $chan at $date 4/1 $time $+ . 
}
on 1:TEXT:*!lastseen*:#: {
  set %chan $chan
  if ($2 == $null) { .msg $chan $nick $+ > you forgot to specify a Name4! | halt }
  elseif ($2 == $nick) { .msg $chan $nick $+ > Your right here smart one4! | halt }
  elseif ($2 == $me) { .msg $chan $nick $+ , I'm right here4! | halt }
  elseif ($2 ison $chan) { .msg $chan $nick $+ > $2 is here in $chan | halt }
  if (% [ $+ [ $2 ] [ $+ [ .seen ] ] ] == $null) { .msg $chan $nick $+ > I have not seen $2 $+ ! | halt }
  else { 
    .msg $chan $nick $+ > I saw $2 $+  % [ $+ [ $2 ] [ $+ [ .seen ] ] ] 
    whois % [ $+ [ $2 ] ] 
    halt 
  }
}
#lastseen end




-------------------------------------- *REMOTE / RAW* -----------------


#lastseen.raw off
raw 301:*: { .msg %chan $2 is away $3* } 
raw 311:*: { .msg %chan $2 is $3 $+ @ $+ $4 * $+ $6* }
raw 312:*: { .msg %chan $2 is using $3 }
raw 319:*: { .msg %chan $2 is on $3- }
raw 317:*: { .msg %chan $2 has been idle $duration($3) }
raw 401:*: { .msg %chan $2 is currently not logged on IRC } 
#lastseen.raw end

```
