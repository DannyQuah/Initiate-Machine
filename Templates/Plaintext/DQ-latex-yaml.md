## Front Matter -- for LaTeX
author:
  - Danny Quah `\\`{=latex} Lee Kuan Yew School of Public Policy, NUS `\\`{=latex} D.Quah@nus.edu.sg
#  - My Coauthor `\\`{=latex} Economics Department, NUS `\\`{=latex} ecsdqlsh@nus.edu.sg
#author:
#  - name: Danny Quah
#    affiliation: Lee Kuan Yew School of Public Policy, NUS
#    email: D.Quah@nus.edu.sg
#    number: 1
#  - name: My Coauthor
#    affiliation: Economics Department, NUS
#    email: DannyQuah@u.nus.edu
#    number: 2
date: theMonth theYear
# abstract:
# keywords:
# thanks:

## Formatting -- for LaTeX
fontsize: 12pt
# mainfont: "gentium" # See https://fonts.google.com/ for fonts
# sansfont: "Raleway"
# monofont: "IBM Plex Mono"
mathfont: ccmath
# fontfamily: lmodern | concrete | gentium | libertine
fontfamily: concrete
# documentclass: article | scrartcl
documentclass: article
classoption:
 - notitlepage
 - onecolumn
fontenc: T1
geometry:
 - a4paper
 - top=35mm
 - left=30mm
 - heightrounded
colorlinks: true
urlcolor: blue
header-includes:
 - |
  ```{=latex}
  \usepackage{amsmath,amsfonts,euscript,tikz,fancyhdr,float}
  \floatplacement{figure}{H}
  ```
 - \pagenumbering{gobble}
 - \setlength{\headheight}{15pt}
 - \pagestyle{fancy}
