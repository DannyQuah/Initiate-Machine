:: @(#) gvim-remote.bat
:: Last-edited: Tue 2021.03.30.0709 -- Danny Quah (me@DannyQuah.com)
:: ----------------------------------------------------------------
:: $
:: Revision History:
::  # Sun 2021.02.28.1159 -- Danny Quah (me@DannyQuah.com)
::    First draft: W10 Right-click; not used.
::    Instead Right-Click SendTo shortcut in  
::    C:\Users\sppdqlsh\AppData\Roaming\Microsoft\Windows\SendTo\
:: $
:: $Log$
:: ----------------------------------------------------------------
::
IF %1.==. GOTO No1
"C:\Program Files (x86)\Vim\vim82\gvim.exe" --remote-silent %*  
GOTO End1

:No1
  ECHO Missing file/buffer
GOTO End1

:End1

