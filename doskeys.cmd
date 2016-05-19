@echo off
REM The Main Paths
set cliaudioapp=sounder
set home=C:\Users\%USERNAME%
set dbhome=%DROPBOX_HOME%
set code=%DBHOME%\Code
set dotfwin=%CODE%\dotfiles-win
set txtapp=nano.exe

REM Set private vars from external file
for /f "delims=" %%x in (%DOTFWIN%\doskeys-priv.cmd) do (%%x)

REM Audio stuff
DOSKEY play=%CLIAUDIOAPP% $1
DOSKEY stop=%CLIAUDIOAPP% /stop

REM Command shortcuts
DOSKEY ..=cd ..
DOSKEY ...=cd ..\..
DOSKEY ....=cd ..\..\..
DOSKEY dandeploy=dandelion deploy
DOSKEY editenv=eveditor.exe
DOSKEY jsc=node
DOSKEY myip=curl -s ip.appspot.com ^| findstr /r "[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*"
DOSKEY npp=notepad++ $*
DOSKEY sites=cd /d %CODE%\web
DOSKEY sqlite=sqlite3
DOSKEY vscode="C:\Program Files (x86)\Microsoft VS Code\Code.exe" $1
DOSKEY webnew=xcopy /E /I %CODE%\web\_lib\initializr-responsive .\$1 $T cd /d .\$1

REM Language REPLs
REM Ruby=irb
DOSKEY jsc=node
DOSKEY phpa=php C:\php\phpa-norl\phpa-norl

REM Language-specific web servers
DOSKEY httphp=php -S localhost:4567
DOSKEY httpy=python -m http.server 4568
DOSKEY httrack=bundle exec rackup -p 4569
DOSKEY httruby=ruby -r webrick -e "s = WEBrick::HTTPServer.new(:Port => 4570, :DocumentRoot => '.'); trap('INT') { s.shutdown }; s.start"

REM Config file editing
DOSKEY nanoaliases=%TXTAPP% "%DOTFWIN%\doskeys.cmd"
DOSKEY nanoaliasesp=%TXTAPP% "%DOTFWIN%\doskeys-priv.cmd"
DOSKEY nanobundle=%TXTAPP% "%HOME%\.bundle\config"
DOSKEY nanogemrc=%TXTAPP% "c:\ProgramData\gemrc"
DOSKEY nanogitconfig=%TXTAPP% %HOME%\.gitconfig
DOSKEY nanogitignore=%TXTAPP% %DOTFWIN%\.gitignore-global
DOSKEY nanohosts=%TXTAPP% "%WINDIR%\system32\drivers\etc\hosts"

REM Path change shortcuts
REM note: /d is required on win7 for changing drives AND dirs
DOSKEY code=cd /d %CODE%
DOSKEY db=cd /d %DBHOME%
DOSKEY dl=cd /d %HOME%\Downloads
DOSKEY dotfwin=cd /d %DOTFWIN%
DOSKEY home=cd /d %HOME%

REM Sharepoint commands/shortcuts
DOSKEY sp12=cd /d %SPLOCAL%\12\ISAPI
DOSKEY sp14=cd /d %SPLOCAL%\14\ISAPI
DOSKEY sp15=cd /d %SPLOCAL%\15\ISAPI
DOSKEY spadd=stsadm -o addsolution -filename $1
DOSKEY spdeploy=stsadm -o deploysolution -name $1 -url $2 -immediate -allowgac
DOSKEY spexec=stsadm -o execadmsvcjobs
DOSKEY spupgrade=stsadm -o upgradesolution -name $1 -filename $1 -immediate -allowgac
DOSKEY spretract=stsadm -o retractsolution -name $1 -url $2 -immediate
DOSKEY spdelete=stsadm -o deletesolution -name $1


REM Ruby/Bundle
DOSKEY be=bundle exec -- $*

REM UNIX-y commands
DOSKEY clear=cls
DOSKEY clr=cls
DOSKEY cp=copy $1 $2
DOSKEY edit=%TXTAPP% $*
DOSKEY gitlg=git lg -20
DOSKEY gitlog=git lg -20
DOSKEY ls=dir /x $*
DOSKEY lsla=dir /x /a $*
DOSKEY ls-la=dir /x /a $*
DOSKEY mv=move $1 $2
DOSKEY nano=%TXTAPP% $*
DOSKEY pwd=cd
DOSKEY rm=del $*
DOSKEY rmd=rd /s $*
DOSKEY rms=rd /s $*
