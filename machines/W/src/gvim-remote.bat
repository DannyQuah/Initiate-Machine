:: @(#) gvim-remote.bat
:: Last-edited: 2022.08.22.1220.Mon -- Danny Quah (me@DannyQuah.com)
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
"C:\Program Files (x86)\Vim\vim90\gvim.exe" --remote-silent %*  
GOTO End1

:No1
  ECHO Missing file/buffer
GOTO End1

:End1

