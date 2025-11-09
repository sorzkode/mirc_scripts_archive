# English v2.8 by editing this file

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

**Script Name:** English  
**Version:** 2.8  
**Category:** game  
**Authors:** editing this file  
**Email(s):** <BODY_X@IOL.IT>  
**Website(s):** [http://www.mischler.com/iproute](http://www.mischler.com/iproute)  
**Release Year:** 1999  
**Tags:** identd, alias, trigger  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/kegdoctor_archive/tedbearwartools/tedbearwartools.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "tedbearwartools.zip",
  "file_count": 9,
  "file_types": [
    ".dll",
    ".exe",
    ".hlp",
    ".ini",
    ".lnk",
    ".log",
    ".txt",
    ".wav"
  ],
  "max_file_date": "1999-03-22",
  "min_file_date": "1999-01-29",
  "total_size": 1107.39,
  "largest_file": "spoof/cygwin.dll",
  "text": [
    "NukeNabber/readme.txt"
  ]
}
```

## 📋 Text Content (from NukeNabber/readme.txt)

```text
Changes

NukeNabber 2.9b 01/09/98

------------------------

	Fixed a portscanning bug that could make NN crash.





NukeNabber 2.9a 10/15/98

------------------------

	Fixed problem with sounds assigned to individual ports.

	Fixed the "no data" bug.

	Fixed the port not shutting down on a timeout.

	Fixed the UNKNOWN source port bug.

	Fixed the messed up help file.





NukeNabber 2.9 7-7-98

---------------------

NukeNabber:

        Fixed an issue with setting Stay On Top and then having windows appear

              behind the main window.

        Fixed a problem where double-clicking on a blank area of the

              Intelligence Report screen caused a GPF.

        Skipped version 2.8 due to a trojan being passed around.

        Made further adjustments to the ICMP monitor.

        Pirch98 has finally been released with DDE support.

                Updated language.ini and DDE engine.

		Pirch script included.

        Added as defaults, ports 1027, 1019, 1032, 5000 and 5001 tcp.

              1027-1032 protect ICQ from attacks.

              5000 and 5001 detect someone trying to use a

                   French trojan that will backdoor your system.

        Made further adjustments to the system tray behaviour.

        Updated documentation to reflect new URL.



Future:

       The next major version of NukeNabber (3.0) will use a database to keep track of

       attacks, some sort of authentication of log files (perhaps PGP), the ability

       to run as a service, new help file and other things.  All subject to change, of course.





NukeNabber 2.7a 5-25-98

-----------------------

NukeNabber:

	fixed a problem with the ICMP trigger being set too high.





NukeNabber 2.7 5-24-98

----------------------

NukeNabber:

	fixed a problem with receiving iproute data.

	fixed a problem with ports not being initialized on a new install.

	fixed a problem with NN not restoring properly from the tray area.





NukeNabber 2.6 5-19-98

----------------------

Nukenabber:

	now includes identd.

	now includes syslogd for linking with iproute (http://www.mischler.com/iproute).

	fixed a bug where ICMP monitoring would show the port was

		disabled when it was not.

	fixed a bug where NN would generate an MMSYSTEM error if

		the specified sound file didn't exist.



language.ini

	Added Russian (script), Italian, a new French translation and "Silly".





NukeNabber 2.5 1-19-98

----------------------

Nukenabber:

	wrote a new help file

	added multiple mIRC client support (up to 9 seperate clients).

	added support for VIRC.

	addes support for PIRCH (however PIRCH does not yet support DDE).

	integrated the language support.

	added support for EventLog in WindowsNT.

	changed the date/timestamp to include milliseconds.

	fixed a problem where the language.ini file was not found if

		nukenabber was started from mirc or virc.

	fixed a problem where adding or removing the ICMP port in options

		did not actually start or shut down the monitor.

	fixed a problem with the logfile going into the default directory

		which would change after setting the sound file.

	

Report:

	fixed a problem where the traceroute was sometimes truncated.

	fixed a problem where it would sometimes not exit after

		gathering information.



language.ini

	all languages are now in one file and selectable from the

		options screen.





NukeNabber 2.1 10/17/97

-----------------------

* NN 2.1 now requires Winsock 2.x



Added ICMP dest_unreach ("click") detection

Added Intelligence Gathering (automated traceroute, finger and whois)

Added Multiple language messages.  All NN output messages are now stored in language.ini

	You can now redefine the /nuke alias name by editing this file.

Added a new Report Manager for the Intelligence Reports.





NukeNabber 2.0a 09/10/97

------------------------

Added - Help file.

Added - UDP connects will now resolve to a hostname if possible.

Fixed - Multiple attempts to resolve the hostname was slowing down

	attack detection.

Fixed - Port was not shut down during a UDP flood.

Fixed - Changing the "Disable Ports" option while a port

	was disabled caused the port to fail to re-enable.

Fixed - Nuke counter was not updated when a UDP packet was

	received.

Fixed - The uninstaller was not removing the program directory.





NukeNabber 2.0 08/18/97

-----------------------



-Completely re-written.

-All ports can now be re-assigned.

-Port limit increased to 50.

-Added UDP listening.

-Each port can be individually configured.

-More information is sent via DDE (host,ip,port and protocol)

-Can now start minimized.

-Visual alert in System Tray.

-Option to "Stay on Top".

-Can specify partial/full addresses to ignore.

-Can detect and block port scanners.





-=IMPORTANT NOTE=-



If you have installed the official OOB patch from Microsoft

you cannot detect connections on port 139.  To remove this

patch, remove all networking components, reboot and add t
```
