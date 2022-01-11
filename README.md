---
fileName: README.md
# Last-edited: Tue 2022.01.11.1752 -- Danny Quah (me@DannyQuah.com)
Type: Notes
Tags: Software, git, GitHub
# Created: Fri 2021.12.31.1615 -- Danny Quah (me@DannyQuah.com)

output: pdf_document
title: Initiate Machine README
---
# 
This repo initiates a machine with shell scripts, dotfiles, Linux installations, editor configurations, templates, stylesheets, and so on.  Barebones, it can be used to kickstart iSH on iOS, Termux on Android, or larger.

If this repo is already in place on a local harddisk, just run

```
source ./Linux/src/linux-new-setup
```

OR, if not yet, then run

```
wget -O - https://raw.githubusercontent.com/DannyQuah/Initiate-Machine/main/machines/Linux/src/linux-new-setup | sudo bash
```

(which will take a while, depending on how fast the machine and Internet connection are).  

For a skeletal setup, appropriate for, e.g., iSH on iOS or Termux on Android, I might run instead:

```
wget -O - https://raw.githubusercontent.com/DannyQuah/Initiate-Machine/main/machines/Linux/src/barebones-new-setup | sudo bash
```

(Previously this and other files and folders were uploaded to GitHub into `Config-Management`.  That got too unwieldy, however, and so I've stripped down to this lightweight version.)

<!---
   Invisible section: README.md
-->

