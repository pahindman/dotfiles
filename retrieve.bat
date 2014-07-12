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
REM from %HOME\.gitconfig
REM copy %HOME%\.gitconfig windows\.gitconfig  >nul
copy %HOME%\.bash_profile .bash_profile >nul
copy %HOME%\.bashrc .bashrc >nul
copy %HOME%\.emacs .emacs >nul
copy %HOME%\.gvimrc .gvimrc >nul
copy %HOME%\.inputrc .inputrc >nul
copy %HOME%\.profile .profile >nul
copy %HOME%\.vimrc .vimrc >nul

xcopy /S /Y %HOME%\vimfiles .vim >nul
