:: @(#) 05-W-internet-cloud-fs.bat
:: Last-edited: 2022.04.30.0116.Sat -- Danny Quah (me@DannyQuah.com)
:: ----------------------------------------------------------------
:: $
:: Revision History:
::  # 2022.04.24.1515.Sun -- Danny Quah (me@DannyQuah.com)
::    File and folder links to initialize for 0, 1 filesystem  
:: $
:: ----------------------------------------------------------------
::
@echo off  
set PersonalCloudZero=\home\dq\0  
d:
cd %PersonalCloudZero%  

:: Internet-Cloud; aside from when on Gateway-DQ,
:: these are never seen by any Linux machine.
:: Since these cloud services are already running,
:: these folders will be populated by those services.
mklink /j Drape "%USERPROFILE%\iCloudDrive"  
mklink /j Light "%USERPROFILE%\Documents\nBox\nBox-DQ-Cloud"  
mklink /j Scene "%USERPROFILE%\Dropbox"  
:: I needed /d (create directory symbolic link) rather than
:: /j (create directory junction) for this; otherwise
:: "Local volumes are required to complete the operation"
mklink /d Stage "%USERPROFILE%\Box"  

md Props\1
cd Props\1
mklink /j LKYSPP-Deans-Office "%USERPROFILE%\Documents\nBox\LKYSPP-Deans-Office"  


:: eof 05-W-internet-cloud-fs.bat
