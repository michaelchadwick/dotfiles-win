@echo off
REM The Main Paths
set apps=F:\Apps
set cliaudioapp=%APPS%\sounder
set home=C:\Users\%USERNAME%
set dbhome=%DROPBOX_HOME%
set code=%DBHOME%\Code
set splocal="C:\Program Files\Common Files\Microsoft Shared\Web Server Extensions"
set dotfwin=%CODE%\dotfiles-win
set txtapp=%APPS%\nano\nano.exe

REM Set private vars from external file
for /f "delims=" %%x in (%DOTFWIN%\doskeys-priv.cmd) do (%%x)

REM Audio Stuff
DOSKEY play=%CLIAUDIOAPP% $1
DOSKEY stop=%CLIAUDIOAPP% /stop

REM Code Directories
DOSKEY gocode=cd /d %CODE%\go
DOSKEY rubycode=cd /d %CODE%\ruby
DOSKEY rustcode=cd /d %CODE%\rust
DOSKEY webcode=cd /d %CODE%\web

REM Command shortcuts
DOSKEY ..=cd ..
DOSKEY ...=cd ..\..
DOSKEY ....=cd ..\..\..
DOSKEY bl=blink $*
DOSKEY clist=choco list -localonly
DOSKEY dandeploy=dandelion deploy
DOSKEY editenv=%APPS%\eveditor\eveditor.exe
DOSKEY myip=curl -s ip.appspot.com ^| findstr /r "[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*"
DOSKEY npp=notepad++ $*
DOSKEY nxv=psexec \\$1 -u "ad\michael.chadwick" cmd /c ""c:\program files (x86)\nxlog\nxlog.exe" "-h""
DOSKEY phpa=php C:\php\phpa-norl\phpa-norl
DOSKEY sites=cd /d %CODE%\web
DOSKEY sqlite=sqlite3
DOSKEY webnew=xcopy /E /I %CODE%\web\_lib\initializr-responsive .\$1 $T cd /d .\$1

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
DOSKEY infoserv=cd /d K:\InfoServ

REM Sharepoint commands/shortcuts
DOSKEY sp12=cd /d %SPLOCAL%\12\ISAPI
DOSKEY sp14=cd /d %SPLOCAL%\14\ISAPI
DOSKEY sp15=cd /d %SPLOCAL%\15\ISAPI
DOSKEY spadd=stsadm -o addsolution -filename $1
DOSKEY spdeploy=stsadm -o deploysolution -name $1 -url $2 -immediate -allowgac
DOSKEY spupgrade=stsadm -o upgradesolution -name $1 -filename $1 -immediate -allowgac
DOSKEY spretract=stsadm -o retractsolution -name $1 -url $2 -immediate
DOSKEY spdelete=stsadm -o deletesolution -name $1

REM Simple web servers
DOSKEY httphp=php -S localhost:4567
DOSKEY httpy=python -m http.server 4568
DOSKEY httrack=bundle exec rackup -p 4569
DOSKEY httruby=ruby -r webrick -e "s = WEBrick::HTTPServer.new(:Port => 4570, :DocumentRoot => '.'); trap('INT') { s.shutdown }; s.start"

REM Ruby/Bundle
DOSKEY be=bundle exec -- $*

REM UNIX-y commands
DOSKEY clear=cls
DOSKEY clr=cls
DOSKEY cp=copy $1 $2
DOSKEY edit=%TXTAPP% $*
DOSKEY gitlog=git lg -20
DOSKEY ls=dir /x $*
DOSKEY lsla=dir /x /a $*
DOSKEY ls-la=dir /x /a $*
DOSKEY mv=move $1 $2
DOSKEY nano=%TXTAPP% $*
DOSKEY pwd=cd
DOSKEY rm=del $*
DOSKEY rmd=rd /s $*
DOSKEY rms=%RMD%
