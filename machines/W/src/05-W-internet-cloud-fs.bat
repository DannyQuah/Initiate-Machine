:: @(#) 05-W-internet-cloud-fs.bat
:: Last-edited: 2022.07.25.1545.Mon -- Danny Quah (me@DannyQuah.com)
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

cd %PersonalCloudZero%  
md Props\1
cd Props\1
mklink /j LKYSPP-Deans-Office "%USERPROFILE%\Documents\nBox\LKYSPP-Deans-Office"  

:: Ad-hoc linking from nBox to Props for Ubuntu-Windows syncthing
:: These are used temporarily, e.g., at Annual Review time --- if not,
:: then while I can access the joint AR files from my Windows machines,
:: I cannot from Ubuntu - as there is no nBox client  
::
:: cd %PersonalCloudZero%  
:: cd Board\1\Ww
:: mklink /j FAR-AY2021-2022 "%USERPROFILE%\Documents\nBox\FAR AY2021-2022"  

:: eof 05-W-internet-cloud-fs.bat
