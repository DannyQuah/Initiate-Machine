#!/usr/bin/env python
# @(#) gen-yaml-head-md.py
# Last-edited: Mon 2021.12.20.2020 -- Danny Quah (me@DannyQuah.com)
# ----------------------------------------------------------------
# $
# Revision History:
#  # Fri 2020.11.13.2248 -- Danny Quah (me@DannyQuah.com)
#    First draft: YAML header for my typical markdown file
# $
# $Log$
# ----------------------------------------------------------------
import sys
import datetime

# ----------------------------------------------------------------
myMdHeader = """---
fileName: theTitle
# Last-edited: TIMESTAMP -- Danny Quah (me@DannyQuah.com)
Type: Event | Person | Notes | Publication | Log | Misc | Report
Tags: China, US, LKYSPP, NUS, Hardware, Software, Talk, Write, Finance, COVID19
# Created: TIMESTAMP -- Danny Quah (me@DannyQuah.com)

output: pdf_document
title: DocTitle
## include DQ-latex-short-report-yaml.md, etc., as required here
---

<!---
   Invisible section // theTitle
-->
"""


# ----------------------------------------------------------------
myNow = datetime.datetime.now()

myFileDict = {
        "theLocalDate": myNow.strftime("%a %d %b %Y"),
        "theDateTime": myNow.strftime("%Y.%m.%d.%H%M"),
        "theDayDateTime": myNow.strftime("%a %Y.%m.%d.%H%M"),
        "theStdDate": myNow.strftime("%Y-%m-%d-%a")
        } 

print(myMdHeader.format(**myFileDict))

# eof gen-yaml-head-md.py

