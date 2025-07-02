# mIRC Whiteboard v1 by xFurYx

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

**Script Name:** mIRC Whiteboard  
**Version:** 1  
**Category:** addon  
**Author(s):** xFurYx  
**Email(s):** <aft@akula.com>, <aft@xfuryx.ml.org>  
**Website(s):** [unknown](unknown)  
**Release Year:** 1998  
**Tags:** timer, alias, toolbar, dialog, addon, dcc, entertainment, draw  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990819034627_wboard/19990819034627_wboard.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990819034627_wboard.zip",
  "file_count": 12,
  "file_types": [
    ".bmp",
    ".ini",
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1998-03-30",
  "min_file_date": "1997-12-18",
  "total_size": 108.42,
  "largest_file": "wbtool.bmp",
  "text": [
    "wboard.ini",
    "wboard.txt",
    "readme.txt",
    "wboard2.mrc",
    "wboard.mrc"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## wboard.txt

```text
-=-=-=-=-=-=-=--=-=-=-=-=-=-=--=-=-=-=-=-=-=--=-=-=-=-=-=-=--=-=-=-=-=-=-=-
    mIRC Whiteboard by xFurYx '98, Written for rAvaGe mIRC by xFurYx
                       Official Help File/Readme
-=-=-=-=-=-=-=--=-=-=-=-=-=-=--=-=-=-=-=-=-=--=-=-=-=-=-=-=--=-=-=-=-=-=-=-
                 Look for my new script, coming soon:
               ___            _____            _______  _____
          ____/ _ |_  _____ _/ ___/__   __ _  /  _/ _ \/ ___/
         / __/ __ | |/ / _ `/ (_ / -_) /  ' \_/ // , _/ /__  
        /_/ /_/ |_|___/\_,_/\___/\__/ /_/_/_/___/_/|_|\___/  
     THE NO-WAR NO-LAMENESS SEQUEL TO THE POPULAR SWEET REVENGE
                                                     
        To download a preview of this AWESOME script, please refer to
        section 5.1 of this file and contact me.

-=-=-=-=-=-=-=--=-=-=-=-=-=-=--=-=-=-=-=-=-=--=-=-=-=-=-=-=--=-=-=-=-=-=-=-

=============
INDEX
=============

1. Getting Started
   1.1 Loading Whiteboard
   1.2 Listening For Connections (*IMPORTANT*)
   1.3 Drawing Solo
2. Connecting To Somebody
   1.1 Connecting
       1.1.1 Connection Errors
   1.2 Canceling Your Connection
   1.3 Disconnecting
3. Now That We're Connected
   1.1 Whiteboard Chat
   1.2 Socket Info Window
   1.3 SD and RD "lights"
4. Finally, Drawing
   4.1 Selecting Your Tool
   4.2 The X and Y Coordinates
   4.3 Selecting And Editing Colors
       4.3.1 Selecting Colors
       4.3.2 Editing Colors
   4.4 Using And Abusing The Tools
       4.4.1 Line Tool
       4.4.2 Rectangle Tool
       4.4.3 Picture Tool
           4.4.1 Drawing A Picture (Solo)
           4.4.2 Sending A Picture (Non-Solo)
           4.4.3 Recieving A Picture (Non-Solo)
       4.4.4 Eraser Tool
       4.4.5 Fill Tool
       4.4.6 Fan Tool
       4.4.7 Get Color
       4.4.8 rAvaGe Symbol
       4.4.9 FreeDot
       4.4.10 FreeHand
       4.4.11 Move
       4.4.12 Filled Circle
       4.4.13 Text
       4.4.14 Copy
       4.4.15 SprayPaint
       4.4.16 LineToLine
       4.4.17 Inverse
5. The Author (xFurYx)
   5.1 Contacting
       5.1.1 On IRC             
       5.1.2 Via Email
       5.1.3 DCC Chat
   5.2 Info
   5.3 Why I Released This Addon
=============
Section 1 - Getting Started
=============

---1.1 - Loading Whiteboard
         Whiteboard is easy to load.  Just follow these simple steps:

         Step 1: Unzip the files contained in the
                 zip file (it is assumed you have already done this)
                 into any directory on your PC. 
         Step 2: Load mIRC.
         Step 3: Type the following in any editbox in mIRC:
                 //load -rs $findfile(c:\,wboard.mrc,1)
                 //load -rs $findfile(c:\,wboard2.mrc,1)

         Whiteboard is now loaded!

---1.2 Listening For Connections (*IMPORTANT*)
       In order for somebody to be able to connect to you and draw,
       your PC must be listening for their connection.  This is
       simple to do, in your mIRC program with Whiteboard loaded,
       use the following commands by typing them into any editbox:

       /listen       - Makes whiteboard listen for connections.  When
                       somebody tries to connect to you, you will get
                       a dialog asking if you want to draw with them.
       /dontlisten   - Makes whiteboard ignore all connections.

---1.3 Drawing Solo
       To use Whiteboard to draw solo (by yourself), just use the /WHITE
       command.  This will bring up the whiteboard window, and you can
       use all of the tools to draw.

=============
Section 2 - Connecting To Somebody
=============

---2.1 Connecting
       To connect to somebody, simply click the "Connect To..." button at
       the top of the whiteboard window.  You will be prompted for the
       IP name or number of the person you want to connect to.  This can
       be found by doing a /whois on the person who has whiteboard, and
       looking at the address.  In the stock mIRC, the line you want looks
       like this:

       person is person@personsipname.com - I AM A PERSON!

       The text after the @ and before their quote is the information we
       want, so in this case person's IP name is "personsipname.com".
       After you type in the IP name or number and press enter, Whiteboard
       will attempt to connect to that person.
       
       ---2.1.1 Connection Errors
                If you attempt to connect to somebody and it doesn't work,
                there might be a few reasons why.

                Reason 1: The person does not have Whiteboard.
                Reason 2: The person did not accept your request to draw.
                          (you will be told when this happens)
                Reason 3: The person just ignored the request by closing
                          the window.  In this case, you will have to
                          click the "Cancel Connect" button at the top
                          of the whiteboard.
                Reason 4: Other error.  In this case, Whiteboard will tell
                          you what could have gone wrong.

---2.2 Cancelling Your Connection
       If for some reason you decide you want to stop trying to connect
       to somebody, simply click the "Cancel Connect" button at the top
       of the whiteboard window.  If you notice, this WAS the "Connect
       To..." button.

---2.3 Disconnecting
       To disconnect from a user, simply click the "Disconnect" button at
       the top of the Whiteboard window.

=============
Section 3 - Now That We're Connected
=============

---3.1 Whiteboard Chat
       Whiteboard includes a chat window, which you can use to talk to
       the user you are drawing with.  To open the window, click the
       "Chat Window" button at the top of the whiteboard window.  Just
       simply talk in the window as you were talking in a DCC chat.
       When you get a message, one of three things will happen:

            1. If the chat window is not open at all, the Chat Window
               button will be highlited, in which case you can click
               the button to open the window and un-highlite it.
            2. If the chat window is open but minimized, the icon
               either in the switchbar or at the bottom of your screen
               will be highlited.
            3. If the chat window is open and active, the message will
               be displayed inside of it.

---3.2 Socket Info Window
       To find out whether you are connected or not, or how many bytes
       you have sent or recieved, click the "Socket Info" button at the 
       top of the whiteboard window.  It is updated any time any of the
       information is updated.

---3.3 SD and RD "lights"
       Next to the buttons, there are two "lights" (dots really) that say
       SD and RD under them.  These lights go off only when connected. 
       They tell you if you are currently SENDING DATA (SD) or RECIEVING
       DATA (RD).

=============
Section 4 - Finally, Drawing
=============

---4.1 Selecting Your Tool
       The first tool is automatically set as "FreeDraw".  To use a 
       different one, just click the desired tool in the toolbox.  To
       find out what tool is what, just place the mouse pointer over the
       tool and the name of the tool will be displayed in the 3rd box down
       from the toolbar.

---4.2 The X and Y Coordinates
       To find out where you are on the drawing space, look in the second
       box down from the toolbar.  The X number is how far away you are 
       from the left and the Y number is how far away you are from the
       top.

---4.3 Selecting And Editing Colors

       4.3.1 Selecting Colors
             To select a color, simply click the desired color in the
             color palette at the bottom of the Whiteboard window.

       4.3.2 Editing Colors
             Editing colors is easy and basic.  To edit a color, simply
             double click the desired color or click the "Edit Colors"
             button at the top of the whiteboard window.
             
             Once you have done that, a Color Editor window will pop up.
             If you double clicked the color you wanted to edit, it will
             be editing that color.  Otherwise, select it using the up and
             down arrows.

             Finally, to edit a color, use the arrows to adjust the "Red",
             "Green" and "Blue" values of it.  To save the color into the
             color palette, press the "Save Color" button at the bottom
             of the color editor.

---4.4 Using And Abusing The Tools
       
       Whiteboard offers many tools to use in your drawing experience.
       Once you have selected your tool of choice, read the following
       directions on how to use it.
 
        4.4.1 Line Tool
              Use: Drawing ONE Line
              Directions: Click in the drawing area and drag to the endpoint
              of the line.

        4.4.2 Rectangle Tool
              Use: Drawing a rectangle.
              Directions: Click in the drawing area to determine the
              starting point and drag to the endpoint.

        4.4.3 Picture Tool
              Use: This tool draws a bitmap file into the picture.
              
              4.4.3.1 Drawing A Picture (Solo)
                      To draw a picture in your solo drawing, select the
                      picture tool and click in the drawing area where you
                      want the upper left corner of the picture to start.
                      You will be prompted to select a picture.  Select one,
                      and click Ok for the script to draw it.
              4.4.3.2 Sending A Picture (Non-Solo)
                      Follow the same directions from 4.4.3.1.  The picture
                      request will be sent to the other person.  If they
                      accept (you will be notified if they don't), it will
                      begin sending.
              4.4.3.3 Recieving A Picture (Non-Solo)
                      If you are prompted with a dialog that asks you if you
                      would like to recieve a picture from somebody, Click
                      the Yes button to accept, No to deny it.  If you click
                      yes, the Picture Recieving window will pop up and you
                      will recieve it.  When it is done recieving, the
                      picture will be drawn.

       4.4.4 Eraser Tool
             Use: To erase things (in white)
             Directions: Select the size in the tool toolbox and drag the
             mouse around the drawing area.

       4.4.5 Fill Tool
             Use: Fills an area of the same color with a different color.
             Directions: Click somewhere.

       4.4.6 Fan Tool
             Use: Makes lines starting from a single point to all different
             points.
             Directions: Click and drag to form the lines.

       4.4.7 Get Color Tool
             Use: Takes the color that you select from the picture and
             enables you to draw with it.
             Directions: Click the color you want in the drawing area.  That
             color will be selected and the last tool you were using will
             be loaded.
      
       4.4.8 rAvaGe Symbol
             Use: Nothing.  This tool does nothing but look nice in the
             toolbar.  You can't select it.  Don't email me asking what
             it does.

       4.4.9 FreeDot
             Use: Draws dots.
             Directions: Drag the tool around the screen.

       4.4.10 FreeHand
             Use: Draws connected lines around the screen (like a pencil).
             Directions: Drag the tool around the screen.

       4.4.11 Move
             Use: Moves a part of the picture to a different area.
             Directions: Follow these steps.
                         Step 1: Select the area to move by clicking the
                                 place to start moving and dragging the
                                 rectangle to the end point.
                         Step 2: Click and drag inside the rectangle and
                                 move the picture around.
      
       4.4.12 Filled Circle
             Use: Draws a circle, but only filled.
             Directions: Follow directions from 4.4.2.
 
       4.4.13 Text
             Use: Draws text onto the drawing area.
             Directions: Select your font by clicking the "Select Font"
             button in the tool toolbar and typing the name of the font
             you wish to use in the dialog.  Then select the font size by
             adjusting it in the tool toolbox with the up and down arrows.
             To place text, click anywhere in the drawing area.  You will
             be prompted with a dialog asking you what to type.

       4.4.14 Copy
             Use: Copies a part of the picture to a different area.
             Directions: Follow directions from 4.4.11.
 
       4.4.15 Spraypaint

             Use: Draws spraypaint (lots of little dots).  Good for drawing
             hair (pubic hair, if you are feeling a little sick) and other
             things.
             Directions: Click and drag inside the drawing area.

       4.4.16 LineToLine - Closed Polygon
 
             Use: This makes a closed polygon in the drawing area.
             Directions: To start drawing, click in the drawing area.  Then
             drag the line to the second point, and so on.  When you want
             to close the shape, click on the starting point.

      4.4.17 Inverse

             Use: This reverses the colors in the selected area.
             Directions: Click and drag to form a rectangle.

=============
Section 5 - The Author (xFurYx)
=============

---5.1 Contacting
       There are a few different ways to contact me.

       5.1.1 On IRC
             I can be found on IRC on the Undernet IRC network in the
             channel #mIRC-Scripts.  I usually go by the nick fury or
             fury_, but I might be xFurYx, furry, furry_ or xFurrYx
             (no I do NOT go by my normal nick and I am not possessive
             about it.  Jupe it all you want, see if I care.)  If you
             see a person with any of those nicks, if its me the hostmask
             will ALWAYS match *!*aft@xfuryx.ml.org.  If it doesn't, it's
             not me.

       5.1.2 Via Email
             My email address is aft@akula.com - please email me any
             questions you might have.

       5.1.3 DCC Chat
             On IRC, you can DCC chat the ip "xfuryx.ml.org".

---5.2 Info
       I hang out on IRC to script and help other users with their script
       in the Undernet #mIRC-Scripts channel.  I will not cater to lamers
       or people that want to know how to use or make war tools.  If you
       do not get a response from me on IRC, please email me.  Don't keep
       bugging me or I will put you in the "lame" category.

---5.3 Why I Released This Addon
       I released this addon basically to promote my upcoming script.  If
       it weren't for that script, I probably would not have released it.
       Please refer to the top of this file for information on how to get
       a preview of it.

-EOF
```
