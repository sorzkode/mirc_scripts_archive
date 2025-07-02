# XDCC Browser v3.14 by Yochai Timmer

## ⁉️ This is part of an mIRC script archiving project. Please read the [README](https://github.com/sorzkode/mirc_scripts_archive/blob/main/README.md) file located in the [main project repository](https://github.com/sorzkode/mirc_scripts_archive) for more information / disclaimers  

## ⚠️ Important Disclaimers

- **I am not the original author** of this script and do not claim any ownership or authorship
- **Historical Preservation Only**: This script is archived for historical and educational purposes
- **No Support**: I cannot provide support, updates, or fixes for this script
- **Not Thoroughly Tested**: The script has not been thoroughly tested in modern environments
- **Use at Your Own Risk**: Any use of this script is entirely at your own risk
- **Potentially Outdated/Incompatible**: This script was designed for much older versions of mIRC and Windows
- **Educational Value**: This archive serves to document the evolution of IRC scripting and early internet culture

## 🔍 Script Information

**Script Name:** XDCC Browser  
**Version:** 3.14  
**Category:** File Server  
**Author(s):** Yochai Timmer  
**Email(s):** <Yochai@Dorot.org.il>  
**Website(s):** Unknown  
**Year:** 2004  
**Tags:** xdcc, file-transfer, multi-server, automation, queue-management, mdx, dialogs, web-search  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/xdccb_script/xdccb_script.zip)  

## 📂 Zip File Structure
<img width="800" alt="zip_structure" src="https://github.com/user-attachments/assets/b6692e2e-718d-4d9d-80dc-801a4ff685e4" />

## 🖼️ Screnshots / Demo

Maybe later

## 📋 Features Overview

XDCC Browser v3.14 is a comprehensive XDCC file transfer management system with automation, multi-server support, and integrated web search capabilities. At the time of release, it had features such as:

### 🌐 Multi-Server & Network Support

- **Multi-Server Compatibility**:
  - Operation across multiple IRC networks simultaneously
  - Automatic network detection and management
  - Support for server reconnection and session management
  - Built-in server database integration

- **Network Features**:
  - Auto-connect to all networks on startup
  - Smart channel joining on connect
  - Network-specific configuration options
  - Session timeout protection (12-hour reconnect timer)

### 📊 XDCC Management

- **Packet Detection & Cataloging**:
  - Automatic recognition of 15+ XDCC script formats
  - Support for Iroffer, SysReset, Invision, T7XDCCT, Nightvision, and more
  - Real-time packet listing and organization
  - Smart duplicate detection and filtering

- **Request Management**:
  - Intelligent queue management system
  - Automatic retry on "slots full" messages
  - Configurable request timers and intervals
  - Progressive request handling with flood protection

- **Download Automation**:
  - Auto-resume for interrupted transfers
  - Sequential file requesting from users
  - Smart file completion detection
  - Automatic next-file requesting

### 🖥️ User Interface

- **MDX-Enhanced Dialogs**:
  - Tree-view browsing interface
  - Multi-tabbed organization (Browser, Search, Requests, Queue Status, Options)
  - Real-time packet count and statistics
  - Sortable list views with custom headers

- **Browser Tab Features**:
  - Hierarchical display: Network → Channel → Nick → Packets
  - Real-time packet filtering and search
  - Mass selection and operation capabilities
  - Visual packet organization by size, gets, and description

### 🔍 Integrated Web Search

- **Online Search Integration**:
  - Direct search on XDCCSpy and PacketNews
  - Real-time web results parsing
  - One-click requesting from web results
  - Automated network joining for web-found packets

- **Search Capabilities**:
  - Local database searching
  - Combined web and local search
  - Result filtering and sorting
  - Export search results

### 🛠️ Advanced Technical Features

- **DCC Fix Technology**:
  - Automatic IP address resolution for invalid DCC requests
  - Resume protocol support for interrupted transfers
  - Protection against mIRC exploit files
  - Smart DNS caching system

- **DCCALLOW Integration**:
  - Automatic network DCCALLOW detection
  - Smart allow/disallow management
  - Network-specific permission handling
  - Error handling for unsupported networks

- **Queue Status Monitoring**:
  - Real-time queue position tracking
  - Estimated wait time calculations
  - Historical queue message logging
  - Per-user queue status display

### 🤖 Intelligent Automation

- **Auto-Get System**:
  - Automatic requesting when users join channels
  - Smart user availability detection
  - Flood protection with timed requests
  - User priority management

- **Auto-List Requesting**:
  - Automatic XDCC list requests from channel bots
  - Recognition of bot announcement patterns
  - Configurable auto-request intervals
  - Channel-specific list management

- **Smart Request Handling**:
  - Automatic request type detection (/msg vs /ctcp)
  - Custom trigger recognition and usage
  - User-specific request formatting
  - Error handling and retry logic

### 🎯 Specialized Features

- **Corrupt File Management**:
  - Integrated #incomplete channel support
  - Multi-network corrupt file requesting
  - Automatic request tracking and closure
  - Network-specific corrupt file databases

- **Pack Organization**:
  - Automatic pack numbering and sorting
  - Size-based filtering and display
  - Get count tracking and statistics
  - Date/time stamping for all packets

- **Configuration Management**:
  - Extensive options panel with 20+ settings
  - Export/import of packet databases (.xcb format)
  - Per-network configuration storage
  - Automatic settings persistence

### 🔧 Advanced Configuration Options

- **Request Behavior**:
  - Configurable request and retry timers
  - Custom request message formats
  - Automatic queue removal options
  - Flood protection settings

- **Interface Customization**:
  - Always-on-top and taskbar modes
  - Hide pack messages in channels
  - Custom dialog positioning
  - Status window request echoing

- **Network Management**:
  - Auto-join channels on connect
  - Delete packs on disconnect/part
  - Long session avoidance
  - Multi-window server connections

## 📜 License & Legal

This script is archived for historical preservation. Original copyright belongs to Yochai Timmer. The script includes acknowledgments to contributors dohcan (dstudio), Eric^^ (<ericn@accesswave.ca>), and myndzi (DCC fix). Development was completed with extensive version history from 2.1 through 3.14, showing active development and community feedback integration. If you are the original author or copyright holder and have concerns about this archive, please contact the repository maintainer.

## 🔗 Resources

- [mIRC Official Website](https://www.mirc.com/)
- [IRC History and Documentation](https://tools.ietf.org/rfc/rfc1459.txt)

---

*This archive is maintained for historical and educational purposes. The preservation of early internet culture and software is important for understanding the evolution of online communities and communication technologies. XDCC Browser v3.14 represents the pinnacle of IRC file transfer automation and management from the mid-2000s era, showcasing advanced scripting techniques and user interface design.*
