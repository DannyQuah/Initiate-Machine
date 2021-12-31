#!/usr/bin/env python
# @(#) gen-vimw-diary-template.py
# Last-edited: Sun 2021.12.19.0741 -- Danny Quah (me@DannyQuah.com)
# ----------------------------------------------------------------
# Revision History:
#  % Sun 2021.12.19.0655 -- Danny Quah (me@DannyQuah.com)
#    YAML and Daily Planner contents
#  % Sat 2020.09.26.0659 -- Danny Quah (me@DannyQuah.com)
#    First draft: Template for Vimwiki diary
#    Original from http://frostyx.cz/posts/vimwiki-diary-template
#    In frostyx.cz the vimscript call has '%' at the end for the
#    buffer name. But I'm not going to use that (below) so I also
#    removed the '%' in my .vimrc call to this script.
# ----------------------------------------------------------------
import sys
import datetime

# ----------------------------------------------------------------
myTemplate = """---
fileName: {theStdDate}.md
# Last-edited: TIMESTAMP -- Danny Quah (me@DannyQuah.com)
Type: Journal
Tags:
# Created: TIMESTAMP -- Danny Quah (me@DannyQuah.com)

output: pdf_document
title: {theLocalDate}
---
# {theLocalDate}

## Log

({theDayDateTime})

## Daily.Checklist
- [ ]  Lisoril, Glucosamine, Vitamin C
- [ ]  Glucosamine 2

## ToDo
- [ ] 

## Notes
({theDayDateTime}) Run PR.  KV abs, core // 57.4  
{theSsDate}	08:02	06.57	'01:08:29	'00:06:50
({theDayDateTime}) Run WCP.  KV abs, core // 56.7  
{theSsDate}	08:02	07.12	'00:45:45	'00:06:10
({theDayDateTime}) Run CW.  KV abs, core // 57.6  
{theSsDate}	07:42	6.03	'00:39:41	'00:06:34
({theDayDateTime}) KV abs, core // 57.3  
{theSsDate}	06:21		'01:01:25

## Day Planner
- []  

<!---
   Invisible section // {theStdDate}.md
-->

"""

# ----------------------------------------------------------------

# Date, my way
# This snippet immediately below, from the original source,
# activates on the second branch when called by vimwiki,
# and therefore fails when I seek to reformat the date
# x = (datetime.date.today() if len(sys.argv) < 2
#      # Expecting filename in YYYY-MM-DD.something format
#        else sys.argv[1].rsplit(".", 1)[0]) 
# Instead I do:
myNow = datetime.datetime.now()

myDiaryDict = {
        "theLocalDate": myNow.strftime("%a %d %b %Y"),
        "theDateTime": myNow.strftime("%Y.%m.%d.%H%M"),
        "theDayDateTime": myNow.strftime("%a %Y.%m.%d.%H%M"),
        "theSsDate": myNow.strftime("%d/%m/%Y"),
        "theStdDate": myNow.strftime("%Y-%m-%d-%a")
 
        }
#}                   

# Spread out the dictionary using Python's counterpart 
# to the splat operator
print(myTemplate.format(**myDiaryDict))

# eof gen-vimw-diary-template.py
