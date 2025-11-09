# sqlitedll%5b04-26%5d v2 by tab

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

**Script Name:** sqlitedll%5b04-26%5d  
**Version:** 2  
**Category:** game  
**Authors:** tab  
**Email(s):**   
**Website(s):** [http://www.sqlite.org/omitted.html](http://www.sqlite.org/omitted.html), [http://www.sqlite.org](http://www.sqlite.org), [http://bobmanc.home.comcast.net/sqlitecc.html](http://bobmanc.home.comcast.net/sqlitecc.html), [http://www.sqlite.org/](http://www.sqlite.org/), [http://www.sqlite.org.](http://www.sqlite.org.), [http://www.dbtools.com.br](http://www.dbtools.com.br), [http://(0040)sqlite-lang.html](http://(0040)sqlite-lang.html), [http://test.mrc](http://test.mrc)  
**Release Year:** 2004  
**Tags:** dice, trigger, timer, alias, bot, interface  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/sqlitedll%5b04-26%5d/sqlitedll%5b04-26%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "sqlitedll%5b04-26%5d.zip",
  "file_count": 57,
  "file_types": [
    ".c",
    ".cpp",
    ".def",
    ".dll",
    ".dsp",
    ".dsw",
    ".exe",
    ".h",
    ".html",
    ".mrc",
    ".opt",
    ".rc",
    ".txt"
  ],
  "max_file_date": "2004-04-26",
  "min_file_date": "2004-03-05",
  "total_size": 1747.34,
  "largest_file": "src/libsqlite/parse.c",
  "text": [
    "readme.txt",
    "versions.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text


//////////////////////////

// Information

////////



   SQLite.dll is a Dll Wrapper for the SQLite embeddable SQL engine.

   i wrote this wrapper so that people would be able to access the extremely

   useful SQLite databases from mIRC. sqlite is good because of the fact its

   so portable, and also since its not a client library that connects to a sql

   server (the dll is the server) you don't need to worry about the user having

   mysql, postgresql, oracle (etc..).

   

   Sqlite is also useful because multiple instances of mirc can be connected to

   a singular database without a major fear of database corruption(within reason).

   if something happens and mirc crashes in the middle of a statement, then no

   worries, sqlite uses journaling and 90% of the time can Roll back the database

   to fix it up. Using transactions are a must for multiple updates. it is recommended

   that you check out www.sqlite.org a little more about the library to get the

   most out of it.



   The implementation that is provided with SQLiteDLL is slightly different

   (I've mod'ded a few things here and there, nothing major though) from the one

   that is at www.sqlite.org.



   The DLL that came with this package has been packed by UPX (upx.sourceforge.net)

   to effectively half the size of the dll. which is a bonus for anyone distributing

   it.



   UPX output:

        File size         Ratio      Format      Name

   --------------------   ------   -----------   -----------

    213504 ->    113664   53.23%    win32/pe     SQLite.dll



//////////////////////////

// Tools

////////



   I have also packaged the sqlite command line tool for working with sqlite

   databases. Here are a few other tools which i found good for working with

   sqlite (or other databases).



   - DBTools Manager                                        www.dbtools.com.br



     Totally FREE Win32 application to manage MySQL, PostgreSQL, XBase Tables

     and SQLite databases. Supports managing all objects in the database, create

     queries in visual mode, import/export data from MSAccess, ODBC, text files,

     Paradox, DBF Tables and generate PHP scripts. The list of features is just

     too big.



   - SQLiteCC                     http://bobmanc.home.comcast.net/sqlitecc.html



     SQLite Control Center is a visual tool for working on SQLite database files

     similar to MySQL CC. I personally use this one more than DBTools Manager,

     mainly because its simple and does the job :]



   Email me if you would like to add another tool here (my email is at the bottom)



//////////////////////////

// SQLite Library Information

////////



     SQLite is a C library that implements an embeddable SQL database engine.

     Programs that link with the SQLite library can have SQL database access

     without running a separate RDBMS process.



     SQLite is not a client library used to connect to a big database server.

     SQLite is the server. The SQLite library reads and writes directly to and

     from the database files on disk.



     Features



       * Implements most of SQL92. (Features not supported: http://www.sqlite.org/omitted.html)

       * A complete database (with multiple tables and indices) is stored in a

         single disk file.

       * ACID (Atomic, Consistent, Isolated, Durable) transactions.

       * Database files can be freely shared between machines with different

         byte orders.

       * Supports databases up to 2 terabytes (2^41 bytes) in size.

       * Small memory footprint: less than 25K lines of C code.

       * Two times faster than PostgreSQL and MySQL for many common operations.

       * Very simple C/C++ interface requires the use of only three functions

         and one opaque structure.

       * Simple, well-commented source code.

       * Automated test suite provides over 90% code coverage.

       * Self-contained: no external dependencies.

       * Built and tested under Linux and Windows.

       * Sources are in the public domain. Use for any purpose.



   -- Taken from www.sqlite.org



//////////////////////////

// API Documentation

////////



 Results are returned as follows:

   S_OK          <RESULTS>      = Successful

   E_<SHORT_MSG> <FULL_MESSAGE> = Failure



     Most Error Messages are Self Explanatory.



SQLite.dll,Open,<LABEL> [DATABASE]



  DATABASE is the database file you would like sqlite to open/create.

  using :memory: as the database, will create an in-memory (temporary)

  database.





SQLite.dll,Query,<LABEL> <QUERY>



  LABEL is the label you used when calling the Connect command. Use a

  standard SQLite query for QUERY.





SQLite.dll,FreeQuery,<LABEL>



  Free's the memory after you've finished with a query.





SQLite.dll,Rows,<LABEL>



  Will return the number of rows returned by Query.





SQLite.dll,RowsAffected,<LABEL>



  Will return the number of rows affected by a DELETE, UPDATE,
```
