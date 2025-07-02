# WWWboard Reader v1 by RewScript

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

**Script Name:** WWWboard Reader  
**Version:** 1  
**Category:** addon  
**Author(s):** RewScript  
**Email(s):** <Hawkee@hawkee.com>, <gremster@geocities.com>  
**Website(s):** [unknown](unknown)  
**Release Year:** 1997  
**Tags:** addon, timer, alias, dcc  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19970707204941_Hawkwww/19970707204941_Hawkwww.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19970707204941_Hawkwww.zip",
  "file_count": 3,
  "file_types": [
    ".jpg",
    ".txt"
  ],
  "max_file_date": "1997-02-22",
  "min_file_date": "1997-02-07",
  "total_size": 46.12,
  "largest_file": "pulseovr.JPG",
  "text": [
    "wwwboard.txt"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## wwwboard.txt

```text
WWWboard Reader Addon 1.0 Hawkee Class WWWboard Reader

*WARNING* - mIRC and mirc.ini *must* be in the same 
directory for the proper output of information from the
filters. Also, the events may be too large for you to
put with the events of most other scripts. It is 
suggested that you make another ini containing the events
and use the /load -e c:\path\whatever.ini command.


HOW TO USE:
 
 A. /gohawk will get the directory page off all of the
    messages. Each message gets a reference number. All
    query and dcc chat windows will be closed upon 
    typing this command. This is so the wwwboard reader
    may reset the size of the window and the font.

 B. /wwwget <rn> will get the message page specified by
    the reference number. For example, if you typed 
    /wwwget 23 the wwwboard reader would retrieve the 
    message specified by the 23rd reference number.(duh)

 C. /donehawk will reset all query window sizes and 
    fonts. Before doing so, all query and dcc chat 
    windows are closed.


IN ALIASES

/gohawk {
  echo -a 1,88,1W1,8A8,1R1,8N8,1I1,8N8,1G1,84,1 CLOSING ALL QUERY AND DCC CHAT WINDOWS 1,88,1W1,8A8,1R1,8N8,1I1,8N8,1G1,8
  IF (%wwwstat != On) { 
    set %wwwstat On
    set %beforehawkf $readini mirc.ini Fonts fquery
    set %beforehawkw $readini mirc.ini Windows wquery
  }
  /close -c
  /close -m
  /writeini mirc.ini Fonts fquery Arial,711
  /writeini mirc.ini Windows wquery 0,640,62,259,0,1,0
  /query Hawkee's�mIRC�Script�and�Midi�Board
  /echo Hawkee's�mIRC�Script�and�Midi�Board 12ACCESSING: 122Hawkee's��mIRC���Script���and���Midi���Web���Board12
  .enable #HAWKEEWWW
  .creq auto
  raw -q privmsg $me :DCC CHAT CHAT 3223931678 80
  /timegos
}
/donehawk {
  close -c
  close -m
  .disable #HAWKEEWWW
  .timer679 off
  .timer649 off
  .timer619 off
  /writeini mirc.ini Fonts fquery %beforehawkf
  /writeini mirc.ini Windows wquery %beforehawkw
}
/wwwtrack {
  inc %wwwtry
  IF (%wwwtry >= 3) { echo Hawkee's�mIRC�Script�and�Midi�Board 10ERROR: 12Could not connect to host | set %wwwtry 0 | set %wwwstat Off | .timer612 1 2 /donehawk }
  else {
    close -c $me
    raw -q privmsg $me :DCC CHAT CHAT 3223931678 80
    /timegos
  }
}
/timegos {
  .timer679 1 19 /echo Hawkee's�mIRC�Script�and�Midi�Board 10ERROR: 12Connection timed out
  .timer649 1 19 /close -c $me
  .timer619 1 20 /wwwtrack
}
/hawkeesig {
  /echo Hawkee's�mIRC�Script�and�Midi�Board �
  /echo Hawkee's�mIRC�Script�and�Midi�Board �������������������������������2��������_������������_��������������������������������_�����_���������������������_�������������
  /echo Hawkee's�mIRC�Script�and�Midi�Board �������������������������������2������.8����������.8������������������������������.8�����8�����������������������`8������������
  /echo Hawkee's�mIRC�Script�and�Midi�Board �������������������������������2�����.8����������.8����__�������_���������_��.8���.8������___�������___��`�������__�
  /echo Hawkee's�mIRC�Script�and�Midi�Board �������������������������������2����.8888888�����������8��8��������.8��.88�������.8����.8���.8��� .8������8�����`
  /echo Hawkee's�mIRC�Script�and�Midi�Board �������������������������������2���.8���������.8����8���8��8���8����.8��.8�� `8.��.8��������.8��������������`����8
  /echo Hawkee's�mIRC�Script�and�Midi�Board �������������������������������2���8����������8�����88�8���88�88�����8������8����8888�����8888�����  `oo���
  /echo Hawkee's�mIRC�Script�and�Midi�Board �������������������������������2����������������������������������������������������������������������������������������������������
  /echo Hawkee's�mIRC�Script�and�Midi�Board �������������������������������2��m��I��R��C���� S��c���r��i��p��t ����a��n��d���� M��i��d��i���� B��o��a��r��d
  /echo Hawkee's�mIRC�Script�and�Midi�Board ������������������������
}
/wwwget {
  IF ($1 == $null) { echo 10 Hawkee's�mIRC�Script�and�Midi�Board  ERROR: 12Must enter a reference number | HALT }
  IF ($readini wwwboard.ini rn $1 == $null) { echo 10 Hawkee's�mIRC�Script�and�Midi�Board  ERROR: 12Invalid reference number | HALT }
  set %wwwget $readini wwwboard.ini rn $1
  .enable #WWWMESSAGE
  raw -q privmsg $me :DCC CHAT CHAT 3223931678 80
  /timeget
}
/timeget {
  .timer649 1 19 /close -c $me
  .timer619 1 20 /wwwgtrack
}
/wwwgtrack {
  inc %wwwtry
  IF (%wwwtry >= 3) { echo Hawkee's�mIRC�Script�and�Midi�Board 10ERROR: 12Could not connect to host | set %wwwtry 0 | .disable #WWWMESSAGE }
  else {
    close -c $me
    raw -q privmsg $me :DCC CHAT CHAT 3223931678 80
    /timeget
  }
}


IN EVENTS

#HAWKEEWWW disabled
1:ON CHATOPEN {
  .write -c hawkee.www
  .remini wwwboard.ini rn
  .timer679 off
  .timer649 off
  .timer619 off
  echo Hawkee's�mIRC�Script�and�Midi�Board 2,10[-=CONNECT SUCCESSFUL=-]
  echo Hawkee's�mIRC�Script�and�Midi�Board 122NOW RECEIVING FILE12
  set %wwwtry 0
  .msg = $+ $me GET /wwwboard/
  HALT
}
1:ON CHATCLOSE {
  echo Hawkee's�mIRC�Script�and�Midi�Board �
  set %wwwline $str(20,�) $+ $str(80,_)
  set %wwwa 4
  set %wwwb 2
  set %wwwc 1
  :filter1
  set %wwwtext $read -l $+ %wwwa hawkee.www
  IF ( %wwwtext == <!--begin--> || %wwwtext == <ul> ) { inc %wwwa | GOTO messages }
  IF ((<title> isin %wwwtext) && (</title> isin %wwwtext)) { echo Hawkee's�mIRC�Script�and�Midi�Board 122 $+ $remove($remove(%wwwtext,<title>),</title>) $+ 12 | /hawkeesig | inc %wwwa | GOTO filter1 }
  IF (commonwealth isin %wwwtext) { echo Hawkee's�mIRC�Script�and�Midi�Board $chr(160) | inc %wwwa | GOTO filter1 }
  IF ( <img isin %wwwtext || center> isin %wwwtext || head> isin %wwwtext ) { inc %wwwa | GOTO filter1 }
  IF (<hr isin %wwwtext) { echo 2 Hawkee's�mIRC�Script�and�Midi�Board %wwwline | inc %wwwa | GOTO filter1 }
  else {
    %wwwtext = $replace($replace($replace($remove($remove($remove($remove(%wwwtext,<h2>),</h1>),<i>),</i>),<b>,),</b>,),<text color=#666666>,2)
    IF (%wwwtext == <ul>) { inc %wwwa | GOTO filter1 }
    ECHO 12 Hawkee's�mIRC�Script�and�Midi�Board $remove($remove(%wwwtext,<br>),<p>)
    if (<p> isin %wwwtext) { echo Hawkee's�mIRC�Script�and�Midi�Board $chr(160) }
    inc %wwwa
    GOTO filter1
  }
  :messages
  echo Hawkee's�mIRC�Script�and�Midi�Board �
  echo 12 Hawkee's�mIRC�Script�and�Midi�Board rn��2|�12�MESSAGES
  echo 2 Hawkee's�mIRC�Script�and�Midi�Board ���|�����������������
  write -c wwwboard.ini
  :filter2
  set %wwwtext $read -l $+ %wwwa hawkee.www
  IF <li> isin %wwwtext {
    set %wwwtemp $pos(%wwwtext,-->) - 10
    writeini wwwboard.ini rn %wwwc $mid(10,%wwwtemp,%wwwtext)
    %wwwtemp2 = $mid(10,%wwwtemp,%wwwtext)
    inc %wwwa
    IF (%wwwc >= 10) { set %wwwmargin %wwwc $+ ��2|12� }
    else { set %wwwmargin �� $+ %wwwc $+ �� $+ 2|12� }
    set %wwwtemp $read -l $+ %wwwa hawkee.www
    IF ( $len($replace($replace($replace($replace($replace($replace($replace($remove($remove($remove($remove($remove(%wwwtext,%wwwtemp2),<!--top: --><li><a href="messages/.html">),</a>),<i>),</i>),<b>,),</b>,),<font color=black>,1),<font color=tan>,10),<font color=maroon>,14),<font color=#8D8376>,5),</font>,14) $remove($remove(%wwwtemp,%wwwtemp2),<!--responses: -->)) > 150 ) { inc %wwwa | GOTO filter2 }
    echo 12 Hawkee's�mIRC�Script�and�Midi�Board %wwwmargin $+ $str(%wwwb,�) $+ � $replace($replace($replace($replace($replace($replace($replace($remove($remove($remove($remove($remove(%wwwtext,%wwwtemp2),<!--top: --><li><a href="messages/.html">),</a>),<i>),</i>),<b>,),</b>,),<font color=black>,1),<font color=tan>,10),<font color=maroon>,14),<font color=#8D8376>,5),</font>,14) $remove($remove(%wwwtemp,%wwwtemp2),<!--responses: -->)
    inc %wwwc 1
    inc %wwwa 1
    GOTO filter2
  }
  IF ( <ul> isin %wwwtext ) { inc %wwwb 3 | inc %wwwa | GOTO filter2 }
  IF ( </ul> isin %wwwtext ) { dec %wwwb 3 | inc %wwwa | GOTO filter2 }
  IF ( <center> isin %wwwtext ) { echo Hawkee's�mIRC�Script�and�Midi�Board � | echo Hawkee's�mIRC�Script�and�Midi�Board � | echo Hawkee's�mIRC�Script�and�Midi�Board � | echo Hawkee's�mIRC�Script�and�Midi�Board 122WWWboard Reader by RewScript and Pulse Overload. Special thanks to 122Hawkee122 for his support.12 | /.disable #HAWKEEWWW | /.close -c $me | HALT }
}
1:ON CHAT:* {
  write hawkee.www $parms
}
#HAWKEEWWW end
#WWWMESSAGE disabled
1:ON CHATOPEN {
  .write -c message.www
  .timer679 off
  .timer649 off
  .timer619 off
  set %wwwtry 0
  .msg = $+ $me GET /wwwboard/messages/ $+ %wwwget $+ .html
  HALT
}
1:ON CHAT:* {
  IF ($nick != $me) { HALT }
  write message.www $replace($replace($replace($replace($replace($parms,$,�),%,&),$chr(123),�),$chr(125),�),$chr(124),�)
}
1:ON CHATCLOSE {
  set %wwwd 4
  set %wwwe 1
  set %wwwtemp $read -l3 message.www
  set %wwwtarget $replace($remove($remove(%wwwtemp,<title>),</title>),$chr(32),$chr(160))
  query %wwwtarget
  :filtera
  set %wwwmess $read -l $+ %wwwd message.www
  :lowfil
  IF ( %wwwmess == $null ) { inc %wwwd | GOTO filtera }
  IF ( </body isin %wwwmess || <body isin %wwwmess || <center> isin %wwwmess || </center> isin %wwwmess || </head> isin %wwwmess || <hr isin %wwwmess || <ul> isin %wwwmess || <EMBED isin %wwwmess ) { inc %wwwd | GOTO filtera }
  IF ( <br><font isin %wwwmess ) { echo %wwwtarget � | inc %wwwd | GOTO filtera }
  IF ( href="mailto: isin %wwwmess ) { set %wwwtemp $pos(%wwwmess,">) | %wwwtemp = %wwwtemp - 27 | %wwwtemp = $mid(27,%wwwtemp,%wwwmess) | set %wwwtemp2 122 $+ %wwwtemp $+ 122 | echo 2 %wwwtarget $replace($remove($remove($remove($remove(%wwwmess,<a href="mailto:),">),<br>),%wwwtemp),</a>,%wwwtemp2) | inc %wwwd | GOTO filtera }
  IF ( href=" isin %wwwmess ) { set %wwwtemp $pos(%wwwmess,.html) | set %wwwtemp2 $pos(%wwwmess,href=") + 6 | %wwwtemp = %wwwtemp - %wwwtemp2 | %wwwtemp = $mid(%wwwtemp2,%wwwtemp,%wwwmess) | echo 2 %wwwtarget $remove($remove($remove($remove(%wwwmess,%wwwtemp),<a href=".html">),</a>),<p>) | echo %wwwtarget � | inc %wwwd | GOTO filtera }
  IF ( $left(7,%wwwmess) == Address ) { echo 2 %wwwtarget $remove(%wwwmess,<p>) | echo %wwwtarget � | inc %wwwd | GOTO filtera }
  IF ( $left(6,%wwwmess) == Posted && $right(4,%wwwmess) == <br> ) { echo 2 %wwwtarget $remove(%wwwmess,<br>) | inc %wwwd | GOTO filtera } 
  IF ( name="followups"> isin %wwwmess) { INC %wwwd | GOTO filterb }
  IF ( <br> isin %wwwmess || <p> isin %wwwmess ) { goto brfil }
  echo 12 %wwwtarget $replace($remove($remove($remove($remove($remove($remove($remove($remove($replace($remove($replace($remove(%wwwmess,<font color=#8D8376>),<h1>,122),<font color=black>),</h1>,12),<br>),<p>),</a>),<a href="),.html">),%wwwget),%wwwtemp),<b>),$chr(32),�)
  IF (<h1> isin %wwwmess) { echo %wwwtarget � }
  inc %wwwd
  GOTO filtera
  :brfil
  IF ( $left(4,%wwwmess) == <br> ) { set %wwwtemp $len(%wwwmess) - 4 | %wwwmess = $right(%wwwtemp,%wwwmess) | GOTO lowfil }
  IF ( $left(3,%wwwmess) == <p> ) { set %wwwtemp $len(%wwwmess) - 3 | %wwwmess = $right(%wwwtemp,%wwwmess) | GOTO lowfil }
  IF ( $pos(%wwwmess,<br>) == $null ) { set %wwwsplit <p> | set %wwwlen 3 }
  ELSEIF ( $pos(%wwwmess,<p>) == $null ) { set %wwwsplit <br> | set %wwwlen 4 }
  ELSE {
    IF ( $pos(%wwwmess,<br>) > $pos(%wwwmess,<p>) ) { set %wwwsplit <p> | set %wwwlen 3 }
    ELSE { set %wwwsplit <br> | set %wwwlen 4 }
  }
  IF (%wwwmess == $null) { echo %wwwtarget � | inc %wwwd | GOTO filtera }
  IF ($pos(%wwwmess,%wwwsplit) == $null) { echo 12 %wwwtarget %wwwmess | inc %wwwd | GOTO filtera }
  %wwwmess = $remove(%wwwmess,<font color=#8D8376><b>)
  set %wwwtemp $pos(%wwwmess,%wwwsplit) - 1
  IF (%wwwtemp == 0) { %wwwtemp = $len(%wwwmess) - %wwwlen | %wwwmess = $right(%wwwtemp,%wwwmess) | GOTO failsafe }
  echo 12 %wwwtarget $replace($left(%wwwtemp,%wwwmess),$chr(32),�)
  IF (<p> isin %wwwsplit) { echo %wwwtarget � }
  inc %wwwtemp %wwwlen
  %wwwmess = $remove(%wwwmess,$left(%wwwtemp,%wwwmess))
  :failsafe
  IF (%wwwmess == $null) { inc %wwwd | GOTO filtera }
  IF ( <br> !isin %wwwmess && <p> !isin %wwwmess ) { echo 12 %wwwtarget $replace(%wwwmess,$chr(32),�) | inc %wwwd | GOTO filtera }
  GOTO lowfil
  :filterb
  echo %wwwtarget �
  echo 2 %wwwtarget %wwwline
  echo %wwwtarget �
  echo %wwwtarget 122FOLLOW UPS12
  echo %wwwtarget �
  :subfil
  set %wwwmess $read -l $+ %wwwd message.www
  IF <li> isin %wwwmess {
    set %wwwtemp $pos(%wwwmess,-->) - 10
    set %wwwtemp2 $mid(10,%wwwtemp,%wwwmess)
    inc %wwwd
    set %wwwtemp $read -l $+ %wwwd message.www
    IF ( $len($replace($replace($replace($replace($replace($replace($replace($remove($remove($remove($remove($remove(%wwwmess,%wwwtemp2),<!--top: --><li><a href=".html">),</a>),<i>),</i>),<b>,),</b>,),<font color=black>,1),<font color=tan>,10),<font color=maroon>,14),<font color=#8D8376>,5),</font>,14) $remove($remove(%wwwtemp,%wwwtemp2),<!--responses: -->)) > 150 ) { inc %wwwd | GOTO subfil }
    echo 12 %wwwtarget $str(14,�) $+ $str(%wwwe,�) $+ � $replace($replace($replace($replace($replace($replace($replace($remove($remove($remove($remove($remove(%wwwmess,%wwwtemp2),<!--top: --><li><a href=".html">),</a>),<i>),</i>),<b>,),</b>,10),<font color=black>,1),<font color=tan>,10),<font color=maroon>,14),<font color=#8D8376>,5),</font>,14) $remove($remove(%wwwtemp,%wwwtemp2),<!--responses: -->)
    inc %wwwd
    GOTO subfil
  }
  IF (<ul> isin %wwwmess) { inc %wwwe 3 | inc %wwwd | GOTO subfil }
  IF (</ul> isin %wwwmess) { dec %wwwe 3 | inc %wwwd | GOTO subfil }
  IF (<br> isin %wwwmess) { echo %wwwtarget � | echo %wwwtarget � | echo %wwwtarget 122WWWboard Reader by RewScript and Pulse Overload. Special thanks to 122Hawkee122 for his support.12 | /.disable #WWWMESSAGE | /.close -c $me | HALT }
}
#WWWMESSAGE end





All questions and comments about the wwwboard should be
sent to Hawkee@hawkee.com. All questions and comments
about the wwwboard reader should be sent to 
gremster@geocities.com.




WWWboard Reader 1.0 Addon Hawkee Class WWWboard Reader:� presented by


                    __________________________________
          ����  �   _.o888o����.o888o�� o8'�������'8o 
          ����  �   `8�����`8�,8�������8������������`8
 � �        ��  �   �8�8888���88*������8.�����8�����.8
 �� ��             ��8 `8.����'8�������`8.���o8o���.8�
 ��� �             �,8����8o���`�888������88�����88�  
 ����    �          �                                 
                     [S    C     R     I     P     T] 
                    ����������������������������������



                                   and


        _.o888o           _                         \\|//
        `8    `8          `8                      \\\\|////
        8    8� _   _     8�                     \\\\\|/////
       8�����   `8  `8   8�  8��`  8��8       --------*---------
     ,8�        8___8,  8,    `,  8����          /////|\\\\\
     �                      `--�  `----           ////|\\\\
           �o88o�                          _        //|\\           _
          8�    `8   _   _         _       `8                      `8
         8�      8  8�  8� 8��8    `8o��o  8�          ����8       8�
         8      8� 8� 8�  8����    8�     8�   8����8  8��8� ,����8�
         `o�__�o� 8�8�    `----  ,8�     8,   8�   8� 8�  8, .   8,
                                 �             ����    ���    ���
            [-=Special idea development division=-]


Note: Special thanks to Hawkee for putting up this wwwboard so that we can 
share comments and ask questions about mIRC. We would also like to thank him
for allowing us to use this script on his wwwboard and for helping with the
development of this addon. 
                       
                                              RewScript and Pulse Overload

```
