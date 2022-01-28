#!/usr/bin/env python3
# @(#) yaml-head-md.py
# Last-edited: Thu 2022.01.20.2113 -- Danny Quah (me@DannyQuah.com)
# ----------------------------------------------------------------
# $
# Revision History:
#  # Thu 2022.01.20.2112 -- Danny Quah (me@DannyQuah.com)
#    Arguments passed correctly when run as a python sript;
#    but I can't get Vimrc's ihy to get arguments to this so
#    leaving an if-then below for bufferName
#  # Fri 2020.11.13.2248 -- Danny Quah (me@DannyQuah.com)
#    First draft: YAML header for my typical markdown file
# $
# $Log$
# ----------------------------------------------------------------
import sys
import os
import datetime

# ----------------------------------------------------------------
myMdHeader = """---
fileName: {theTitle}
# Last-edited: {theDayDateTime} -- Danny Quah (me@DannyQuah.com)
Type: Event | Person | Notes | Publication | Log | Misc | Report
Tags: China, US, LKYSPP, NUS, Hardware, Software, Talk, Write, Finance, COVID19
# Created: {theDayDateTime} -- Danny Quah (me@DannyQuah.com)

output: pdf_document
title: DocTitle
## include DQ-latex-short-report-yaml.md, etc., as required here
---

<!---
   Invisible section // {theTitle}
-->
"""


# ----------------------------------------------------------------
myNow = datetime.datetime.now()
thisScript = os.path.basename(__file__) # not used
if len(sys.argv) <= 1:
    bufferName = "bufferName"
else:
    bufferName = sys.argv[1]

myFileDict = {
        "theTitle": bufferName,
        "theLocalDate": myNow.strftime("%a %d %b %Y"),
        "theDateTime": myNow.strftime("%Y.%m.%d.%H%M"),
        "theDayDateTime": myNow.strftime("%a %Y.%m.%d.%H%M"),
        "theStdDate": myNow.strftime("%Y-%m-%d-%a")
        } 

print(myMdHeader.format(**myFileDict))

# eof yaml-head-md.py

