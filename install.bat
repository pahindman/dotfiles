@echo off

REM Detect the availability of command extensions and prevent this script from
REM modifying the caller's environment. See "help setlocal" for info on why this
REM uses the "verify" command.
verify other 2>nul
setlocal enableextensions || (
   echo **************************************
   echo Non-standard shell detected!  Exiting!
   echo **************************************
   exit
)

set HOME=%HOMEDRIVE%%HOMEPATH%

REM The .gitconfig is incomplete, so its contents should be manually merged
REM into %HOME\.gitconfig
REM copy windows\.gitconfig %HOME% >nul
copy .bash_profile %HOME% >nul
copy .bashrc %HOME% >nul
copy .gvimrc %HOME% >nul
copy .inputrc %HOME% >nul
copy .profile %HOME% >nul
copy .vimrc %HOME% >nul

xcopy /S /Y .vim %HOME%\vimfiles >nul
windows\install_fonts.vbs
