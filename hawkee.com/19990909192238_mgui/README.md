# mGUI v3.21 by Chutzpah (Patrick McLean)

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

**Script Name:** mGUI  
**Version:** 3.21  
**Category:** addon  
**Author(s):** Chutzpah (Patrick McLean)  
**Email(s):** <pmclean@ican.net>, <chutzpah@ircn.com>  
**Website(s):** [http://sample](http://sample), [http://.ican.net/~mclean2/](http://.ican.net/~mclean2/)  
**Release Year:** 1998  
**Tags:** timer, gui, greet, nicklist, flood protection, xdcc, alias, popups, dialog, popup, mp3, addon, interface, dcc, protection  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990909192238_mgui/19990909192238_mgui.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990909192238_mgui.zip",
  "file_count": 4,
  "file_types": [
    ".gui",
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1998-01-15",
  "min_file_date": "1998-01-09",
  "total_size": 86.99,
  "largest_file": "mgui.mrc",
  "text": [
    "mgui.mrc",
    "xdccedit.mrc",
    "mgui.txt"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## mgui.txt

```text
mGUI for mIRC
=============

GUI Addon for mIRC
Copyright � 1998 Patrick McLean

By Chutzpah (Patrick McLean)
  pmclean@ican.net or chutzpah@ircn.com
  home.ican.net/~mclean2/

mGUI is an addon to let scripters add a GUI interface to their scripts.

$gui.version returns the current version of mGUI

NOTICE: This Version is NOT Compatible with older versions (below 2.0).
    You can make your old .gui files compatible by replacing "row"
    with "column" (just use a text replacer).

Ok, I've had too many questions about this, mGUI is over the size
    limit of the mIRC editor, it does not affect the operation of
    the script as long as you do not view mGUI in the editor (yes,
    you can still edit your scripts, jsut don't select mGUI from
    the view menu. To load the script use /load -rs NOT the load
    on the file menu in the editor.

Creating a .gui file.
====================

This version of mGUI has several commands that
    make it easier to create a GUI file, here are
    the commands with syntax and descriptions, for
    descriptions of the various objects, see the
    manual .gui file creation section.

To create a GUI, you first create a GUI file using
    /newgui then you add your objects to the GUI
    file with the /add* commands. Once you have
    added all the objects, and combo lists (/listitem)
    you use the /guiwin to load your finished GUI
    file into a GUI window.

    If you specify the -n option with /guiwin, it does
    not display the "Loading, please wait..." message
    while it is loading.

Note: Each line in a column can only contain
    one object.

- - - - - - - - - - - - - - - - - - - -

/newgui <name> <width> <height> <columns> [<on> <off>] [distance]

    Creates a new .gui file, the width and height are the width and
        height that the GUI window will be when the file is used. The
        columns is the number of columns of controls the GUI window
        will have.

        - on and off are the values to give the variables when a checkbox
            is checked (on) or unchecked (off), if you have an "on", "off"
            is also required.

        - the distcance is the distance between columns (if it is not included,
            mGUI will automatically calculate the best distance to use.

------------------------

/addcombo [-cfr] <gui> <column> <line> <variable> "<caption>" "[command]"

    Adds a combo box to the specified GUI file at the specified line
        in the specified column. The caption is the text beside the combo,
        and the variable is the variable name (without the "%") to set
        according to the value when the ok button on the GUI window
        is pressed.

        -f - This option sets the combo box to a "fixed" combo box,
             meaning that the user can't type in a value, they must
             pick a valur from the combo list created with /listitem.

        -r - This option sets the combo box to a "required" combo box,
             if the user clicks "ok" and there this combo box has no
             value, mGUI will produce an error message and not close
             the GUI window.

        -c - This switch means that there is a command specified to be
             executed after the user has selected a item from the list.
             (if you need to execute a command after the user types a
             value, set a command (see manual GUI creation section).

------------------------

/listitem [-n] <gui> <column> <line> "<value>" "<caption>"

        This add an item to the list for a combo box created with the
        /addcombo command. The value is the value to set the appropiate
        variable to if this item is the selected item.

        -n - This switch specifies that you have included a caption
             for the item. The caption is what appears on the list
             to the user, set this if you would like the item to
             say something different to what mGUI should set the
             appropiate variable to if this item is selected when
             "ok" is pressed.

------------------------

/addtext [-rf] <gui> <column> <line> <variable> [startdir] "<caption>" "[file dialog text]"

    Adds a text box to the specified GUI file at the specified line
        in the specified column. The caption is the text beside the text
        box, and the variable is the variable name (without the "%") to
        set according to the value when the ok button on the GUI window
        is pressed.

        -r - "Required" (same as combo box).

        -f - This option specifies that you want it to be a file text box,
             a text box that displays a directory list box rather than a
             text entry box when clicked on. The startdir is the directory
             to start in (try $mircdir for mirc directory or . for current
             directory). The file dialog text is the text to display at the
             top of the file list box.

------------------------

/addcheck [-d] <gui> <column> <line> <variable> [default] <caption>

    Adds a check box to the specified GUI file at the specified line
        in the specified column. The caption is the text beside the text
        box, and the variable is the variable name (without the "%") to
        set to the GUI's "on" or "off" value according to whether the
        check box is checked or unchecked when the "ok" button on the
        GUI window is pressed.

    -d - This option specifies that you have specified a default value for
         the check to set the check to if the variable does not exist. Set
         this to either the GUI's "on" or "off" setting.

------------------------

/addlabel <gui> <column> <line> [caption]

    Adds a label to the GUI to the specified line on the specified column.
        The caption is the text the the label contains, if it is blank,
        an empty space is created rather than a label.

------------------------

/addtitle <gui> <column> <line> <caption>

    Adds a title to the GUI to the specified line on the specified column.
        The caption is the text the the title contains, if it is blank,
        an empty space is created rather than a title.

------------------------

/addcommand <gui> <column> <line> "<caption>" "<command>"

    Adds a command button the the GUI at the specified line in the
        specified column. A command button is a button that can be
        clicked to execute a certain command, the command to be
        executed is specified with the command setting, and the text
        on the button is set with the caption setting.

------------------------

/addpic <gui> <column> <line> <bitmap> <block> <picture column>

    Adds a picture to the gui at the specified line on the specified
        column. See the manual creation section for more information
        on adding pictures to your GUI window.



Manual creation of a .gui file.
===============================

A .gui file is in the format of a mIRC .ini file, with several sections.

The [options] section sets the main parameters for the GUI window.

    Mandatory Sections:

        The title (large text near top of window).
            title=<title>

        The number of columns of settings.
            columns=<number>

        The width of the window (at least 460).
            width=<number>

        The height of the window (at least 360).
            height=<number>

    Optional Settings:

        Column distance (the distance between columns).
            distance=<number>

        The window name.
            window=<name>

        Background picture.
            picture=<filename>

        The on and off settings (on is what to set
                 the variable to if a checkbox is checked,
                 and off is what to set the variable to if the
                 checkbox is unchecked).
             on=<on setting>
             off=<off setting>

        Command to execute after the user presses "ok"
                and all the variables have been set.
            command=<command>

        Command to execute after the user presses "Cancel"
            cancelcmd=<command>

        Command to execute after the window is open.
            opencmd=<command>

=======

The [colours] section contains the RGB colours for the various parts of the GUI window, refer to the sample GUI settings file to see possible settings, this section is not necessarily needed.

The [popup] section contains the popups,
        in normal mirc popup format (see sample).

    You may use the gui.ok and the gui.cancel
        commands to simulate a click of the "OK"
        or "Cancel" button


The columns sections are set up in the format [column#], see sample.
The data in the column sections is set up in this format:
n<line>=<object>;<caption>;[variable];[options]

The line is the number of the control in this column, each control must have a different line.

The object is the type of setting it is, there are 5 different objects which are described below.

The variable is the name of the variable that the setting applies to, do not use a % in front of the variable name.

The options are the various options for the object.


Objects:
========

label - This object is just a text label, no variable is required,
        if there is no text supplied, it creates a blank space.
    format: n<line>=label;[text]

title - This object is similar to a label except the text is in bold.
    format: n<line>=title;<text>

check - This is a checkbox that can be checked or unchecked,
        the on and off settings set the values to give the variable
        for checked and unchecked. If default has a value, that is
        the default value if the variable dosent exist.
    format: n<line>=check;<caption>;<variable>;[default]

picture - this is just bitmap picture that can have the same
        function as a label. The block is the 14 pixel line that
        is used. (if part is 1 it uses pixel lines 1-14, 2 is 15-29,
        and so on, default is 1). Column is the column of the
        picture, use this to display pictures more than 1 column
        wide.
    format: n<line>=picture;<bitmap>;<block>;<column>

text - This is a box that can contain some text, the user may
        change the value by clicking on it. if require option is
        'yes', the textbox must have a value, otherwise it may
        be blank. If file is 'yes' then it uses a file list box rather
        than a normal input box. Startdir is the directory the
        filelistbox should start in if it is a file textbox. fileseltext
        is the text that is displayed at the top of the file list box.
        ie: "Select file <fileseltext>"
    format: n<line>=text;<caption>;<variable>;[require];[file];[startdir];[fileseltext]

combo - This is the most complicated and most useful feature.
        The combobox is a textbox with a drop down list containing
        possible values that may be in the text box. If the type option
        is set to 'no', the user must choose from the list, otherwise the
        user may change the value manually by clicking on the box. If
        the require option is set to yes, then the user must enter a value
        if he/she clicks on the box to change the value manually.
            To set the list for the combo, you make a new section
            with the options you want to have on the drop-down list,
            you name the section according to the column and line of the
            combobox in this format: [combo<column>.<line>] (see sample
            .gui file for an example). The command is a command that
            you want executed after the user picks a value, $1- being
            the value that the user selects.
    format: n<line>=combo;<caption>;<variable>;[type];[require];[command]

command - This is a button that can execute a command when
        it is pressed. command is the command to be executed. The
        caption is the text on the button.
    format: n<line>=command;<caption>;<command>


Some useful commands
--------------------

/gui.ok                 - Same as user pressing "ok" button.

/gui.cancel             - Same as user pressing "Cancel" button.

/gui.error <message>    - Brings up a little error dialogue box
                          with the specified message as the error
                          message.

/gui.write              - Updates that variables without closing
                          the GUI window (but the controls on the
                          window no longer work, useful for changing
                          the window when the person is still using it
                          (xdccedit.mrc uses this)

/gui.sclick <x> <y>     - Same as user clicking on the mouse coordinates
                          x and y.



Some useful custom identifiers.
-------------------------------

$guidir             - Returns the directory containing the present
                      copy of mGUI and all the .gui files.

$guidir(<file>)     - Returns the specified file in the directory
                      containing the present copy of mGUI and all
                      the .gui files.

$guifile(<name>)    - Returns the name of a file in the GUI directory
                      with name specified and the extension .gui (do
                      not include the extension).



= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

You can also include a command to be executed after a textbox
        has been changed, a checkbox has been clicked on, a
        combobox has been changed manually (not from list),
        or a check has been clicked on. The command can
        include identifiers, or variables.
    format: c<line>=<command>

There is also a XDCC configure thing that I made,
    that can show what you can do with this GUI
    addon, To try it, load xdccedit.mrc. I never made
    the actual XDCC system because I kind of hate
    doing XDCC systems, maybe ill do it someday.

Greets
======

Ident     - Encouraged and helped me on both this and ircN 6.0,
            and gave me a bounce to prevent bonks.

Xe|2oX    - Great guy who was a BIG help with ircN 6.0 and was
            a pretty big help with this addon, too.

Quam      - One of the most active #ircN ops.

Daedo     - The new main scripter for ircN, a good scripter,
            a #ircN op and a great guy.

Barbi     - Another person who was impressed by the early release,
            and a great person who helps me out when somebody is
            giving me a problem. I'm doing a #v0id script for her.

gandalf   - Decent scripter who encouraged my making of this.

`lethal`  - Another decent scripter who I'm helping with a script.

xix       - Leet scripter who I'm trying to impress with this addon :)

Giddeon   - One of my best IRC friends.

Mog-      - Incredibly elite #ircN op who helps me with things every
            now and then.

maximum   - Great guy, without him, I would not have been able to make
            mGUI 3.0, he lent me a firewall to use on IRC, without this
            I would have been boinked too often to finish this addon.
            (its kinda hard to script when your puter freezes every 5
            minutes, and i cant script mIRC properly in Linux).

_Drag0n_  - Another one of my IRC friends.

|tinman   - Probably would still be trying to get linux working right
            if it weren't for this guy.

Giga      - Friend from school who helped fix linux when it fux0red.

Myrla     - Great #ircN op who helps out a lot.

dos       - Another mIRC scripter who goes to my school.

Lurchi    - This guy is da man, thanks again for sending that prog.

DirtyByrd - Cool guy, and a fairly decent scripter who helped out and
            found a lot of bugs. Does not go on EFnet much, but talks
            to me over ICQ all the time.

mexis     - Cool guy, and an excellent scripter who #realmx, a leet
            EFnet channel. His XDCC is the biggest distro to mIRC
            scripters this addon has.

All the other #ircN ops and other people who helped out on this addon,
    sorry to the ppl I forgot, if you know me, you know that I have a
    bad memory.
```
